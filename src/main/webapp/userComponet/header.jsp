<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 04-06-2024
  Time: 10:59 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
</head>
<body>
<div class="pre-loader">
    <div class="pre-loader-box">
        <div class="loader-logo">
            <div class="loading">
                <img width="20%" src="./userstyle/assets/img/logo/lalo.png"/>
                <%--                <svg viewBox="0 0 187.3 93.7" height="200px" width="300px" class="loading">--%>
                <%--                    <defs>--%>
                <%--                        <linearGradient y2="0%" x2="100%" y1="0%" x1="0%" id="gradient">--%>
                <%--                            <stop stop-color="pink" offset="0%"></stop>--%>

                <%--                            <stop stop-color="blue" offset="80%"></stop>--%>
                <%--                        </linearGradient>--%>
                <%--                    </defs>--%>

                <%--                    <path stroke="url(#gradient)" d="M93.9,46.4c9.3,9.5,13.8,17.9,23.5,17.9s17.5-7.8,17.5-17.5s-7.8-17.6-17.5-17.5c-9.7,0.1-13.3,7.2-22.1,17.1c-8.9,8.8-15.7,17.9-25.4,17.9s-17.5-7.8-17.5-17.5s7.8-17.5,17.5-17.5S86.2,38.6,93.9,46.4z"></path>--%>
                <%--                </svg>--%>

            </div>
        </div>
        <div class="loader-progress" id="progress_div">
            <div class="bar" id="bar1"></div>
        </div>
        <div class="percent" id="percent1">0%</div>
        <div class="loading-text">Loading...</div>
    </div>
</div>

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
                                    <li><a  style="text-decoration: none" href=".?pname=findJobs">Find a Jobs </a></li>
                                    <li><a style="text-decoration: none" href=".?pname=About">About</a></li>
                                    <li>Apply</li>
                                    <li><a style="text-decoration: none" href=".?pname=Contact">Contact</a></li>
<%--                                    <li><a href=".?pname=userProfile">Profile</a></li>--%>


                                </ul>

                            </nav>
                        </div>
                        <%

                            try {
                                Connection con = MyDatabase.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery(" SELECT Uimg FROM user WHERE id = 3");
                                while (rs.next())
                                {
                                    byte[] uimg = rs.getBytes("Uimg");
                                    String imgbyte = Base64.getEncoder().encodeToString(uimg);
                                    String userimges = "data:image/png;base64,"+imgbyte;


                        %>
                        <a href=".?pname=userProfile"><img style="height:  50px;border-radius: 50px;align-items: end;border-style:solid;border-color: #4C5B5C" width=50px" href=".?pname=userProfile" src="<%=userimges%>" /></a>
                        <!-- Header-btn -->

                    </div>
                    <%
                            }

                        }
                            catch (Exception e)
                            {
                                e.printStackTrace();
                            }
                    %>
                </div>
                <div class="col-lg-12 col-md-13">

                </div>
                <!-- Mobile Menu -->
                <div class="col-12">
                    <div class="mobile_menu d-block d-lg-none"></div>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
