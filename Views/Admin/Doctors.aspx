<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="UKZNHS.Views.Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Doctors Detail</h2>
                <form>
                    <div class="mb-3">
                        <label for="DocNameTb" class="form-label">Name</label>
                        <input type="text" class="form-control" id="DocNameTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocPhoneTb" class="form-label">Phone Number</label>
                        <input type="text" class="form-control" id="DocPhoneTb" pattern="\d{10}" maxlength="10" runat="server" required="required" placeholder="Enter 10-digit phone number" title="Please enter exactly 10 digits." />
                    </div>
                    <div class="mb-3">
                        <label for="DocExpTb" class="form-label">Experience</label>
                        <input type="text" class="form-control" id="DocExpTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocSpecTb" class="form-label">Specialisation</label>
                        <input type="text" class="form-control" id="DocSpecTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocGenderTb" class="form-label">Gender</label>
                        <asp:DropDownList ID="DocGenderTb" runat="server" class="form-control" required="required">
                            <asp:ListItem Text="Select Gender" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="mb-3">
                        <label for="DocAddressTb" class="form-label">Address</label>
                        <input type="text" class="form-control" id="DocAddressTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocDoBTb" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="DocDoBTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocPasswordTB" class="form-label">Password</label>
                        <input type="text" class="form-control" id="DocPasswordTB" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="DocEmailTB" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="DocEmailTB" aria-describedby="emailHelp" runat="server" required="required" />
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>

                    <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this doctor?');"/><br />
                    <label runat="server" id="ErrMsg" class="text-danger"></label>

                </form>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Doctor.jpg" height="400px" width="100%" class="rounded-3" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Doctors Details</h1>
                        <asp:GridView ID="DoctorsGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DoctorsGV_SelectedIndexChanged"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

