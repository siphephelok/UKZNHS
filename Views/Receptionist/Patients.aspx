<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="UKZNHS.Views.Receptionist.Patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Patient Details</h2>
                <form>
                    <div class="mb-3">
                        <label for="PatNameTb" class="form-label">Name</label>
                        <input type="text" class="form-control" id="PatNameTb" runat="server" required="required" />
                    </div>

                    <div class="mb-3">
                        <label for="PatPhoneTb" class="form-label">Phone</label>
                        <input type="text" class="form-control" id="PatPhoneTb" pattern="\d{10}" maxlength="10" runat="server" required="required" title="Please enter exactly 10 digits." placeholder="Enter 10-digit phone number" oninput="validatePhoneNumber(this)" />
                    </div>

                    <div class="mb-3">
                        <label for="PatGenderTb" class="form-label">Gender</label>
                        <asp:DropDownList ID="PatGenderTb" runat="server" class="form-control" required="required">
                            <asp:ListItem Text="Select Gender" Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="PatDOBTb" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="PatDOBTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="PatAddressTb" class="form-label">Address</label>
                        <input type="text" class="form-control" id="PatAddressTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="PatAllergyTB" class="form-label">Allergies</label>
                        <input type="text" class="form-control" id="PatAllergyTB" runat="server" required="required" />
                    </div>
                    <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this patient?');" />
                    <br />
                    <label runat="server" id="ErrMsg" class="text-danger"></label>

                </form>
            </div>
            <div class="col-md-9">
                
                <div class="row">
                    <div class="col">
                        <h1>Patients List</h1>
                        <asp:GridView ID="PatientListGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="PatientListGV_SelectedIndexChanged1"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
