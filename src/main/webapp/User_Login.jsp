<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    <style>
        /* Hide radio buttons */
        input[type="radio"] {
            display: none;
        }

        .wrapper {
            /* Add your desired styles for the wrapper */
        }
        .title-text {
            /* Add your desired styles for the title text */
        }
        .form-container {
            /* Add your desired styles for the form container */
        }
        .slide-controls {
            /* Add your desired styles for the slide controls */
        }
        .form-inner {
            /* Add your desired styles for the form inner */
        }
        .field {
            /* Add your desired styles for the field */
        }
        .btn-layer {
            /* Add your desired styles for the button layer */
        }
    </style>
    <meta charset="utf-8">
    <title>Login & Signup Form | CodingNepal</title>
    <link rel="stylesheet" href="./userstyle/Loginstyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="wrapper" style="width: 500px">
    <div class="title-text">
        <div class="title login">Seeker Login</div>

    </div>

        <div class="form-inner">
            <form action="./UserLoginServlet" method="post" enctype="multipart/form-data" class="login" id="userLoginForm">
                <div style="display: flex; justify-content: center; align-items: center;">
                    <img src="userstyle/assets/img/Login/Login.svg" height="180px" width="180px" alt="Login">
                </div>

                <div class="field">
                    <input type="email" placeholder="Seeker Email Address" id="userEmail" name="email" required>
                </div>
                <div class="field">
                    <input type="password" placeholder="Password" id="userPassword" name="password" required>
                </div>
<%--                <div class="pass-link"><a href="#">Forgot password?</a></div>--%>
                <div class="field btn">
                    <div class="btn-layer"></div>
                    <input type="submit" name ="user">
                </div>
                <div class="usersignup-link">Not a member? <a href="Page/User_SignUp.jsp">Signup now</a></div>
            </form>

            
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer);
                toast.addEventListener('mouseleave', Swal.resumeTimer);
            }
        });

        // Check for URL parameter indicating success (e.g., ?success=true)
        const urlParams = new URLSearchParams(window.location.search);
        const successParam = urlParams.get('s');

        if (successParam && successParam === 'signUp') {
            // Display success toast
            Toast.fire({
                icon: 'success',
                title: 'SignUp successfully!'
            });
            urlParams.delete('s');
            const newUrl = `./User_Login.jsp`;
            window.history.replaceState({}, document.title, newUrl);
        }

    });
</script>

<script>
    const loginText = document.querySelector(".title-text .login");
    const loginForm = document.querySelector("form.login");
    const loginBtn = document.querySelector("label.login");
    const signupBtn = document.querySelector("label.signup");
    const signupLink = document.querySelector("form .signup-link a");
    signupBtn.onclick = (()=>{
        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
    });
    loginBtn.onclick = (()=>{
        loginForm.style.marginLeft = "0%";
        loginText.style.marginLeft = "0%";
    });
    signupLink.onclick = (()=>{
        signupBtn.click();
        return false;
    });
</script>

<script>

    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });
    Toast.fire({
        icon: "success",
        title: "Signed in successfully"
    });
</script>

<script>
    document.getElementById('loginBtn').addEventListener('click', function() {
        const userEmail = document.getElementById('userEmail').value;
        const userPassword = document.getElementById('userPassword').value;

        Swal.fire({
            title: "Do you want to login?",
            showCancelButton: true,
            confirmButtonText: "Login",
        }).then((result) => {
            if (result.isConfirmed) {
                // Here you can add code to handle the login process
                Swal.fire({
                    title: "Login successful!",
                    icon: "success",
                });
            }
        });
    });
</script>

<script>
    document.getElementById('loginForm').addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent default form submission

        const form = event.target;
        const formData = new FormData(form);

        fetch(form.action, {
            method: form.method,
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    // Show success notification
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: data.message,
                        showConfirmButton: false,
                        timer: 1500
                    }).then(() => {
                        // Redirect after showing the success message
                        window.location.href = './index.jsp';
                    });
                } else if (data.status === 'failure') {
                    // Show failure notification
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message
                    });
                } else {
                    // Show error notification
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message
                    });
                }
            })
            .catch(error => {
                console.error('Error:', error);
                // Show error notification
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'An unexpected error occurred.'
                });
            });
    });
</script>

</body>

</html>
