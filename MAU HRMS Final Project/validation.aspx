<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="MAU_HRMS_Final_Project.validation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="(?=.*[a-z])(?=.*[A-Z])(?=.*d)(?=.*[@$!%*?&])[A-Za-zd@$!%*?&]{8,}" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
    <asp:Button ID="Button1" runat="server" Text="Button" />

</asp:Content>
