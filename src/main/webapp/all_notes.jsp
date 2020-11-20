<%@ page import="org.hibernate.Session" %>
<%@ page import="com.entities.*" %>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="static com.helper.HibernateUtil.getFactory" %>
<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 19/11/2020
  Time: 08:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    <br/>
    <h1 class="text-uppercase">All Notes: </h1>

    <div class="row">
        <div class="col-12">
            <%
                Session s = getFactory().openSession();
                Query q = s.createQuery("from takenote ");
                List<takenote> list = q.list();
                for (takenote takenote : list) {
            %>
            <div class="card mt-3">
                <img src="img/Note_Icon.png" class="card-img-top mx-auto" style="max-width: 100px" alt="...">
                <div class="card-body">
                    <h5 class="card-title px-auto">
                        <%= takenote.getTitle() %>
                    </h5>
                    <p class="card-text px-auto">
                        <%= takenote.getContent()%>
                    </p>
                    <div class="container text-center mx-auto">
                        <a href="DeleteServlet?takenote_id<%=takenote.getId()%>" class="btn btn-danger">Delete</a>
                        <a href="#" class="btn btn-primary">Update</a>
                    </div>
                </div>
            </div>
            <%
                }
                s.close();
            %>
        </div>
    </div>

</div>

</body>
</html>
