<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 08/12/2020
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Stop Watch</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container text-center">
    <%@include file="navbar.jsp" %>
    <h1>Stopwatch</h1>
    <div id="display" style="font-size: xxx-large">
        00:00:00
    </div>

    <div class="btn">
        <button class="btn btn-success w-auto" onclick="start()">Start</button>
        <button class="btn btn-primary w-auto" onclick="Stop()">Stop</button>
        <button class="btn btn-danger w-auto" onclick="reset()">Reset</button>
    </div>

</div>

</body>
</html>
