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

    <link rel="stylesheet" href="../userstyle/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../userstyle/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../userstyle/assets/css/flaticon.css">
    <link rel="stylesheet" href="../userstyle/assets/css/slicknav.css">
    <link rel="stylesheet" href="../userstyle/assets/css/price_rangs.css">
    <link rel="stylesheet" href="../userstyle/assets/css/animate.min.css">
    <link rel="stylesheet" href="../userstyle/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="../userstyle/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../userstyle/assets/css/themify-icons.css">
    <link rel="stylesheet" href="../userstyle/assets/css/slick.css">
    <link rel="stylesheet" href="../userstyle/assets/css/nice-select.css">
    <link rel="stylesheet" href="../userstyle/Doc/css/style.css">
    <link rel="stylesheet" href="../userstyle/assets/css/ft-form-styles-v3.css">
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
<header>
    <!-- Header Start -->
    <jsp:include page="../userComponet/header.jsp"/>
    <!-- Header End -->
</header>
<div style="padding: 10%">
<div style="padding: 5%;background-color: #4C5B5C;color:whitesmoke; font-size: 20px;  border-radius:50px" >
    <form action="SEND ADDRESS" id="ft-form" method="POST" accept-charset="UTF-8" enctype="multipart/form-data"  >
        <fieldset>
            <legend>Job</legend>
            <label>
                Application for *
                <select name="Application for" required>
                    <option>Job A</option>
                    <option>Job B</option>
                </select>
            </label>
        </fieldset>
        <fieldset>
            <legend>Personal data</legend>
            <div class="two-cols">
                <label>
                    First name *
                    <input type="text" name="First name" required>
                </label>
                <label>
                    Family name *
                    <input type="text" name="Family name" required>
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
                    <input type="tel" name="Phone" required>
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
                    <input type="file" name="Application letter" accept=".doc,.docx,.pdf">
                </label>
                <label>
                    Curriculum vitae
                    <input type="file" name="Curriculum vitae" accept=".doc,.docx,.pdf">
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
<footer>
    <!-- Footer Start-->
    <div class="footer-area footer-bg footer-padding">
        <div class="container">
            <div class="row d-flex justify-content-between">
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="single-footer-caption mb-30">
                            <div class="footer-tittle">
                                <h4>About Us</h4>
                                <div class="footer-pera">
                                    <p>Heaven frucvitful doesn't cover lesser dvsays appear creeping seasons so behold.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Contact Info</h4>
                            <ul>
                                <li>
                                    <p>Address :Your address goes
                                        here, your demo address.</p>
                                </li>
                                <li><a href="#">Phone : +8880 44338899</a></li>
                                <li><a href="#">Email : info@colorlib.com</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Important Link</h4>
                            <ul>
                                <li><a href="#"> View Project</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Testimonial</a></li>
                                <li><a href="#">Proparties</a></li>
                                <li><a href="#">Support</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Newsletter</h4>
                            <div class="footer-pera footer-pera2">
                                <p>Heaven fruitful doesn't over lesser in days. Appear creeping.</p>
                            </div>
                            <!-- Form -->
                            <div class="footer-form" >
                                <div id="mc_embed_signup">
                                    <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                          method="get" class="subscribe_form relative mail_part">
                                        <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                               class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = ' Email Address '">
                                        <div class="form-icon">
                                            <button type="submit" name="submit" id="newsletter-submit"
                                                    class="email_icon newsletter-submit button-contactForm"><img src="../userstyle/assets/img/icon/form.png" alt=""></button>
                                        </div>
                                        <div class="mt-10 info"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="row footer-wejed justify-content-between">
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                    <!-- logo -->
                    <div class="footer-logo mb-20">
                        <a href="index.html"><img src="../userstyle/assets/img/logo/logo2_footer.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="footer-tittle-bottom">
                        <span>5000+</span>
                        <p>Talented Hunter</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="footer-tittle-bottom">
                        <span>451</span>
                        <p>Talented Hunter</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <!-- Footer Bottom Tittle -->
                    <div class="footer-tittle-bottom">
                        <span>568</span>
                        <p>Talented Hunter</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom area -->
    <div class="footer-bottom-area footer-bg">
        <div class="container">
            <div class="footer-border">
                <div class="row d-flex justify-content-between align-items-center">
                    <div class="col-xl-10 col-lg-10 ">
                        <div class="footer-copy-right">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2">
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>

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

