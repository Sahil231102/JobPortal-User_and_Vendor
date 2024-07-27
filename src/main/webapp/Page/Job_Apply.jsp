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
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="assets/img/logo/logo.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->

<div style="padding: 10%">
<div style="padding: 5%;background-color: #4C5B5C;color:black;  font-size: 20px; border-radius:50px" >
    <form action="SEND ADDRESS" id="ft-form" method="POST" accept-charset="UTF-8" enctype="multipart/form-data"  >

        <fieldset>
            <legend>Personal data</legend>
            <div class="two-cols">
                <input type="hidden" name="companyName">
                <label>
                    First name *
                    <input type="text" name="First name" required>
                </label>
                <label>
                    Last name *
                    <input type="text" name="Last name" required>
                </label>
            </div>
            <div class="two-cols">
                <label>
                    Citizenship
                    <input type="text" name="Citizenship">
                </label>
                <label>
                    Date of birth
                    <input type="date" name="Date of birth">
                </label>
            </div>
            <label>
                Address
                <input type="text" name="Address">
            </label>
            <div class="two-cols">
                <label>
                    ZIP Code
                    <input type="text" name="ZIP">
                </label>
                <label>
                    City
                    <input type="text" name="City">
                </label>
            </div>
            <div class="two-cols">
                <label>
                    Phone *
                    <input type="tel" name="Phone" maxlength="10" required>
                </label>
                <label>
                    Email address *
                    <input type="email" name="Email" required>
                </label>
            </div>
        </fieldset>
        <fieldset>
            <legend>Application documents</legend>
            <input type="hidden" name="MAX_FILE_SIZE" value="10485760">
            <div class="two-cols">
                <label>
                    Application letter
                    <input type="file" name="Application_letter" accept=".doc,.docx,.pdf">
                </label>

            </div>
            <p style="color: tan">Possible file types: DOC, PDF. Maximum file size: 10 MB.</p>
        </fieldset>
        <fieldset>
            <div>
                <label>
                    <input type="checkbox" name="Data processing confirmed" value="Yes" required>
                    <span>I agree to the processing of my data for the handling of my request by <a href="https://form.taxi/en" target="_blank">Form.taxi</a>. *</span>
                </label>
            </div>
        </fieldset>
        <div class="btns">
            <input type="text" name="_gotcha" value="" style="display:none;">
            <input style="color: #0b0b0b" type="submit" value="Submit application">
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

