<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Statement" %><%--
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
    %>
    <%
        String id = request.getParameter("j_id");

    %>
<%


    try
    {
        Connection con = MyDatabase.getConnection();
        PreparedStatement psmt1 = con.prepareStatement("select * from seeker where email=?");
        PreparedStatement psmt = con.prepareStatement("select * from job_add inner join recuruiter on job_add.r_id = recuruiter.r_id where j_id =?");
        psmt.setString(1,id);
        psmt1.setString(1,userEmail);

        ResultSet rs = psmt.executeQuery();
        ResultSet rs1 = psmt1.executeQuery();
        String Seeker_id = null;
        if (rs1.next()) {
            Seeker_id = rs1.getString("s_id");
        }
        while (rs.next())
        {
            String CompanyName = rs.getString("Company_Name");
            String j_id = rs.getString("j_id");
            String r_id = rs.getString("r_id");
            String jobTitle = rs.getString("job_Title");
            String city = rs.getString("City");
            String State = rs.getString("State");
            String Country = rs.getString("Country");
            String email = rs.getString("email");
            String EmploymentType = rs.getString("EmploymentType");
            String MinSalary = rs.getString("Minsalary");
            String MaxSalary = rs.getString("Maxsalary");
            String jobDes = rs.getString("jobDescripton");
            String Qualification_and_Skill = rs.getString("Qualification_and_Skill");
            String Benefit = rs.getString("Benefits");
            String JobAddDate = rs.getString("JobAddDate");
            byte[] Poster = rs.getBytes("PosterImg");
            String imgByte = Base64.getEncoder().encodeToString(Poster);
            String posterimgs = "data:image/png;base64," + imgByte;

            byte[] companyimg = rs.getBytes("CImg");
            String imgByte1 = Base64.getEncoder().encodeToString(companyimg);
            String companyImgs = "data:image/png;base64," + imgByte1;



%>


    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-pad-t30 slider-height2 d-flex align-items-md-center" style="background-image: url('./userstyle/assets/img/jobDetails/JobDetails.jpg'); height: 50%; width: 100%">
        <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2><%=jobTitle%></h2>
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
                                <a href="#"><img height="120px" style="border-style: solid;border-color: #0b1c39;margin-bottom: 30px" src="<%=companyImgs%>" alt=""></a>
                            </div>
                            <div class="job-tittle">
                                <a href="#">
                                    <h4><%=CompanyName%></h4>
                                </a>
                                <ul>
                                    <li style="text-wrap: nowrap"><%=jobTitle%></li>
                                    <li><i class="fas fa-map-marker-alt"></i><%=city%>,<%=State%></li>
                                    <li>Rs:<%=MinSalary%>-<%=MaxSalary%></li>
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
                            <p><%=jobDes%></p>
                        </div>

                        <div class="post-details1 mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Benefit</h4>
                            </div>
                            <p><%=Benefit%></p>
                        </div>

                        <div class="post-details1 mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>Qualification and Skill</h4>
                            </div>
                            <p><%=Qualification_and_Skill%></p>
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
                            <li>Posted date : <span><%=JobAddDate%></span></li>
                            <li>City : <span><%=city%></span></li>
                            <li>State:<span><%=State%></span></li>
                            <li>Country:<span><%=Country%></span></li>
                            <li>Job nature : <span><%=EmploymentType%></span></li>
                            <li>Salary :  <span><%=MinSalary%>₹ - <%=MaxSalary%>₹</span></li>

                        </ul>

                        <!-- Button to Open the Modal -->
                        <form action="JobApplyServlet" enctype="multipart/form-data" method="post">
                            <div class="apply-btn2">
                                <a class="btn" style="color: #FFFFFF" data-toggle="modal" data-target="#resumeModal">Apply Now</a>
                            </div>

                            <!-- The Modal -->
                            <div class="modal fade" id="resumeModal" tabindex="-1" aria-labelledby="resumeModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="resumeModalLabel">Upload Your Resume</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <!-- Modal Body -->
                                        <div class="modal-body">
                                            <!-- Form Fields -->
                                            <input type="hidden" name="re_id" value="<%= r_id %>">
                                            <input type="hidden" name="jo_id" value="<%= j_id %>">
                                            <input type="hidden" name="se_id" value="<%= Seeker_id %>">
                                            <input type="hidden" name="status" value="pending">


                                            <div class="form-group">
                                                <label for="resumeUpload">Upload Resume</label>
                                                <input type="file" name="resume" class="form-control-file" id="resumeUpload" required>
                                            </div>
                                        </div>

                                        <!-- Modal Footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <div class="post-details4  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>Company Information</h4>
                        </div>
                        <span><%=CompanyName%></span>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        <ul>
                            <li>Name: <span><%=CompanyName%> </span></li>
                            <li>Web : <span> <%=CompanyName%>.com</span></li>
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
