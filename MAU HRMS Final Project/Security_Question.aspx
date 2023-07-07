<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Security_Question.aspx.cs" Inherits="MAU_HRMS_Final_Project.Security_Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
          <center> <span><img src="images/Security%20question.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Add Security Question and answer </span></span><hr /></center> 
        <center> <h5>Adding security question and answer will help you if you forget your password </h5></center> 
               <center>
           <asp:Label ID="Label2" runat="server" Text="Username" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="JBTitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>                  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="JBTitleTextBox" ErrorMessage=" Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Security question" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="JBDescriptionTextBox" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JBDescriptionTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="JBDescriptionTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Security Answer" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="^[A-Z][A-Za-z0-9\s]+"></asp:RegularExpressionValidator>
            <br />
                   <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-outline-dark" OnClick="Button1_Click"/>
               </center>
             </div>    
</asp:Content>