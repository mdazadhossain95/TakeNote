<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 14/12/2020
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <form class="px-4 py-3" action="<%=request.getContextPath()%>/login" method="post">
        <div class="mb-3">
            <label for="exampleDropdownFormEmail1" class="form-label">Username</label>
            <input type="text" class="form-control" id="exampleDropdownFormEmail1">
        </div>
        <div class="mb-3">
            <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
        </div>
        <div class="text-center mb-3">
            <button type="submit" class="btn btn-success w-auto">Sign in</button>
            <button type="submit" class="btn btn-primary w-auto">Sign up</button>
        </div>
        <div class="text-center m-auto">
            <a class="dropdown-item" href="#">Forgot password?</a>
        </div>
    </form>

</div>
</body>
</html>
