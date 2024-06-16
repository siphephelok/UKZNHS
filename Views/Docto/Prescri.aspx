<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Docto/DocMaster.Master" AutoEventWireup="true" CodeBehind="Prescri.aspx.cs" Inherits="UKZNHS.Views.Docto.Prescri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Prescription Detail</h2>
                <br />
                <br />
                <form>
                    <div class="mb-3">
                        <label for="PresDocTb" class="form-label">Doctor</label>
                        <asp:DropDownList ID="DoctorCb" runat="server" class="form-control"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="PresPatTb" class="form-label">Patient</label>
                        <asp:DropDownList ID="PatientCb" runat="server" class="form-control"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="PresMedTb" class="form-label">Medicine</label>
                        <input type="text" class="form-control" id="PresMedTb" runat="server" required="required" />
                    </div>
                    <div class="mb-3">
                        <label for="PresLabTTb" class="form-label">Lab Test</label>
                        <asp:DropDownList ID="TestCb" runat="server" class="form-control"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="PresCostTb" class="form-label">Cost</label>
                        <input type="text" class="form-control" id="PresCostTb" runat="server" required="required" />
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="AddBtn" runat="server" Text="Save Prescription" class="btn btn-warning btn-block text-white" OnClick="AddBtn_Click" />
                    </div>

                    <label runat="server" id="ErrMsg" class="text-danger"></label>
                     
                </form>
            </div>
            <div class="col-md-9">

                <div class="row">
                    <div class="col">
                        <h1>Prescription List</h1>
                        <asp:GridView ID="PrescriGV" class="table table-hover" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
