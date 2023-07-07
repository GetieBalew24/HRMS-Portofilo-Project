<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TSD_Deal.aspx.cs" Inherits="MAU_HRMS_Final_Project.TSD_Deal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center " style="border-style:double;padding-left:2em"">
                 <center> <span><img src="images/deal.png" height="80" width="80"  /><span class="fw-bold display-6 text-center">  Employee Deal form</span></span><hr /></center>
             
                     <div class="row my-5 justify-content-around align-items-center">
                          <div class="col-md-3">
                   <asp:Label ID="Label1" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"> </asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[Mau][a-zA-z0-9/]+"></asp:RegularExpressionValidator>

                              </div>
                         <div class="col-md-3">
                   <asp:Label ID="Label2" runat="server" Text="Training ID" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>

                             </div>
                             <div class="col-md-3">
                   <asp:Label ID="Label3" runat="server" Text="Referee First Name" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>

                                 </div>
                                 <div class="col-md-3">
                   <asp:Label ID="Label4" runat="server" Text="Referee Middle Name" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="^[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>

                                        </div>
                                     <div class="col-md-3">
                   <asp:Label ID="Label5" runat="server" Text="Referee Last Name" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="^[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>
                                            </div>
                                         <div class="col-md-3">
                                             
                   <asp:Label ID="Label6" runat="server" Text="Referee Region" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>

                                             </div>
                                             <div class="col-md-3">
                   <asp:Label ID="Label7" runat="server" Text="Referee Zone" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"> </asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>

                                                 </div>
                         <div class="col-md-3">
                   <asp:Label ID="Label8" runat="server" Text="Referee Kebele" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid input" ForeColor="Red" ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
 
                             </div>
                         <div class="col-md-3">
                   <asp:Label ID="Label9" runat="server" Text="Referee House Number" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Invalid input" ForeColor="Red" ValidationExpression="[0-9]+[a-zA-z]"></asp:RegularExpressionValidator>

                             </div>
                         <div class="col-md-3">
                   <asp:Label ID="Label10" runat="server" Text="Referee Phone Number" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Invalid input" ForeColor="Red" ValidationExpression="[a-zA-z0-9]+"></asp:RegularExpressionValidator>
                             </div>
                         <div class="col-md-3">
                <asp:Label ID="Label12" runat="server" Text="Date" CssClass="form-label"></asp:Label>                                             
                <asp:Label ID="LabelPostedDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                          </div>      
                         <div class="col-md-3">
                   <asp:Label ID="Label11" runat="server" Text="Terms and conditions" CssClass="form-label"></asp:Label>
                   <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="Invalid input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z0-9\s]+"></asp:RegularExpressionValidator>
                               
                             </div>
                         
                          <hr />             
                   </div>
                <center><asp:Button ID="Button1" runat="server" Text="Submit" CausesValidation="true" OnClick="Button1_Click" CssClass="btn btn-outline-dark" /> 
                     <asp:Button ID="Button2" runat="server"  Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="Button2_Click" />
                <br /></center>  <br />
             </div>
</asp:Content>
