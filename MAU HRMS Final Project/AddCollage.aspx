<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCollage.aspx.cs" Inherits="MAU_HRMS_Final_Project.AddCollage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Add Collage</h3><hr />
          <asp:Label ID="Label3" runat="server" Text="Collage ID"  CssClass="form-label fw-bold"></asp:Label>
        <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>
        
        <asp:Label ID="Label1" runat="server" Text="Collage Name"  CssClass="form-label fw-bold"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Can not be null" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^[A-Z][A-Za-z\s]+" ForeColor="red" ErrorMessage="Invalid Input"></asp:RegularExpressionValidator>        
        <div>
            <div class=" col-12">
        <asp:Label ID="Label2" runat="server" Text="Collage Location" CssClass="form-label fw-bold"></asp:Label>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control " runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Tuluawliya</asp:ListItem>
                <asp:ListItem>Mekaneselam</asp:ListItem>
            </asp:DropDownList> 
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Can not be null" ForeColor="red" ></asp:RequiredFieldValidator>
</div>
        </div>      
          <br />          
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" CssClass="btn btn-outline-dark" Height="37px" Width="116px" OnClientClick="javascript:confirm('Are you Sure');" />
      <br />
        </center> 
         <br />
         <hr />

        
        </div>
</asp:Content>
