<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 17/11/2020
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>

    <h1 style="text-align: center">Take Your Note</h1>
    <br/>

    <%-- this is add form--%>
    <form action="SaveNoteServlet" method="post">
        <div class="form-group">
            <label for="title">Note title</label>
            <input name="title" required type="text" class="form-control" id="title" placeholder="Enter Here"
                   aria-describedby="emailHelp"/>
        </div>
        <div class="form-group">
            <label for="content">Note content</label>
            <textarea name="content" required id="content" placeholder="Write your note Here" class="form-control"
                      style="height:300px"></textarea>
        </div>

        <div class="container text-center">
            <button type="submit" class="btn btn-success w-auto">Submit</button>
            <button type="reset" class="btn btn-primary w-auto">Reset</button>
            <button type="button" class="btn btn-warning w-auto" onclick="save()">Save to Desktop</button>
        </div>

    </form>
</div>
</body>
</html>
