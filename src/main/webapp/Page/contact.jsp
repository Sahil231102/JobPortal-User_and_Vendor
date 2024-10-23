<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30-05-2024
  Time: 12:09 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<link rel="stylesheet"  href="./userstyle/assets/css/Contect.css.css">
    <!-- CSS here -->


</head>

<body>
<%
    Cookie[] cookies = request.getCookies();
    String userEmail = null;

    // Find the cookie that contains the user's email
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("em".equals(cookie.getName())) { // Change "userEmail" to the actual cookie name
                userEmail = cookie.getValue();
                System.out.println(userEmail);
                break;
            }
        }
    }
    try
    {

        Connection con = MyDatabase.getConnection();
        PreparedStatement psmt = con.prepareStatement("select * from seeker where email=?");
        psmt.setString(1,userEmail);
        ResultSet rs = psmt.executeQuery();

        if(rs.next()) {
            String sid = rs.getString("s_id");





%>



<!-- Preloader Start -->
<%--<div id="preloader-active">--%>
<%--    <div class="preloader d-flex align-items-center justify-content-center">--%>
<%--        <div class="preloader-inner position-relative">--%>
<%--            <div class="preloader-circle"></div>--%>
<%--            <div class="preloader-img pere-text">--%>
<%--                <img src="assets/img/logo/logo.png" alt="">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- Preloader Start -->
<!-- Hero Area Start-->

<%--<div class="slider-area ">--%>
<%--    <div class="single-slider section-pad-t30 slider-height2 d-flex align-items-md-center" style="background-image: url('userstyle/assets/img/Contact/contactimg.jpg')  ; height: 100%; width: 100%">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-12">--%>
<%--                    <div class="hero-cap text-right">--%>
<%--                        <h2>Contact us</h2>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- Hero Area End -->
<!-- ================ contact section start ================= -->
<div class="background">
    <div class="container">
        <div class="screen ">
            <div class="screen-header">
                <div class="screen-header-left">
                    <div class="screen-header-button col-lg-2"></div>
                    <div class="screen-header-button maximize"></div>
                    <div class="screen-header-button minimize"></div>
                </div>
                <div class="screen-header-right">
                    <div class="screen-header-ellipsis"></div>
                    <div class="screen-header-ellipsis"></div>
                    <div class="screen-header-ellipsis"></div>
                </div>
            </div>
            <div class="screen-body">
                <div class="screen-body-item left">
                    <div class="app-title">
                        <span>CONTACT</span>
                        <span>US</span>
                    </div>

                </div>
                <form action="./ContactusServlet" method="post" enctype="multipart/form-data">
                    <div class="screen-body-item">
                        <div class="app-form">

                            <div class="app-form-group message">
                                <input name="message" class="app-form-control" placeholder="MESSAGE">
                                <input type="hidden" name="s_id" value="<%=sid%>">

                            </div>
                            <div class="app-form-group buttons">
                                <button class="app-form-button">CANCEL</button>
                                <button class="app-form-button">SEND</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<%
    }
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }

%>

</body>

</html>
