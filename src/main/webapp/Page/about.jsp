<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30-05-2024
  Time: 10:40 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job Board HTML-5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
<!-- Preloader Start -->
<div class="pre-loader" id="preloader">
    <div class="pre-loader-box">
        <div class="loader-logo">
            <div class="loading">
                <img width="20%" src="./userstyle/assets/img/logo/lalo.png" alt="Loading"/>
            </div>
        </div>
        <div class="loader-progress" id="progress_div">
            <div class="bar" id="bar1"></div>
        </div>
        <div class="percent" id="percent1">0%</div>
        <div class="loading-text">Loading...</div>
    </div>
</div>
<!-- Preloader End -->

<!-- Header Start -->
<!-- Header End -->

<main>
    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-pad-t30 slider-height2 d-flex align-items-md-center" style="background-image: url('./userstyle/assets/img/about/bgimg.jpg'); height: 100%; width: 100%">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>About us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->

    <!-- Support Company Start-->
    <div class="support-company-area fix section-padding2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="right-caption">
                        <!-- Section Tittle -->
                        <div class="section-tittle section-tittle2">
                            <span>What we are doing</span>
                            <h2>24k Talented people are getting Jobs</h2>
                        </div>
                        <div class="support-caption">
                            <p class="pera-top">Mollit anim laborum duis au dolor in voluptate velit ess cillum dolore eu lore dsu quality mollit anim laborumuis au dolor in voluptate velit cillum.</p>
                            <p>Mollit anim laborum.Duis aute irufg dhjkolohr in re voluptate velit esscillumlore eu quife nrulla parihatur. Excghcepteur signjnt occa cupidatat non inulpadeserunt mollit aboru. temnthp incididbnt ut labore mollit anim laborum suis aute.</p>
                            <a href="about.jsp" class="btn post-btn">Post a job</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Support Company End-->

    <!-- How  Apply Process Start-->
    <div class="apply-process-area apply-bg pt-150 pb-150" data-background="./assets/img/gallery/how-applybg.png">
        <div class="container">
            <!-- Section Tittle -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle white-text text-center">
                        <span>Apply process</span>
                        <h2> How it works</h2>
                    </div>
                </div>
            </div>
            <!-- Apply Process Caption -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-search"></span>
                        </div>
                        <div class="process-cap">
                            <h5>1. Search a job</h5>
                            <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-curriculum-vitae"></span>
                        </div>
                        <div class="process-cap">
                            <h5>2. Apply for job</h5>
                            <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-process text-center mb-30">
                        <div class="process-ion">
                            <span class="flaticon-tour"></span>
                        </div>
                        <div class="process-cap">
                            <h5>3. Get your job</h5>
                            <p>Sorem spsum dolor sit amsectetur adipisclit, seddo eiusmod tempor incididunt ut laborea.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- How  Apply Process End-->

</main>

<script>
    // Preloader Script
    document.addEventListener("DOMContentLoaded", function() {
        var preloader = document.getElementById('preloader');
        var progressDiv = document.getElementById('progress_div');
        var bar = document.getElementById('bar1');
        var percent = document.getElementById('percent1');

        var loadProgress = 0;
        var interval = setInterval(function() {
            loadProgress += 1;
            bar.style.width = loadProgress + '%';
            percent.innerText = loadProgress + '%';

            if (loadProgress >= 100) {
                clearInterval(interval);
                preloader.style.display = 'none'; // Hide preloader
            }
        }, 30); // Adjust the interval speed as needed
    });
</script>

</body>
</html>
