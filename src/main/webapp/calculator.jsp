<%--
  Created by IntelliJ IDEA.
  User: mdaza
  Date: 26/11/2020
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
//https://codepen.io/yeapp/pen/gQYeba
//https://codepen.io/shafikshaon/pen/YxQJpW
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Calculator</title>
    <%@include file="all_js_css.jsp" %>
    <link rel="stylesheet" href="cal.css">
    <script rel="script" href="cal.js"></script>

</head>
<body>


<div class="container">
    <%@include file="navbar.jsp" %>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <!-- start of header section -->
            <div class="row header">
<%--                <div class="col-md-2">--%>
<%--                    <span class="glyphicon glyphicon glyphicon-menu-hamburger"></span>--%>
<%--                </div>--%>
<%--                <div class="col-md-8">--%>
<%--                    <p>Calculator</p>--%>
<%--                </div>--%>
<%--                <div class="col-md-2">--%>
<%--                    <span class="glyphicon glyphicon glyphicon-cog"></span>--%>
<%--                </div>--%>
            </div> <!-- header div -->
            <!-- end of header section -->
            <!-- start of textbox -->
            <div class="row teaxtbox">
                <div class="col-md-12 padding-reset">
                    <input type="text" name="" value="">
                </div>
            </div>
            <!-- end of textbox -->

            <!-- start of button design -->
            <div class="row commonbutton">
                <!-- first row -->
                <!--             <div class="col-md-3">
                              <input type="submit" name="" value="&#8730;" class="">
                            </div> -->
                <div class="col-md-3">
                    <input type="submit" name="" value="7">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="8" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="9" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="/" class="">
                </div>
                <!-- third row -->
                <div class="col-md-3">
                    <input type="submit" name="" value="4" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="5" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="6" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="X" class="">
                </div>
                <!-- four row -->
                <div class="col-md-3">
                    <input type="submit" name="" value="1" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="2" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="3" class="">
                </div>
                <div class="col-md-3">
                    <input type="submit" name="" value="-" class="">
                </div>
            </div> <!-- end of comonbutton div -->
            <!-- end of button design -->
            <!-- start of conflicting button area -->
            <div class="row conflict">
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-8">
                            <input type="submit" name="" value="0" class="">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="" value="." class="">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="" value="CE" id="ce">
                        </div>
                        <div class="col-md-8">
                            <input type="submit" name="" value="=" id="equal">
                        </div>
                    </div>
                </div> <!-- end  zero, dot, del and equal sign div -->
                <div class="col-md-3">
                    <input type="submit" name="" value="+" id="plus">
                </div>
            </div> <!-- end of conflicting area -->
            <!-- end of conflicting button area -->
        </div>
    </div>
</div>


</body>
</html>


</body>
</html>
