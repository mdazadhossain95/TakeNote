<%--
  Created by IntelliJ IDEA.
  User: mdazadhossain
  Date: 25/11/2020
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Take Note : Home page</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <div class="container text-center mx-auto m-3 p-3">
        <button class="btn btn-success btn-lg" style="height: 200px; width: 300px;" onclick="window.location = 'add_notes.jsp'">Add Note</button>
        <button class="btn btn-primary btn-lg" style="height: 200px; width: 300px;" onclick="window.location = 'all_notes.jsp'">Show Notes</button>
        <button class="btn btn-warning btn-lg" style="height: 200px; width: 300px;" onclick="window.location = 'calculator.jsp'">Calculator</button>
        <button class="btn btn-danger btn-lg" style="height: 200px; width: 300px;" onclick="window.location = 'imgconverter.jsp'">Image Converter</button>

    </div>
</div>
</body>
</html>
