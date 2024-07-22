<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29-05-2024
  Time: 01:11 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job board HTML-5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<!-- Preloader Start -->
<!-- Uncomment if you need preloader
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="userstyle/assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
-->
<!-- Preloader End -->

<main>
    <!-- Hero Area Start-->
    <div class="slider-area">
        <div class="single-slider section-pad-t30 slider-height2 d-flex align-items-md-center" style="background-image: url('./userstyle/assets/img/findJobScreen/findjobimg.jpg'); height: 100%; width: 100%">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8">
                        <div class="hero-cap text-center">
                            <h2>Get your job</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->

    <!-- Job List Area Start -->
    <div class="job-listing-area pt-120 pb-120">
        <div class="container">
            <div class="row">
                <!-- Left content -->
                <div class="col-xl-3 col-lg-3 col-md-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="small-section-tittle2 mb-45">
                                <div class="ion">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="12px">
                                        <path fill-rule="evenodd" fill="rgb(27, 207, 107)" d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                                    </svg>
                                </div>
                                <h4>Filter Jobs</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Job Category Listing start -->
                    <div class="job-category-listing mb-50">
                        <!-- single one -->
                        <div class="single-listing">
                            <div class="small-section-tittle2">
                                <h4>Job Category</h4>
                            </div>
                            <!-- Select job items start -->
                            <div class="select-job-items2">
                                <select name="select">
                                    <option value="">All Category</option>
                                    <option value="">Category 1</option>
                                    <option value="">Category 2</option>
                                    <option value="">Category 3</option>
                                    <option value="">Category 4</option>
                                </select>
                            </div>
                            <!-- Select job items End -->
                            <!-- select-Categories start -->
                            <div class="select-Categories pt-80 pb-50">
                                <div class="small-section-tittle2">
                                    <h4>Job Type</h4>
                                </div>
                                <label class="container">Full Time
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Part Time
                                    <input type="checkbox" checked="checked">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Remote
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Freelance
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <!-- select-Categories End -->
                        </div>
                        <!-- single two -->
                        <div class="single-listing">
                            <div class="small-section-tittle2">
                                <h4>Job Location</h4>
                            </div>
                            <!-- Select job items start -->
                            <div class="select-job-items2">
                                <select name="select">
                                    <option value="">Anywhere</option>
                                    <option value="">Category 1</option>
                                    <option value="">Category 2</option>
                                    <option value="">Category 3</option>
                                    <option value="">Category 4</option>
                                </select>
                            </div>
                            <!-- Select job items End -->
                            <!-- select-Categories start -->
                            <div class="select-Categories pt-80 pb-50">
                                <div class="small-section-tittle2">
                                    <h4>Experience</h4>
                                </div>
                                <label class="container">1-2 Years
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">2-3 Years
                                    <input type="checkbox" checked="checked">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">3-6 Years
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">6-more..
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <!-- select-Categories End -->
                        </div>
                        <!-- single three -->
                        <div class="single-listing">
                            <!-- select-Categories start -->
                            <div class="select-Categories pb-50">
                                <div class="small-section-tittle2">
                                    <h4>Posted Within</h4>
                                </div>
                                <label class="container">Any
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Today
                                    <input type="checkbox" checked="checked">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Last 2 days
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Last 3 days
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Last 5 days
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="container">Last 10 days
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <!-- select-Categories End -->
                        </div>
                        <div class="single-listing">
                            <!-- Range Slider Start -->
                            <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
                                <div class="small-section-tittle2">
                                    <h4>Filter Jobs</h4>
                                </div>
                                <div class="widgets_inner">
                                    <div class="range_item">
                                        <!-- <div id="slider-range"></div> -->
                                        <input type="text" class="js-range-slider" value="" />
                                        <div class="d-flex align-items-center">
                                            <div class="price_text">
                                                <p>Price :</p>
                                            </div>
                                            <div class="price_value d-flex justify-content-center">
                                                <input type="text" class="js-input-from" id="" readonly />
                                                <span>to</span>
                                                <input type="text" class="js-input-to" id="amount" checked />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                            <!-- Range Slider End -->
                        </div>
                    </div>
                    <!-- Job Category Listing End -->
                </div>
<%! int count =0;%>

                <!-- Right content -->
                <div class="col-xl-9 col-lg-9 col-md-8">
                    <!-- Featured_job_start -->
                    <section class="featured-job-area">
                        <div class="container">
                            <!-- Count of Job list Start -->
                            <div class="count-job mb-35">
                                <span><%=count%> Jobs found</span>
                                <!-- Select job items start -->
                                <div class="select-job-items">
                                    <span>Sort by</span>
                                    <select name="select">
                                        <option value="">None</option>
                                        <option value="">job list</option>
                                        <option value="">job list</option>
                                        <option value="">job list</option>
                                    </select>
                                </div>
                                <!-- Select job items End -->
                            </div>
                            <!-- Count of Job list End -->


                            <!-- single-job-content -->
                            <%
                                // Fetch data from the database and display it
                                MyDatabase db = new MyDatabase();
                                Connection con = db.getConnection();
                                Statement stmt = con.createStatement();

                                ResultSet rs = stmt.executeQuery("SELECT * FROM add_job");
                                while (rs.next()) {


                                    String jobid = rs.getString(1);
                                    String jobName = rs.getString("Job_Name");
                                    String CompanyName = rs.getString("Company_Name");
                                    String city = rs.getString("City");
                                    String state = rs.getString("State");
                                    String Email = rs.getString("Email");
                                    String Phone = rs.getString("Phone_Number");
                                    String Salary = rs.getString("Salary");
                                    String JobType = rs.getString("JobType");
                                    String startDate = rs.getString("StartDate");
                                    String EndDate = rs.getString("EndDate");
                                    String JobDes = rs.getString("JobDescription");
                                    byte[] cimg = rs.getBytes("companyImg");
                                    String imgByte = Base64.getEncoder().encodeToString(cimg);
                                    String cimgs = "data:image/png;base64," + imgByte;
                                   String vacancy = rs.getString("vacancy");
                            %>
                            <div class="single-job-items mb-30">

                                <div class="job-items">

                                        <a href="job_details.html" style="padding-right: 20px "><img height="100px" width="100px" style="border-color: #4C5B5C;border-style: solid;" src="<%=cimgs%>" alt=""></a>

                                    <div class="job-tittle">
                                        <a href=".?pname=jobDetails">
                                            <h4><%= CompanyName%></h4>
                                        </a>
                                        <ul>
                                            <li><span><%=jobName%></span></li>


                                            <li>₹<%=Salary%></li>

                                        </ul>
                                    </div>
                                </div>
<%--                                <div class="items-link">--%>

<%--                                </div>--%>
                                <div class="items-link f-left">
                                    <a style="width: 150px;justify-items: center;justify-content: end" href=""><%=JobType%></a>

                                    <i class="fas fa-map-marker-alt"></i> <%=city%>,<%=state%>
                                </div>
                            </div>

<%--                            <div class="single-job-items mb-30">--%>
<%--                                <div class="job-items">--%>
<%--                                    <div class="company-img">--%>
<%--                                        <a href="#"><img src="assets/img/icon/job-list3.png" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="job-tittle job-tittle2">--%>
<%--                                        <a href="#">--%>
<%--                                            <h4>Digital Marketer</h4>--%>
<%--                                        </a>--%>
<%--                                        <ul>--%>
<%--                                            <li>Creative Agency</li>--%>
<%--                                            <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>--%>
<%--                                            <li>$3500 - $4000</li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="items-link items-link2 f-right">--%>
<%--                                    <a href="job_details.html">Full Time</a>--%>
<%--                                    <span>7 hours ago</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <%
                                }
                                rs.close();
                                stmt.close();
                                con.close();
                            %>
                        </div>
                    </section>
                    <!-- Featured_job_end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Job List Area End -->

</main>

</body>
</html>
