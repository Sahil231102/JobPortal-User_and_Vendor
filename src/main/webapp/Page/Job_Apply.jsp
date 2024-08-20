        <%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03-06-2024
  Time: 06:05 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="zxx">
<head>
    <style>
        form .gender-details .gender-title{
            font-size: 20px;

        }
        form .category{
            border-style: solid;
            display: revert;
            width: 80%;
            margin: 14px 0 ;
            justify-content: space-around;
        }
        form .category label{

            display: flex;
            align-items: center;
            cursor: pointer;

        }
        form .category label .dot{
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }
        #dot-1:checked ~ .category label .one,
        #dot-2:checked ~ .category label .two,
        #dot-3:checked ~ .category label .three{
            background: #9b59b6;
            border-color: #d9d9d9;
        }
        form input[type="radio"]{
            display: none;
        }

        @media(max-width: 584px){
            .container{
                max-width: 100%;
            }
            form .user-details .input-box{
                margin-bottom: 15px;
                width: 100%;
            }
            form .category{
                width: 100%;
            }
            .content form .user-details{
                max-height: 300px;
                overflow-y: scroll;
            }
            .user-details::-webkit-scrollbar{
                width: 5px;
            }
        }
        @media(max-width: 459px){
            .container .content .category{
                flex-direction: column;
            }
        }

    </style>

    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job board HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="./userstyle/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/flaticon.css">
    <link rel="stylesheet" href="./userstyle/assets/css/slicknav.css">
    <link rel="stylesheet" href="./userstyle/assets/css/price_rangs.css">
    <link rel="stylesheet" href="./userstyle/assets/css/animate.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="./userstyle/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/themify-icons.css">
    <link rel="stylesheet" href="./userstyle/assets/css/slick.css">
    <link rel="stylesheet" href="./userstyle/assets/css/nice-select.css">
    <link rel="stylesheet" href="./userstyle/Doc/css/style.css">
    <link rel="stylesheet" href="./userstyle/assets/css/ft-form-styles-v3.css">
</head>

<body>
<!-- Preloader Start -->

<!-- Preloader Start -->

<%


%>

<%
  // Get session if exists, don't create a new one
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
<div style="padding: 10%">
<div style="padding: 5%;background-color: #E5E4E2;color:black;  font-size: 20px; border-radius:50px" >
    <form action="./JobApplyServlet" id="ft-form" method="POST" enctype="multipart/form-data"  >

        <fieldset>
            <legend>Personal data</legend>
            <div class="two-cols">
                <input type="hidden" name="companyname" value="">
                <input type="hidden" name="jobname" value="">
                <input type="hidden" name ="Jobstatus" value="Padding">
                <label>
                    First name *
                    <input type="text" name="fname" required>
                </label>
                <label>
                    Last name *
                    <input type="text" name="lname" required>
                </label>
            </div>
            <div class="gender-details">
                <label class="gender-title">Gender *</label>
                <div class="category">
                    <input type="radio" name="Gender" id="dot-1" value="male">
                        <span class="dot one"></span>
                        <span class="gender">Male</span>

                    <input type="radio" name="Gender" id="dot-2" value="female">
                        <span class="dot two"></span>
                        <span class="gender">Female</span>

                    <input type="radio" name="Gender" id="dot-3" value="prefer_not_to_say">
                        <span class="dot three"></span>
                        <span class="gender">Prefer not to say</span>

                </div>
            </div>
            <div class="two-cols">
                <label>
                    Citizenship *
                    <input type="text" name="citizenship" required>
                </label>
                <label>
                    Date of birth *
                    <input type="date" name="DateOfBirth" required>
                </label>
            </div>
            <label>
                Address *
                <textarea type="text"  name="Address" required></textarea>
            </label>
            <div class="two-cols">
                <label>
                    Pin Code *
                    <input type="text" name="pincode">
                </label>
                <label>
                    City *
                    <input type="text" name="city">
                </label>
            </div>
            <div class="two-cols">
                <label>
                    Phone *
                    <input type="tel" name="phone" maxlength="10" required>
                </label>
                <label>
                    Email address *
                    <input type="email" name="email" value="<%=userEmail%>" readonly>
                </label>
            </div>
            <div class="two-cols">
                <label>
                    College Name *
                    <input type="text" name="collegename"  required>
                </label>
                <label>
                    Course Name *
                    <input type="text" name="coursename" required>
                </label>
            </div>
        </fieldset>
        <fieldset>
            <legend>Upload documents</legend>
            <input type="hidden" name="MAX_FILE_SIZE" value="10485760">
            <div class="two-cols">
                <label>
                    Resume
                    <input type="file" name="resume" accept=".doc,.docx,.pdf">
                </label>


            </div>
            <p style="color: tan">Possible file types: DOC, PDF. Maximum file size: 10 MB.</p>
        </fieldset>


        <div class="btns">

            <input style="color: #0b0b0b" type="submit" name="status" value="Submit">
        </div>
    </form>
</div>
</div>


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

