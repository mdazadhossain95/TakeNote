<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 26/11/2020
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Calculator</title>
    <%@include file="all_js_css.jsp" %>
    <link rel="stylesheet" href="cal.css"/>
    <script rel="script" href="cal.js"></script>

</head>
<body>


<div class="container">
    <%@include file="navbar.jsp" %>
    <div id="header">

        <div id="calc" class="text-center">
            <div id="display">
                <div id="result"><p>0</p></div>
                <div id="previous"><p>0</p></div>
            </div>

            <div id="keyboard">
                <div class="row">
                    <button class="btn btn-info" value="7">7</button>
                    <button class="btn btn-info" value="8">8</button>
                    <button class="btn btn-info" value="9">9</button>
                    <button class="btn btn-danger" value="ac">AC</button>
                    <button class="btn btn-danger" value="ce">CE</button>
                </div>

                <div class="row">
                    <button class="btn btn-info" value="4">4</button>
                    <button class="btn btn-info" value="5">5</button>
                    <button class="btn btn-info" value="6">6</button>
                    <button class="btn btn-warning" value="/">/</button>
                    <button class="btn btn-warning" value="*">*</button>
                </div>
                <div class="row">
                    <button class="btn btn-info" value="1">1</button>
                    <button class="btn btn-info" value="2">2</button>
                    <button class="btn btn-info" value="3">3</button>
                    <button class="btn btn-warning" value="+">+</button>
                    <button class="btn btn-warning" value="-">-</button>


                </div>
                <div class="row">
                    <button class="btn btn-info btn-zero" value="0">0</button>
                    <button class="btn btn-warning" value=".">.</button>
                    <button class="btn btn-success" value="=">=</button>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
