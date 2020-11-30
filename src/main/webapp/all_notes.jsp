<%--  Created by IntelliJ IDEA.--%>
<%--  User: mdaza--%>
<%--  Date: 19/11/2020--%>
<%--  Time: 08:56--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>


<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.entities.takenote" %>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.SessionFactory" %>


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
                Configuration configuration = new Configuration();
                configuration.configure("hibernate.cfg.xml");
                SessionFactory sessionFactory = configuration.buildSessionFactory();
                Session session1 = sessionFactory.openSession();

                Query query = session1.createQuery("from takenote ");
                List<takenote> takenoteList = query.list();
                for (takenote takenote : takenoteList) {

            %>

            <div class="card mt-3">
                <img src="img/Note_Icon.png" class="card-img-top mx-auto" style="max-width: 100px" alt="...">
                <div class="card-body">
                    <h5 class="card-title px-auto">
                        <%= takenote.getTitle() %>
                    </h5>
                    <p class="card-text px-auto">
                        <%=takenote.getContent()%>
                    </p>
                    <p class="text-success px-auto">
                        <br><%=takenote.getAddedDate()%></br>
                    </p>
                    <div class="container text-center mx-auto">
                        <a href="DeleteServlet?id=<%=takenote.getId()%>" class="btn btn-danger">Delete</a>
                        <a href="edit_notes.jsp?id=<%=takenote.getId()%>" class="btn btn-primary">Update</a>
                    </div>
                </div>
            </div>

            <%
                }
                session1.close();
            %>
        </div>
    </div>

</div>

</body>
</html>
