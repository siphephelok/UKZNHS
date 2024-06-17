<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="UKZNHS.Views.Guest.ContactUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - UKZN Clinic</title>
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
            background-image: url('../../Assets/Images/contact-bg.jpg');
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
            margin-top: -50px;
            border-radius: 10px;
        }
        .content-section h1 {
            color: #0062cc;
            margin-bottom: 20px;
        }
        .content-section p {
            line-height: 1.6;
        }
        .content-section .form-label {
            font-weight: bold;
        }
        .content-section .btn-primary {
            background-color: #0062cc;
            border-color: #0062cc;
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
            <h1 class="display-4">Contact Us</h1>
            <p class="lead">We're here to help you with any questions or concerns you may have.</p>
        </div>
    </div>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 content-section">
                <h1>Get in Touch</h1>
                <p>If you have any questions, concerns, or would like to schedule an appointment, please feel free to reach out to us. Our friendly staff is here to assist you.</p>
                <p><strong>Address:</strong> UKZN Clinic, University of KwaZulu-Natal, Durban, South Africa</p>
                <p><strong>Phone:</strong> +27 31 260 1111</p>
                <p><strong>Email:</strong> contact@ukznclinic.ac.za</p>
                <p>You can also fill out the form below, and we will get back to you as soon as possible:</p>
                <form id="contactForm" runat="server">
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
    </div>

    <script src="../../Libs/Bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
