<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CD_ApproveAttendance.aspx.cs" Inherits="MAU_HRMS_Final_Project.CD_ApproveAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
          <center> <span><img src="images/approval.png" height="80" width="80"  /><span class="fw-bold display-6 text-center">Approve Attendance </span></span><hr /></center>  
           <asp:Label ID="Label1" runat="server" Text="Select Department" CssClass="form-label"></asp:Label>
           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>

           </div>
</asp:Content>
