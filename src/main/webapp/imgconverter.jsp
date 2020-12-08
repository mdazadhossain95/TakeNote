<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 08/12/2020
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Converter</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container text-center">
    <%@include file="navbar.jsp" %>
    <br>
    <h1 class="text-center">Image Converter</h1>
    <br>
    <form id="myForm" enctype="multipart/form-data">
<%--        <div class="form-group">--%>
<%--            &lt;%&ndash;@declare id="fileurl"&ndash;%&gt;<label for="fileurl">Image URL:</label>--%>
<%--            <input type="text" id="url" placeholder="URL" class="form-control">--%>
<%--        </div>--%>
        <div class="form-group">
            <label for="image">Select Image:</label>
            <input type="file" id="image" class="form-control">
            <img style="display: none;" id="selectedImage"/>
        </div>
        <div class="form-group">
            <label for="format">Select Format:</label>
            <select class="form-control" id="format">
                <option>JPEG</option>
                <option>PNG</option>
                <option>GIF</option>
            </select>
        </div>
        <div class="form-group">
            <button class="btn btn-success w-auto">Convert Image</button>
        </div>
    </form>

</div>

</body>
</html>
