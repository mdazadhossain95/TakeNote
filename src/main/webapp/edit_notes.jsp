<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 20/11/2020
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<%@ page import="org.hibernate.cfg.Configuration" %>

<html>
<head>
    <title>Edit Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>

    <h1 style="text-align: center">Edit Details</h1>
    <br/>
        <%
            int id = Integer.parseInt(request.getParameter("id").trim());
            Configuration configuration=new Configuration();
            configuration.configure("hibernate.cfg.xml");
            SessionFactory sessionFactory = configuration.buildSessionFactory();
            Session session1 = sessionFactory.openSession();
            takenote takenote = (com.entities.takenote)session1.get(com.entities.takenote.class, id);
        %>

    <%-- this is add form--%>
    <form action="UpdateServlet" method="post">

        <input value="<%=takenote.getId()%>" name="id" type="hidden"/>

        <div class="form-group">
            <label for="title">Note title</label>
            <input name="title" required type="text" class="form-control" id="title" placeholder="Enter Here"
                   aria-describedby="emailHelp" value="<%=takenote.getTitle()%>"/>
        </div>

        <div class="form-group">
            <label for="content">Note content</label>
            <textarea name="content" required id="content" placeholder="Write your note Here" class="form-control"
                      style="height:300px"><%=takenote.getContent()%> </textarea>
        </div>
        <div class="container text-center">
            <button type="submit" class="btn btn-success w-auto">Update</button>
            <button type="button" class="btn btn-warning w-auto" onclick="save()">Save to Desktop</button>
            <button type="reset" class="btn btn-danger w-auto" onclick="window.location = 'all_notes.jsp'">Cancel
            </button>
        </div>
    </form>

</body>
</html>
