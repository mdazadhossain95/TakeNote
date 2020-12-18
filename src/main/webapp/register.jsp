<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 18/12/2020
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body style="background-color: coral">
<div class="container">
    <form action="<%=request.getContextPath()%>/register" method="post">
        <div>
            <h2 class="text-center">User Register Form</h2>
        </div>

        <div class="form-group align-content-center">
            <label>First Name:</label>
            <input type="text" class="form-control" id="firstName" placeholder="First Name" name="firstName" required>
        </div>

        <div class="form-group">
            <label>Last Name:</label>
            <input type="text" class="form-control" id="lastName" placeholder="last Name" name="lastName" required>
        </div>

        <div class="form-group">
            <label>User Name:</label>
            <input type="text" class="form-control" id="username" placeholder="User Name" name="username" required>
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success w-auto">Submit</button>
            <button type="reset" class="btn btn-secondary w-auto">Reset</button>
        </div>

    </form>

</div>

</body>
</html>
