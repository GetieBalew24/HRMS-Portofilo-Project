<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_SalaryReport.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_SalaryReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
 <center><span><img src="images/Salary.jpg" height="80" width="80" /><span class="fw-bold display-6 text-center">Salary Reports</span></span></center>             
    <hr />
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">

         </asp:DropDownList>
         <asp:Button ID="Button1" runat="server"  Text="Button" OnClick="Button1_Click" />
         
    <asp:GridView ID="GridView1"  CssClass="table table-bordered table-condensed table-responsive table-hover" runat="server">     
    </asp:GridView>
         </div> 
</asp:Content>
