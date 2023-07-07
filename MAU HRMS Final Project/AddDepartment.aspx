<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="MAU_HRMS_Final_Project.AddDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
        <center>              
                 <center> <span><img src="images/Department.jpg" height="80" width="80"  /><span class="fw-bold display-6 text-center">Add Department</span></span><hr /></center>
            <hr />
             <asp:Label ID="Label3" runat="server" Text="Department ID" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Label ID="Label1" runat="server" Text="Department Name" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Can not be null" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^[A-Z][A-Za-z\s]+" ForeColor="red" ErrorMessage="Invalid Input"></asp:RegularExpressionValidator>
          <br />
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Can not be null" ForeColor="red" ></asp:RequiredFieldValidator>
            <br />
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" CssClass="btn btn-outline-dark" OnClientClick="javascript:confirm('Are you Sure');" />
        </center>
        <hr />
            </div>   
</asp:Content>
