<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MAU_HRMS_Final_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
          <asp:Label ID="lblUsername" runat="server" Text="[username]"></asp:Label>
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Wellcome to Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_username" runat="server" placeholder="Username"></asp:TextBox>
                           <asp:Label ID="lblvalUN" runat="server" ForeColor="Red" Text="*"></asp:Label>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                               <asp:Label ID="lblValPass" runat="server" ForeColor="Red" Text="*"></asp:Label>
                             <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblConfirm" runat="server" ForeColor="Red" Text="[validate]"></asp:Label>
    <br />
                            </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-outline-dark"  ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click1" />&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button class="btn btn-outline-danger " ID="btn_cancel" runat="server" Text="Cancel" CausesValidation="false" OnClick="btn_cancel_Click" />
                            <a href="ForgetPassword.aspx" class="btn btn-outline-danger">ForgetPassword.aspx</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</asp:Content>
