<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_MenuRegistration.aspx.cs" Inherits="MAU_HRMS_Final_Project.Admin_MenuRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Add Menu</h3><hr />
          <asp:Label ID="Label2" runat="server" Text="Parent Menu" CssClass="form-label"></asp:Label>
          <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True">
              <asp:ListItem>Root</asp:ListItem>

          </asp:DropDownList>
           
            <br />
            <asp:Label ID="Label1" runat="server" Text="Menu Name" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="JBDescriptionTextBox" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JBDescriptionTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            
            <asp:Label ID="Label4" runat="server" Text="Link " CssClass="form-label"></asp:Label>
            <asp:TextBox ID="JBEmployee_IDTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="JBEmployee_IDTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="^[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="NewJobPost" runat="server" Text="Save" CssClass="btn btn-outline-dark" OnClick="NewJobPost_Click"  OnClientClick="javascript:confirm('Are you Sure');"/>
            <asp:Button ID="Button2" runat="server"  Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="Button2_Click" />


          </div>
</asp:Content>
