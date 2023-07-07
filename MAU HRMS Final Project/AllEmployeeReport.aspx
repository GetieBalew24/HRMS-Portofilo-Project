<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllEmployeeReport.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_AllEmployeeReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold "> Generate Employee record</h3><hr />
          <asp:Button ID="Button1" runat="server" Text="Generate Report" CssClass="form-control" OnClick="Button1_Click" />
          <br />
          <asp:GridView ID="GridView1" runat="server"  CssClass="table table-bordered table-condensed table-responsive table-hover" AutoGenerateColumns="False" DataKeyNames="Employee_Id" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" ReadOnly="True" SortExpression="Employee_Id" />
                  <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                  <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                  <asp:BoundField DataField="Dept_Id" HeaderText="Dept_Id" SortExpression="Dept_Id" />
                  <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
              </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>" SelectCommand="SELECT [Employee_Id], [FirstName], [Position], [Dept_Id], [Salary] FROM [TBL_Employee]"></asp:SqlDataSource>
           </div>
</asp:Content>
