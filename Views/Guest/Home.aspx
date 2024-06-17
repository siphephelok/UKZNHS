<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UKZNHS.Views.Guest.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UKZN Clinic</title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            scroll-behavior: smooth;
        }
        .jumbotron {
            position: relative;
            background-image: url('../../Assets/Images/clinic.jpg');
            background-size: cover;
            background-position: center;
            color: #fff;
            text-shadow: 2px 2px 4px #000;
            padding: 100px 25px;
            margin-bottom: 0;
        }
        .jumbotron::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }
        .jumbotron .container {
            position: relative;
            z-index: 2;
        }
        .section {
            padding: 60px 0;
        }
        .bg-light {
            background-color: #f8f9fa !important;
        }
        .footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">UKZN Clinic</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="#home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../Login.aspx">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="home" class="jumbotron text-center">
            <div class="container">
                <h1 class="display-4">Welcome to UKZN Clinic</h1>
                <p class="lead">Your Health is Our Priority</p>
            </div>
        </div>

        <div id="about" class="section bg-light text-center">
            <div class="container">
                <h2>About Us</h2>
                <p>Welcome to the UKZN Clinic. Established in 2024, our clinic is dedicated to providing exceptional healthcare services to the University of KwaZulu-Natal community. Our team of experienced healthcare professionals is committed to ensuring the well-being of our patients through comprehensive medical care, advanced diagnostic services, and personalized treatment plans.</p>
                <p>We offer a wide range of medical services including general practice, surgery, urology, ophthalmology, and more. Our clinic is equipped with state-of-the-art facilities and technology to provide the highest standard of care.</p>
                <p>At UKZN Clinic, your health is our priority. We strive to create a comfortable and welcoming environment where you can receive the care you need with the utmost compassion and professionalism.</p>
            </div>
        </div>

        <div id="contact" class="section text-center">
            <div class="container">
                <h2>Contact Us</h2>
                <p>If you have any questions, concerns, or would like to schedule an appointment, please feel free to reach out to us. Our friendly staff is here to assist you.</p>
                <p><strong>Address:</strong> UKZN Clinic, University of KwaZulu-Natal, Durban, South Africa</p>
                <p><strong>Phone:</strong> +27 31 260 1111</p>
                <p><strong>Email:</strong> contact@ukznclinic.ac.za</p>
                <form id="contactForm" runat="server" class="mt-4">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" runat="server" required />
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" runat="server" required />
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" rows="3" runat="server" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

        <footer class="footer text-center">
            <div class="container">
                <p>&copy; 2024 UKZN Clinic. All rights reserved.</p>
                <p>University of KwaZulu-Natal, Durban, South Africa</p>
            </div>
        </footer>
    </div>

    <script src="../../Libs/Bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
