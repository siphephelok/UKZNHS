<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UKZNHS.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UKZN Clinic</title>
    <link rel="stylesheet" href="../Libs/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../CSS/Login.css" />
</head>
<body style="background-image: url(../Assets/Images/Login.jpg); background-size: cover; background-repeat: no-repeat; background-position: center">
    <div class="container-fluid">
        <div class="row" style="height: 120px"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5 transparent-background">
                <h1 class="custom-color pl-2">UKZN Clinic</h1>
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <label for="RoleEmailTb" class="form-label custom-color">Email address</label>
                        <input type="email" class="form-control" id="RoleEmailTb" aria-describedby="emailHelp" placeholder="Enter your email" runat="server" />
                    </div>
                    <div class="mb-3">
                        <label for="RolePassTb" class="form-label custom-color">Password</label>
                        <input type="password" class="form-control" id="RolePassTb" placeholder="Enter your password" runat="server" />
                    </div>
                    <div class="mb-3 form-check">
                        <asp:DropDownList ID="RoleCb" runat="server" class="form-control">
                            <asp:ListItem Text="--Select Role--" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem>Doctor</asp:ListItem>
                            <asp:ListItem>Receptionist</asp:ListItem>
                            <asp:ListItem>Laboratorian</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Guest</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="d-grid">
                                              
                        <asp:Button ID="EditBtn" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="EditBtn_Click" /><br />
                        <asp:Button ID="HomeBtn" runat="server" Text="Back/Home" class="btn btn-secondary btn-block" OnClick="HomeBtn_Click" /><br />
                        <label runat="server" id="ErrMsg" class="text-danger"></label>

                    </div>
                </form>
                <div class="row" style="height: 10px"></div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</body>
</html>
