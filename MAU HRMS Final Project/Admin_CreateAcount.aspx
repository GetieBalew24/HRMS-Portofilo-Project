<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_CreateAcount.aspx.cs" Inherits="MAU_HRMS_Final_Project.Admin_CreateAcount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
        <center>              
                 <center> <span><img src="images/images.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Create Account</span></span><hr /></center>
            
            <asp:Label ID="Label4" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" CssClass="btn btn-outline-dark" CausesValidation="false" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxID" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
          
            <asp:Label ID="Username" runat="server" Text="Username" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Password" runat="server" Text="Password" ></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
           
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Role"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Employee</asp:ListItem>
                <asp:ListItem>Department Head</asp:ListItem>
                <asp:ListItem>College Dean</asp:ListItem>
                <asp:ListItem>Administrator vice President</asp:ListItem>
                <asp:ListItem>Academic vice President</asp:ListItem>
                <asp:ListItem>President</asp:ListItem>
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Human Resource Employee</asp:ListItem>
                <asp:ListItem>Training and Skill Development Employee</asp:ListItem>

            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
            
            <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Deactive</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Can Not Be Null" ForeColor="Red"></asp:RequiredFieldValidator>

            <hr />
            <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" CssClass="btn btn-outline-dark" />
            </center>
</div>
</asp:Content>
