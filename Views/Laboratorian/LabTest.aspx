<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaboratorianMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="UKZNHS.Views.Laboratorian.LabTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" style="height: 50px"></div>
        <div class="row">
            <div class="col-md-4">
                <h2>Laboratory Test Detail</h2>
                <form>
                    <div class="mb-3">
                        <label for="TestNameTb" class="form-label">Name</label>
                        <input type="text" class="form-control" id="TestNameTb" runat="server" required="required" />
                    </div>
                 
                    <div class="mb-3">
                        <label for="TestCostTb" class="form-label">Test Cost</label>
                        <input type="text" class="form-control" id="TestCostTb" runat="server" required="required" />
                    </div>
             
                    <div class="row" style="height:150px"> </div>
                    <asp:Button ID="EditBtn" runat="server" Text=" Edit " class="btn btn-warning" OnClick="EditBtn_Click" />
                    <asp:Button ID="AddBtn" runat="server" Text=" Save " class="btn btn-primary" OnClick="AddBtn_Click" />
                    <asp:Button ID="Delete" runat="server" Text=" Delete " class="btn btn-danger" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this doctor?');" />
                    <br />
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
                        <h1>Laboratory Test Details</h1>
                        <asp:GridView ID="LabTestGV" class="table table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="LaboratoriansGV_SelectedIndexChanged"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
