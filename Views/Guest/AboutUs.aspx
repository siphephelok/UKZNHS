<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="UKZNHS.Views.Guest.AboutUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us - UKZN Clinic</title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #0062cc;
        }
        .navbar-brand, .nav-link {
            color: #fff !important;
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
            background-color: rgba(0, 0, 0, 0.5); /* Change the last value to adjust transparency */
            z-index: 1;
        }
        .jumbotron .container {
            position: relative;
            z-index: 2;
        }
        .jumbotron h1 {
            font-size: 3rem;
        }
        .content-section {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .content-section h1 {
            color: #0062cc;
            margin-bottom: 20px;
        }
        .content-section p {
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="Home.aspx">UKZN Clinic</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="Home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.aspx">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.aspx">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Feedback.aspx">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Login.aspx">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron text-center">
        <div class="container">
            <h1 class="display-4">About Us</h1>
            <p class="lead">Committed to providing exceptional healthcare services to the UKZN community.</p>
        </div>
    </div>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 content-section">
                <h1>Welcome to UKZN Clinic</h1>
                <p>Established in 2024, our clinic is dedicated to providing exceptional healthcare services to the University of KwaZulu-Natal community. Our team of experienced healthcare professionals is committed to ensuring the well-being of our patients through comprehensive medical care, advanced diagnostic services, and personalized treatment plans.</p>
                <p>We offer a wide range of medical services including general practice, surgery, urology, ophthalmology, and more. Our clinic is equipped with state-of-the-art facilities and technology to provide the highest standard of care.</p>
                <p>At UKZN Clinic, your health is our priority. We strive to create a comfortable and welcoming environment where you can receive the care you need with the utmost compassion and professionalism.</p>
            </div>
        </div>
    </div>

    <script src="../../Libs/Bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
