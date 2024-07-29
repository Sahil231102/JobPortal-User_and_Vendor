<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29-05-2024
  Time: 02:48 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job board HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->

</head>

<body>
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

<main>

    <%
        String id = request.getParameter("jobid");

    %>
<%


    try
    {
        Connection con = MyDatabase.getConnection();
        PreparedStatement psmt = con.prepareStatement("select * from add_job where Job_id=?");
        psmt.setString(1,id);
        ResultSet rs = psmt.executeQuery();
        while (rs.next())
        {
            String jid = rs.getString(1);
            String jobname = rs.getString("Job_Name");
            String companyname = rs.getString("Company_Name");
            String city = rs.getString("City");
            String state = rs.getString("State");
            String email = rs.getString("Email");
            String phone = rs.getString("Phone_Number");
            String salary = rs.getString("Salary");
            String JobType = rs.getString("JobType");
            String startDate = rs.getString("StartDate");
            String endDate = rs.getString("EndDate");
            String job_Add_Date = rs.getString("Job_Add_Date");
            String jobdescription = rs.getString("JobDescription");
            String vacancy = rs.getString("vacancy");
            String AddJobTime = rs.getString("AddJobTime");
            byte[] comimg = rs.getBytes("companyImg");
            String imgByte = Base64.getEncoder().encodeToString(comimg);
            String comimgs = "data:image/png;base64," + imgByte;



%>

    <%
      HttpSession sessiondata = request.getSession();
      sessiondata.setAttribute("jobname",jobname);
      sessiondata.setAttribute("companyname",companyname);


    %>
    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-pad-t30 slider-height2 d-flex align-items-md-center" style="background-image: url('./userstyle/assets/img/jobDetails/JobDetails.jpg'); height: 50%; width: 100%">
        <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2><%=jobname%></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->
    <!-- job post company Start -->
    <div class="job-post-company pt-120 pb-120">
        <div class="container">
            <div class="row justify-content-between">
                <!-- Left Content -->
                <div class="col-xl-7 col-lg-8">
                    <!-- job single -->
                    <div class="single-job-items mb-50">
                        <div class="job-items">
                            <div class="company-img company-img-details">
                                <a href="#"><img height="120px" style="border-style: solid;border-color: #0b1c39" src="<%=comimgs%>" alt=""></a>
                            </div>
                            <div class="job-tittle">
                                <a href="#">
                                    <h4><%=companyname%></h4>
                                </a>
                                <ul>
                                    <li><%=jobname%></li>
                                    <li><i class="fas fa-map-marker-alt"></i><%=city%>,<%=state%></li>
                                    <li>Rs:<%=salary%></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- job single End -->

                    <div class="job-post-details">
                        <div class="post-details1 mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Job Description</h4>
                            </div>
                            <p><%=jobdescription%></p>
                        </div>
<%--                        <div class="post-details2  mb-50">--%>
<%--                            <!-- Small Section Tittle -->--%>
<%--                            <div class="small-section-tittle">--%>
<%--                                <h4>Required Knowledge, Skills, and Abilities</h4>--%>
<%--                            </div>--%>
<%--                            <ul>--%>
<%--                                <li>System Software Development</li>--%>
<%--                                <li>Mobile Application in  iOS/Android/Tizen or other platform</li>--%>
<%--                                <li>Research and code , libraries, APIs and frameworks</li>--%>
<%--                                <li>Strong knowledge on software development life cycle</li>--%>
<%--                                <li>Strong problem solving and debugging skills</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="post-details2  mb-50">--%>
<%--                            <!-- Small Section Tittle -->--%>
<%--                            <div class="small-section-tittle">--%>
<%--                                <h4>Education + Experience</h4>--%>
<%--                            </div>--%>
<%--                            <ul>--%>
<%--                                <li>3 or more years of professional design experience</li>--%>
<%--                                <li>Direct response email experience</li>--%>
<%--                                <li>Ecommerce website design experience</li>--%>
<%--                                <li>Familiarity with mobile and web apps preferred</li>--%>
<%--                                <li>Experience using Invision a plus</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
                    </div>

                </div>
                <!-- Right Content -->
                <div class="col-xl-4 col-lg-4">
                    <div class="post-details3  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Job Overview</h4>
                        </div>
                        <ul>
                            <li>Posted date : <span><%=job_Add_Date%></span></li>
                            <li>Location : <span><%=city%>,<%=state%></span></li>
                            <li>Vacancy : <span><%=vacancy%></span></li>
                            <li>Job nature : <span><%=JobType%></span></li>
                            <li>Salary :  <span><%=salary%>₹</span></li>
                            <li>Application Start date : <span><%=startDate%></span></li>
                            <li>Application End date : <span><%=endDate%></span></li>
                        </ul>
                        <div class="apply-btn2">
                            <a href=".?pname=jobApplyForm" class="btn">Apply Now</a>
                        </div>
                    </div>
                    <div class="post-details4  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Company Information</h4>
                        </div>
                        <span><%=companyname%></span>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        <ul>
                            <li>Name: <span><%=companyname%> </span></li>
                            <li>Web : <span> <%=companyname%>.com</span></li>
                            <li>Email: <span><%=email%></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job post company End -->
<%
        }
    }catch (Exception e)
        {
            e.printStackTrace();
        }
    %>
</main>


<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<script src="./assets/js/price_rangs.js"></script>

<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="./assets/js/jquery.scrollUp.min.js"></script>
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>

</body>
</html>
