<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.MyDatabase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %><%--
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
    try
    {
        Connection con = MyDatabase.getConnection();
        Statement smt = con.createStatement();
        ResultSet rs = smt.executeQuery("select * from user where id=3");
        while (rs.next())
        {
            String id = rs.getString(1);
            String Fname = rs.getString("First_name");
            String Lname = rs.getNString("Last_name");
            String Email = rs.getString("Email");
            String Phone = rs.getString("Phone_Number");
            String Gender = rs.getString("Gender");
            byte[] cimg = rs.getBytes("Uimg");
            String imgByte = Base64.getEncoder().encodeToString(cimg);
            String cimgs = "data:image/png;base64," + imgByte;
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
                        <img class="img-account-profile rounded-circle mb-2" src="<%=cimgs%>" alt="">
                        <!-- Profile picture help block-->
                       </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Profile Details</div>
                    <div class="card-body">

                        <form>
                            <!-- Form Group (username)-->

                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputFirstName">First name</label>
                                    <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" value="<%=Fname%>" readonly>
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

                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputOrgName">Gender</label>
                                    <input class="form-control" type="text" placeholder="Enter your organization name" value="<%=Gender%>" readonly>
                                </div>
                                <!-- Form Group (location)-->
                                                           </div>
                            <!-- Save changes button-->
                            <button style="font-family: 'Josefin Sans', sans-serif" class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal"> Update</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Update profile</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <label>User Id</label>
                                            <input type="text" class="form-control" name="Fname" value="<%=id%>"readonly/>

                                        </div>
                                        <div class="modal-body">
                                            <label>First name</label>
                                            <input type="text" class="form-control" name="Fname" value="<%=Fname%>"/>

                                        </div>
                                        <div class="modal-body">
                                            <label>Last name</label>
                                            <input type="text" class="form-control" name="Lname" value="<%=Lname%>"/>

                                        </div>
                                        <div class="modal-body">
                                            <label>Email Address</label>
                                            <input type="text" class="form-control" name="Email" value="<%=Email%>"/>

                                        </div>
                                        <div class="modal-body">
                                            <label>Phone Number</label>
                                            <input type="tel"maxlength="10"  class="form-control" name="Phone" value="<%=Phone%>"/>

                                        </div>
                                        <div class="modal-body">
                                            <label>Gender</label>
                                            <input type="text" class="form-control" name="Gender" value="<%=Gender%>"/>

                                        </div>
                                        <div class="modal-body">
                                            <label>Choose Images</label>
                                            <input type="file" class="form-control" name="UnewImg" value="<%=cimg%>"/>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
