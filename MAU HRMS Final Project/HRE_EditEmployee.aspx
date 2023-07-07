<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_EditEmployee.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_EditEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
       <center>
                 <center> <span><img src="images/promotion.jpeg" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Employee Promotion</span></span><hr /></center>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="form-control" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />

           

                   <asp:GridView runat="server"  CssClass="table table-bordered table-condensed table-responsive table-hover" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Employee_Id" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" ReadOnly="True" SortExpression="Employee_Id" />
                           <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                           <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                           <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                           <asp:BoundField DataField="PreviousPosition" HeaderText="PreviousPosition" SortExpression="PreviousPosition" />
                           <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                           <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                       </Columns>

                   </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>"
                     UpdateCommand="UPDATE TBL_Employee set [FirstName]=@FirstName,
                                                             [MiddleName]=@MiddleName ,
                                                             [LastName]=@LastName , 
                                                             [PreviousPosition]=@PreviousPosition
                                                             , [Position]=@Position
                                                             , [Salary]=@Salary
                     where [Employee_Id]=@Employee_Id "
                     SelectCommand="SELECT [Employee_Id], [FirstName], [MiddleName], [LastName], [PreviousPosition], [Position], [Salary] FROM [TBL_Employee] WHERE ([Employee_Id] = @Employee_Id)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox1" Name="Employee_Id" PropertyName="Text"  Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
        </center>
           </div>
</asp:Content>
