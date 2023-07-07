<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="MAU_HRMS_Final_Project.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
            <h3 class="fw-bold">Forget Password</h3>
            <div class="col-6">
            <asp:Label ID="Label1" runat="server" Text="Username" CssClass="form-label" ></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Input" ValidationExpression="[a-zA-z]+" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick=" Button1_Click" OnClientClick="javascript:confirm('Are you Sure');" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Security Question" CssClass="form-label"></asp:Label>
            <asp:label ID="SecQuesio" runat="server" Text="" CssClass="form-control"></asp:label>
             <asp:Label ID="Label3" runat="server" Text="Security Answer" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit Answer" OnClick="Button2_Click"  CssClass="btn btn-outline-dark"/>
                <br />
                <asp:Label ID="Label4" runat="server" Text="PLEASE DONOT SHOW TO OTHERS YOUR PASSWORD IS: "></asp:Label>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
           </div>
            </div>
</asp:Content>
