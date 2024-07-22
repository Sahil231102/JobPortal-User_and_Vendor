<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20-07-2024
  Time: 06:04 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <link rel="manifest" href="./site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="./userstyle/assets/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="./userstyle/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./userstyle/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="./userstyle/assets/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="./userstyle/assets/css/price_rangs.css">
    <link rel="stylesheet" href="./userstyle/assets/css/slicknav.css">
    <link rel="stylesheet" href="./userstyle/assets/css/animate.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="./userstyle/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="./userstyle/assets/css/themify-icons.css">
    <link rel="stylesheet" href="./userstyle/assets/css/slick.css">
    <link rel="stylesheet" href="./userstyle/assets/css/nice-select.css">
    <link rel="stylesheet" href="./userstyle/Doc/css/style.css">


</head>
<body>
<header class="header-area header-transparrent">
  <jsp:include page="./userComponet/header.jsp"></jsp:include>
</header>

<div>

  <%
      String pagename = request.getParameter("pname");
      if(pagename != null)
      {
          switch (pagename)
          {
              case "Home":
  %>
    <jsp:include page="/Page/Home.jsp"/>
    <%
        break;
        case "findJob":

    %>
    <jsp:include page="Page/Job_Listing.jsp"/>
    <%
        break;
        case "About":
    %>
    <jsp:include page="Page/about.jsp"/>
    <%
        break;
    case "Contact":
        %>
    <jsp:include page="Page/contact.jsp"/>
    <%
        break;
        case "jobDetails":
    %>
    <jsp:include page="./Page/job_details.jsp"/>
    <%
        break;
        case "userProfile":
    %>

    <jsp:include page="Page/UserProfile.jsp"/>
    <%
        break;
        }
        }else {
          %>
    <jsp:include page="Page/Home.jsp"/>
          <%
        }
    %>


</div>

<footer>
    <jsp:include page="./userComponet/footer.jsp"/>
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
