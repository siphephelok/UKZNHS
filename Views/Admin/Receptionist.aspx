<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="UKZNHS.Views.Admin.Receptionist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Receptionist Detail</h2>
                <form>
                    <div class="mb-3">
                        <label for="RecNameTb" class="form-label">Name</label>
                        <input type="text" class="form-control" id="RecNameTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="RecEmailTb" class="form-label">Email</label>
                        <input type="email" class="form-control" id="RecEmailTb" aria-describedby="emailHelp" runat="server" required="required" />
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="RecAddressTb" class="form-label">Address</label>
                        <input type="text" class="form-control" id="RecAddressTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="RecPhoneTb" class="form-label">Phone</label>
                        <input type="text" class="form-control" id="RecPhoneTb" pattern="\d{10}" maxlength="10" runat="server" required="required" title="Please enter exactly 10 digits." />
                    </div>
                    <div class="mb-3">
                        <label for="RecPasswordTB" class="form-label">Password</label>
                        <input type="text" class="form-control" id="RecPasswordTB" runat="server" required="required" />
                    </div>
                    <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this receptionist?');"/><br />
                    <label runat="server" id="ErrMsg" class="text-danger"></label>
                </form>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Hospital.jpg" height="400px" width="100%" class="rounded-3" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Receptionist Details</h1>
                        <asp:GridView ID="ReceptionistGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ReceptionistGV_SelectedIndexChanged"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
