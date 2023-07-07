<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="MAU_HRMS_Final_Project.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
                        <center>              
                 <center> <span><img src="images/CngPw.png" height="80" width="80"  /><span class="fw-bold display-6 text-center">Change Password</span></span><hr /></center>
                              <asp:Label ID="Username" runat="server" Text="Username" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Password" runat="server" Text="New Password" ></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Confirm New Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
                            <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />
            </div>

</asp:Content>
