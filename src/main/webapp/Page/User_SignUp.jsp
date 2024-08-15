<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" href="../userstyle/UserSignupStyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
    <div style="font-weight: bold" class="title">User Registration</div>
    <div class="content">
        <form action="../UserSignupServlet" method="post" enctype="multipart/form-data">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">First Name</span>
                    <input type="text" name="fname" placeholder="Enter your First name" required>
                </div>
                <div class="input-box">
                    <span class="details">Last name</span>
                    <input type="text" name="lname" placeholder="Enter your Last name" required>
                </div>
                <div class="input-box">
                    <span class="details">Date Of Birth</span>
                    <input type="date" name="dob" placeholder="Enter your DOB" required>
                </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input type="tel" name="phone" placeholder="Enter your Mobile number" required>
                </div>

                <div class="input-box">
                    <span class="details">Under Graduation</span>
                    <input type="text" name="UG" placeholder="Under Graduation(Enter university/school Name)" required>
                </div>
                <div class="input-box">
                    <span class="details">Post Graduation</span>
                    <input type="text" name="PG" placeholder="Enter your Post Graduation(Enter university Name)" required>
                </div>

                <div class="input-box">
                    <span class="details">College Name</span>
                    <input type="text" name="collegeName" placeholder="Enter your CollegeName" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" name="Password" placeholder="Enter your password" required>
                </div>
                <div class="input-box">
                    <span class="details">Upload Resume</span>
                    <input type="file" name="uimg" required>
                </div>
            </div>
            <div class="gender-details">
                <input type="radio" name="gender" id="dot-1" value="male">
                <input type="radio" name="gender" id="dot-2" value="female">
                <input type="radio" name="gender" id="dot-3" value="prefer_not_to_say">
                <span class="gender-title">Gender</span>
                <div class="category">
                    <label for="dot-1">
                        <span class="dot one"></span>
                        <span class="gender">Male</span>
                    </label>
                    <label for="dot-2">
                        <span class="dot two"></span>
                        <span class="gender">Female</span>
                    </label>
                    <label for="dot-3">
                        <span class="dot three"></span>
                        <span class="gender">Prefer not to say</span>
                    </label>
                </div>
            </div>
            <div class="btn">
                <input style="color: whitesmoke; background: #0b0b0b; width: 50%; height: 50px; border-radius: 20px; margin: 0; font-size: 20px" type="submit" value="Register">
            </div>
            <div class="signup-link">You Are Already Login? <a href="../User_Login.jsp">Login now</a></div>
        </form>
    </div>
</div>
</body>
</html>
