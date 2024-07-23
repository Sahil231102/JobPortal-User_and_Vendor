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

<div class="header-area header-transparrent">
    <div class="headder-top header-sticky">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-2">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="Home.jsp"><img src="./userstyle/assets/img/logo/finalogo.jpg" height="130px" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="menu-wrapper">
                        <!-- Main-menu -->
                        <div class="main-menu">
                            <nav class="d-none d-lg-table">
                                <ul id="navigation">
                                    <li><a  style="" href=".?pname=Home">Home</a></li>
                                    <li><a   href=".?pname=findJobs">Find a Jobs </a></li>
                                    <li><a href=".?pname=About">About</a></li>

                                    <li><a href=".?pname=Contact">Contact</a></li>
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
