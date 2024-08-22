<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20-07-2024
  Time: 07:39 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <STYLE>

        .img-account-profile {

           border-style: solid;
            border-color: #adadad;
            height: 18.4rem;
            width: 15rem;
        }
        .rounded-circle {
            border-radius: 50% !important;
        }
        .card {
            box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
        }
        .card .card-header {
            font-weight: 500;
        }
        .card-header:first-child {
            border-radius: 0.35rem 0.35rem 0 0;
        }
        .card-header {
            padding: 1rem 1.35rem;
            margin-bottom: 0;
            background-color: rgba(33, 40, 50, 0.03);
            border-bottom: 1px solid rgba(33, 40, 50, 0.125);
        }
        .form-control, .dataTable-input {
            display: block;
            font-family: "Josefin Sans", sans-serif;
            width: 100%;
            padding: 0.875rem 1.125rem;
            font-size: 0.875rem;
            font-weight: 400;
            line-height: 1;
            color: #69707a;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #c5ccd6;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: 0.35rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .nav-borders .nav-link.active {
            color: #0061f2;
            border-bottom-color: #0061f2;
        }
        .nav-borders .nav-link {
            color: #69707a;
            border-bottom-width: 0.125rem;
            border-bottom-style: solid;
            border-bottom-color: transparent;
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
            padding-left: 0;
            padding-right: 0;
            margin-left: 1rem;
            margin-right: 1rem;
        }
    </STYLE>
    <title>Title</title>
</head>
<body>
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

    System.out.println(userEmail);
    try
    {
        Connection con = MyDatabase.getConnection();
        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM seeker WHERE email = ?");
        pstmt.setString(1, userEmail);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next())
        {
            String id = rs.getString(1);
            String Fname = rs.getString("fname");
            String Lname = rs.getNString("lname");
            String Gender = rs.getString("Gender");
            String Dob = rs.getString("dob");

            String Email = rs.getString("email");
            String Phone = rs.getString("phoneNumber");
            String UG   = rs.getString("Undergraduate");
            String PG   = rs.getString("Postgraduate");
            String collegeName = rs.getString("collegeName");
            String SeekerDate = rs.getString("SeekerDate");

            byte[] simg = rs.getBytes("simg");
            String imgByte = Base64.getEncoder().encodeToString(simg);
            String simgs = "data:image/png;base64," + imgByte;
%>
<main>
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">

        </nav>
        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="card mb-4 mb-xl-0">
                    <div class="card-header">Profile Picture</div>
                    <div class="card-body text-center">
                        <!-- Profile picture image-->
                        <img class="img-account-profile rounded-circle mb-2" src="<%=simgs%>" alt="">
                        <!-- Profile picture help block-->
                       </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Profile Details</div>
                    <div class="card-body">
                            <!-- Form Group (username)-->

                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputFirstName">First name</label>
                                    <input class="form-control"  id="inputFirstName" type="text" placeholder="Enter your first name" value="<%=Fname%>" readonly>
                                </div>
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLastName">Last name</label>
                                    <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" value="<%=Lname%>" readonly>
                                </div>
                            </div>
                            <!-- Form Row        -->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputOrgName">Email</label>
                                    <input class="form-control" id="inputOrgName" type="text" placeholder="Enter your organization name" value="<%=Email%>" readonly>
                                </div>
                                <!-- Form Group (location)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLocation">Phone Number</label>
                                    <input class="form-control" id="inputLocation" type="text" placeholder="Enter your location" value="<%=Phone%>" readonly>
                                </div>
                            </div>
                            <!-- Form Group (email address)-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Date of Birth</label>
                                <input class="form-control"  type="text" placeholder="Enter your organization name" value="<%=Dob%>" readonly>
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Under Graduation</label>
                                <input class="form-control"  type="text" placeholder="Enter your location" value="<%=UG%>" readonly>
                            </div>
                        </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputOrgName">Post Graduation</label>
                                    <input class="form-control" type="text" placeholder="Enter your organization name" value="<%=PG%>" readonly>
                                </div>
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLocation">College Number</label>
                                    <input class="form-control"  type="text" placeholder="Enter your location" value="<%=collegeName%>" readonly>
                                </div>
                                <!-- Form Group (location)-->
                                                           </div>
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (organization name)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Seeker Date</label>
                                <input class="form-control"  type="text" placeholder="Enter your organization name" value="<%=SeekerDate%>" readonly>
                            </div>
                            <!-- Form Group (location)-->

                        </div>

                            <!-- Save changes button-->


                        <button style="font-family: 'Josefin Sans'  , sans-serif" class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal"> Update</button>
                        <button style="font-family: 'Josefin Sans', sans-serif" class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal2">
                            Logout
                        </button>
                        <form enctype="multipart/form-data" method="post" action="./UpdateUserProfileServlet">
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Update profile</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                            <input type="hidden" class="form-control" name="s_id" value="<%=id%>" readonly />

                                        <div class="modal-body">
                                            <label>First name</label>
                                            <input type="text" class="form-control" name="fname" value="<%=Fname%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Last name</label>
                                            <input type="text" class="form-control" name="lname" value="<%=Lname%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Gender</label>
                                            <input type="tel" maxlength="10" class="form-control" name="Gender" value="<%=Gender%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Phone Number</label>
                                            <input type="tel" maxlength="10" class="form-control" name="phone" value="<%=Phone%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Under Graduate</label>
                                            <input type="text" class="form-control" name="UG" value="<%=UG%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Post Graduate</label>
                                            <input type="text" class="form-control" name="PG" value="<%=PG%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>College Name</label>
                                            <input type="text" class="form-control" name="CollegeName" value="<%=collegeName%>" />
                                        </div>
                                        <div class="modal-body">
                                            <label>Choose Images</label>
                                            <input type="file" class="form-control" name="updateimg" value="" />
                                        </div>
                                        <div class="modal-footer">
                                            <!-- Change this button type to submit -->
                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <form action="./User_Login.jsp" method="POST">
                            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel2">Logout</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to log out?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <!-- Form submission triggers redirect -->
                                            <button type="submit" class="btn btn-primary">Logout</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <%
                            }
                            }
                            catch (Exception e)
                            {
                                e.printStackTrace();
                            }

                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
