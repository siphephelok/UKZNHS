<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Laboratorians.aspx.cs" Inherits="UKZNHS.Views.Admin.Laboratorians" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Laboratorian Detail</h2>
                <form>
                    <div class="mb-3">
                        <label for="LabNameTb" class="form-label">Name</label>
                        <input type="text" class="form-control" id="LabNameTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="LabEmailTB" class="form-label">Email</label>
                        <input type="email" class="form-control" id="LabEmailTB" aria-describedby="emailHelp" runat="server" required="required" />
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="LabPasswordTB" class="form-label">Password</label>
                        <input type="text" class="form-control" id="LabPasswordTB" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="LabPhoneTb" class="form-label">Phone</label>
                        <input type="text" class="form-control" id="LabPhoneTb" pattern="\d{10}" maxlength="10" runat="server" required="required" title="Please enter exactly 10 digits." placeholder="Enter 10-digit phone number"/>
                    </div>
                    <div class="mb-3">
                        <label for="LabAddressTb" class="form-label">Address</label>
                        <input type="text" class="form-control" id="LabAddressTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="LabGenderTb" class="form-label">Gender</label>
                        <asp:DropDownList ID="LabGenderTb" runat="server" class="form-control" required="required">
                            <asp:ListItem Text="Select Gender" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this Laboratorian?');" /><br />
                    <label runat="server" id="ErrMsg" class="text-danger"></label>

                </form>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Lab.jpg" height="400px" width="100%" class="rounded-3" />
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Laboratorian Details</h1>
                        <asp:GridView ID="LaboratoriansGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="LaboratoriansGV_SelectedIndexChanged"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
