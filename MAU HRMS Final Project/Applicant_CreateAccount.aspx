<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Applicant_CreateAccount.aspx.cs" Inherits="MAU_HRMS_Final_Project.Applicant_CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
      <table align="center">
        <tr>
            <td colspan="3">
                <h4>New Applicant Account</h4>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">

                <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>

            </td>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style5">

                <asp:TextBox ID="Username_ApplicantTextBox" runat="server" CssClass="form-control"  ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="[A-Za-z]" ControlToValidate="Username_ApplicantTextBox" runat="server" ErrorMessage="Invalid input" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Username_ApplicantTextBox" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            <td class="auto-style3">

                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">

                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>

            </td>
            <td class="auto-style4">

                &nbsp;</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="" ControlToValidate="TextBox2" runat="server" ErrorMessage="Invalid input" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can not be null" ForeColor="Red" ></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">

                Confirm password

            </td>
            <td class="auto-style4">

                &nbsp;</td>
            <td class="auto-style6">
   <asp:TextBox ID="Confirm_Password_TextBox" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Confirm_Password_TextBox" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
         
            <td class="auto-style3">
                &nbsp;</td>
         
        </tr>
        <tr>
            <td class="auto-style7">

                <asp:Label ID="Label3" runat="server" Text="Email" ></asp:Label>

            </td>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style5">

                <asp:TextBox ID="Email_ApplicantTextBox" runat="server" TextMode="Email" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Email_ApplicantTextBox" runat="server"ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="" ControlToValidate="Email_ApplicantTextBox" runat="server" ErrorMessage="Invalid input" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style3">

                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">

            </td>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style5">

                <asp:Button ID="Signup" runat="server" Text="Sign Up" CssClass="btn btn-outline-dark" OnClick="Button1_Click"  />

            </td>
            <td class="auto-style3">

                &nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>
