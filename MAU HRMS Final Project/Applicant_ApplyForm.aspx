<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Applicant_ApplyForm.aspx.cs" Inherits="MAU_HRMS_Final_Project.Applicant_ApplyForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
         <center> <span><img src="images/jobapplicant.jpg" width="100" height="100" /><span class="fw-bold display-6 text-center">Applicaton Form</span></span><hr />    </center>    
          <div class="container">
                     <div class="row my-5 justify-content-around align-items-center">                      
                             <div class="col-3">
                             <asp:Label ID="Label8" runat="server" Text="Post Number" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Post number of JobPost"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox2" ValidationExpression="[0-9]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /></div><div class="col-3">
                              <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="form-label"></asp:Label>
                              <asp:TextBox ID="TextBoxFN" runat="server" placeholder="eg. Seid" CssClass="form-control"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBoxFN" ValidationExpression="[A-Z][a-zA-Z]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /> </div><div class="col-3">
                             <asp:Label ID="Label2" runat="server" Text="Middle Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxMN" runat="server" CssClass="form-control" placeholder="eg. Kassahun"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBoxMN" ValidationExpression="[A-Z][a-zA-Z]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMN" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /> </div><div class="col-3">
                             <asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="TextBox1" ValidationExpression="[A-Z][a-zA-Z]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /> </div>
                         <div class="col-3">
                            Sex                            
                              <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-control" RepeatDirection="Horizontal">
                                 <asp:ListItem>Female&nbsp;</asp:ListItem>
                                 <asp:ListItem>Male</asp:ListItem>                                
                             </asp:RadioButtonList>                            
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /> </div>
                           <div class="col-3">
                           <asp:Label ID="Label5" runat="server" Text="Fielf Of Study" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="TextBox3" ValidationExpression="^[A-Z][A-Za-z\s]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red">
                             </asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /></div><div class="col-3">
                             <asp:Label ID="Label6" runat="server" Text="CGPA" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="TextBox4" ValidationExpression="([0-3].[0-9]{1,2}|4.[0-0]{1,2}|4.00)" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br /></div><div class="col-3">
                             <asp:Label ID="Label7" runat="server" Text="Experience" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox5" ValidationExpression="[A-Z][a-zA-Z0-9\s]+" runat="server" ErrorMessage="Invalid Input" ForeColor="Red"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                             <br />
                              </div>
                             <div class="col-3 ">
                             <asp:Label ID="Label4" runat="server" Text="Attach Your CV Here " CssClass="form-label"></asp:Label>                                                   
                             <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control"/></div> 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Can not be empty"  ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                         <center>
                            <asp:Button ID="Button1" runat="server" Text="Apply" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />  
                            
                            <asp:Button ID="Button2" runat="server"  Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="Button2_Click" />

                        </center>     
                     </div>         
                </div>
                         

</asp:Content>
