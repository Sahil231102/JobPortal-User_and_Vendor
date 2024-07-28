<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29-05-2024
  Time: 01:11 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<style>
    .toggle-content {
        display: none; /* Initially hidden */
        /* Add any additional styling for the content */
        background-color: #f1f1f1;
        padding: 10px;
        margin-top: 10px;
    }

    .show {
        display: block; /* Display content when show class is added */
    }

    .icon {
        cursor: pointer; /* Change cursor to pointer for clickable effect */
        display: inline-block;
        padding: 10px;
    }
    .card{border-color: #0b1c39;
        background: #ffffff;
        border-radius: 15px;
        max-width: 300px;
        width: 100%;
        height: 480px;

        margin: 0 auto;
    }
    .card__header{
        height: 100PX;
        padding: 24px;
        display: flex;
        align-items: center;
    }
    .card__header .avatar{
        width: 60px;

        flex-shrink: 0;
        margin-right: 12px;
    }
    .card__header .avatar img{
        width: 60px;
        height: 60px;
        border-radius: 100%;
        object-fit: cover;
    }
    .card__header .name{
        width: 100%;
        font-size: 15px;
        color: #78858F;
        font-weight: 500;
    }
    .card__header .name span{
        display: block;
        color: #000000;
        font-size: 20px;
    }
    /*.icon{*/
    /*    font-size: 24px;*/
    /*    line-height: 1;*/
    /*    color: #000000;*/
    /*    flex-shrink: 0;*/
    /*    margin-left: 12px;*/
    /*}*/
    .card__body img{
        width: 100%;
    }
    .card__footer{

        margin: 10px;
        font-size: 18px;
        color: #78858F;
    }

    .btn::before{
        background: none !important;
    }
    .dropdown-toggle::after {
        display: none !important; /* Hide the default dropdown arrow */
    }


    .dropdown-toggle:focus,
    .dropdown-toggle:active {
        outline: none !important; /* Removes the focus outline */
        box-shadow: none !important; /* Removes the shadow that appears on active state */
        border: none !important; /* Removes the border */
    }

</style>
<head>
    <!-- Add this line in the <head> section of your HTML -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job board HTML-5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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

    <!-- Hero Area End -->

    <!-- Job List Area Start -->   <section class="featured-job-area feature-padding">
    <div class="row h3">
        <div class="col-lg-12">
            <div class="section-tittle text-center">
                <span>Apply Job</span>

            </div>
        </div>
    </div>
    <%
        String sql="select * from add_job";
        int id = 3;
        try
        {
            Connection con = MyDatabase.getConnection();
            PreparedStatement psmt = con.prepareStatement(sql);
            psmt.execute();
            ResultSet rs = psmt.getResultSet();
            for(int i=1; i<=5;i++)
            {

                if (rs.next()) {

                    String Jobname= rs.getString("Job_Name");

                    String Company_name= rs.getString("Company_Name");
                    String city = rs.getString("City");
                    String state= rs.getString("State");
                    String email = rs.getString("Email");
                    String phone = rs.getString("Phone_Number");
                    String salary = rs.getString("Salary");
                    String jobtype = rs.getString("JobType");
                    String startdate = rs.getString("StartDate");
                    String enddate = rs.getString("EndDate");
                    String jobDescription = rs.getString("JobDescription");
                    String vacancy = rs.getString("vacancy");

                    byte[] Cimg = rs.getBytes("companyImg");
                    String imgbyte = Base64.getEncoder().encodeToString(Cimg);
                    String companyImg = "data:image/png;base64,"+imgbyte;




    %>

    <div class="container">
        <!-- Section Tittle -->


        <div class="row justify-content-center">
            <div class="col-xl-10">
                <!-- single-job-content -->
                <div class="single-job-items mb-30">
                    <div class="job-items">
                        <div class="company-img">
                            <a href=".?pname=jobDetails" style="padding-right: 20px "><img height="100px" width="100px" style="border-color: #4C5B5C;border-style: solid;" src="<%=companyImg%>" alt=""></a>
                        </div>
                        <div class="job-tittle">
                            <a href="job_details.html"><h4><%=Company_name%></h4></a>
                            <ul>
                                <li><%=Jobname%></li>
                                <li><i class="fas fa-map-marker-alt"></i><%=city%>,<%=state%></li>

                            </ul>
                        </div>
                    </div>
                    <div class="items-link f-right">
                        <a href="job_details.html">Full Time</a>
                        <li><%=salary%>₹</li>
                    </div>
                </div>
                <!-- single-job-content -->
                <!-- single-job-content -->

            </div>
        </div>
    </div>
    <%
                }
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    %>
</section>
</main>
<script>
    // JavaScript to toggle the view
    document.getElementById('toggleIcon').addEventListener('click', function() {
        var content = document.getElementById('toggleContent');
        content.classList.toggle('show');
    });
</script>
</body>
</html>
