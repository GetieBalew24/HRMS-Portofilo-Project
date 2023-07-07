<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apllicant_Login.aspx.cs" Inherits="MAU_HRMS_Final_Project.Apllicant_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
      <h4 class="fw-bold display-6 text-center">Login</h4>                  
                     <div class="row my-5 justify-content-around align-items-center">
                         <div class="col-6 col-lg-4">
                                 <asp:Label ID="UserNameLabel" runat="server" Text="Username" CssClass="form-lable"></asp:Label>
                                 <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control"></asp:TextBox>                               
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxUsername" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="[A=Z][a-zA-z]+" ControlToValidate="TextBoxUsername" runat="server"   ErrorMessage="Can not be null" ForeColor="Red"></asp:RegularExpressionValidator>

                             <asp:Label ID="PasswordLabel" runat="server" Text="Password" CssClass="form-lable"></asp:Label>               
                                 <asp:TextBox ID="LoginPasswordTextBox" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                             <br />
                                 <asp:Button ID="Button3tire" runat="server" OnClick="Button3tire_Click" Text="Login" CssClass="btn btn-outline-dark" />
                                 <br />                              
                                   <!--  <asp:Label ID="successful" runat="server" Text=""></asp:Label>
                                    <br />
                                    <asp:Label ID="notsuccessful" runat="server" Text=""></asp:Label>
                                   -->
                                    <br />                       
                                     
                         </div>
                     </div> 

                     </div>
</asp:Content>
