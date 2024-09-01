<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    Cookie[] cookies1 = request.getCookies();
    String checkuser = null;

    // Find the cookie that contains the user's email
    if (cookies1 != null) {
        for (Cookie cookie : cookies1) {
            if("em".equals(cookie.getName())) {
                checkuser = cookie.getValue();
                System.out.println(checkuser);
                break;
            }
        }
    }
%>

<div class="header-area header-transparrent">
    <div class="headder-top header-sticky">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-2">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="Home.jsp"><img style="width: 100%;height: 100%" src="./userstyle/assets/img/logo/lalo.png" height="130px" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="menu-wrapper">
                        <!-- Main-menu -->
                        <div class="main-menu">
                            <nav class="d-none d-lg-table">
                                <ul id="navigation">
                                    <li><a style="text-decoration: none" href=".?pname=Home">Home</a></li>
                                    <li><a style="text-decoration: none" href=".?pname=findJobs">Find a Jobs</a></li>
                                    <li><a style="text-decoration: none" href=".?pname=About">About</a></li>
                                    <li><a style="text-decoration: none" href=".?pname=jobApplyData">Apply</a></li>
                                    <li><a style="text-decoration: none" href=".?pname=Contact">Contact</a></li>
                                    <!-- <li><a href=".?pname=userProfile">Profile</a></li> -->
                                </ul>
                            </nav>
                        </div>

                        <%
                            Cookie[] cookies = request.getCookies();
                            String userEmail = null;

                            if (cookies != null) {
                                for (Cookie cookie : cookies) {
                                    if ("em".equals(cookie.getName())) {
                                        userEmail = cookie.getValue();
                                        break;
                                    }
                                }
                            }

                            try {
                                Connection con = MyDatabase.getConnection();
                                PreparedStatement psmt = con.prepareStatement("SELECT simg FROM seeker WHERE email=?");
                                psmt.setString(1, userEmail);
                                ResultSet rs = psmt.executeQuery();
                                if (rs.next()) {
                                    byte[] simg = rs.getBytes("simg");
                                    String imgbyte = Base64.getEncoder().encodeToString(simg);
                                    String userimges = "data:image/png;base64," + imgbyte;
                        %>
                        <a href=".?pname=userProfile">
                            <img style="height: 50px; border-radius: 50px; align-items: end; border-style: solid; border-color: #4C5B5C;object-fit: cover" width="50px" src="<%= userimges %>" />
                        </a>
                        <%
                                }
                            } catch (Exception e)
                                {
                                e.printStackTrace();
                            }
                        %>
                    </div>
                </div>
                <div class="col-lg-12 col-md-13"></div>
                <!-- Mobile Menu -->
                <div class="col-12">
                    <div class="mobile_menu d-block d-lg-none"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<%--%>
<%--} else if ("vendor".equals(checkVendor)) {--%>
<%--%>--%>

<%--<div class="header-area header-transparrent">--%>
<%--    <div class="headder-top header-sticky">--%>
<%--        <div class="container">--%>
<%--            <div class="row align-items-center">--%>
<%--                <div class="col-lg-3 col-md-2">--%>
<%--                    <!-- Logo -->--%>
<%--                    <div class="logo">--%>
<%--                        <a href="Home.jsp"><img style="width: 100%;height: 100%" src="./userstyle/assets/img/logo/lalo.png" height="130px" alt=""></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-9 col-md-9">--%>
<%--                    <div class="menu-wrapper">--%>
<%--                        <!-- Main-menu -->--%>
<%--                        <div class="main-menu">--%>
<%--                            <nav class="d-none d-lg-table">--%>
<%--                                <ul id="navigation2">--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=Home">Home</a></li>--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=findJobs">Find a Jobs</a></li>--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=About">About</a></li>--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=About">Add Job</a></li>--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=jobApplyData">Apply</a></li>--%>
<%--                                    <li><a style="text-decoration: none" href=".?pname=Contact">Contact</a></li>--%>
<%--                                    <!-- <li><a href=".?pname=userProfile">Profile</a></li> -->--%>
<%--                                </ul>--%>
<%--                            </nav>--%>
<%--                        </div>--%>

<%--                        <%--%>
<%--                            Cookie[] cookies = request.getCookies();--%>
<%--                            String userEmail = null;--%>

<%--                            if (cookies != null) {--%>
<%--                                for (Cookie cookie : cookies) {--%>
<%--                                    if ("em".equals(cookie.getName())) {--%>
<%--                                        userEmail = cookie.getValue();--%>
<%--                                        break;--%>
<%--                                    }--%>
<%--                                }--%>
<%--                            }--%>

<%--                            try {--%>
<%--                                Connection con = MyDatabase.getConnection();--%>
<%--                                PreparedStatement psmt = con.prepareStatement("SELECT Uimg FROM user WHERE Email=?");--%>
<%--                                psmt.setString(1, userEmail);--%>
<%--                                ResultSet rs = psmt.executeQuery();--%>
<%--                                if (rs.next()) {--%>
<%--                                    byte[] uimg = rs.getBytes("Uimg");--%>
<%--                                    String imgbyte = Base64.getEncoder().encodeToString(uimg);--%>
<%--                                    String userimges = "data:image/png;base64," + imgbyte;--%>
<%--                        %>--%>
<%--                        <a href=".?pname=userProfile">--%>
<%--                            <img style="height: 50px; border-radius: 50px; align-items: end; border-style: solid; border-color: #4C5B5C" width="50px" src="<%= userimges %>" />--%>
<%--                        </a>--%>
<%--                        <%--%>
<%--                                }--%>
<%--                            } catch (Exception e) {--%>
<%--                                e.printStackTrace();--%>
<%--                            }--%>
<%--                        %>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-12 col-md-13"></div>--%>
<%--                <!-- Mobile Menu -->--%>
<%--                <div class="col-12">--%>
<%--                    <div class="mobile_menu d-block d-lg-none"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


</body>
</html>
