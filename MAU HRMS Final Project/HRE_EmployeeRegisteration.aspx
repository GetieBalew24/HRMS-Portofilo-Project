<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_EmployeeRegisteration.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_EmployeeRegisteration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center " style="border-style:double;padding-left:2em"">
                         <h4 class="fw-bold display-6 text-center">Register Employee Information</h4>                  
                     <div class="row my-5 justify-content-around align-items-center">
                             <div class="col-md-3">
                                 <center>
                                     <asp:Label ID="Label25" runat="server" Text="" Font-Bold="True" BackColor="#3399FF"></asp:Label></center>
                             <asp:Label ID="Label23" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>                                
                             </div>
                             <div class="col-md-3">
                             <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxFN" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxFN" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBoxFN" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>
                             <br />
                             </div>    
                           <div class="col-md-3">
                             <asp:Label ID="Label2" runat="server" Text="Middle Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxMN" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxMN" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBoxMN" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>
                         <br />
                             </div>
                             <div class="col-md-3">
                             <asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxLN" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBoxLN" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBoxLN" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z]+"></asp:RegularExpressionValidator>
                         <br />
                             </div>                       
                             <div class="col-md-3">
                             <asp:Label ID="Label4" runat="server" Text="Date of Birth" CssClass="form-label" ></asp:Label>
                             <asp:TextBox ID="TextBoxDOB" runat="server" TextMode="Date" CssClass="form-control" ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBoxDOB" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>

                                 </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label13" runat="server" Text="Birth Place" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="TextBox1" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
                               <br />
                          </div>
                         <div class="col-md-3">
                             Sex                            
                              <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-control" RepeatDirection="Horizontal">
                                 <asp:ListItem>Female&nbsp;</asp:ListItem>
                                 <asp:ListItem>Male</asp:ListItem>                                
                             </asp:RadioButtonList>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                               </div>                              
                          <div class="col-md-3">
                             <asp:Label ID="Label6" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control " TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBoxEmail" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>

                              </div>
                         <div class="col-md-3 ">     
                             <asp:Label ID="Label22" runat="server" Text="Stream"></asp:Label>                  
                             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                 <asp:ListItem></asp:ListItem>
                                 <asp:ListItem >Accademic</asp:ListItem>
                                 <asp:ListItem>Administration</asp:ListItem>
                             </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>

                             </div>
                          <div class="col-md-3">
                                <asp:Label ID="Label7" runat="server" Text="Position" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox6" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="TextBox6" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
                               
                              </div>                             
                         <div class="col-md-3">
                              <asp:Label ID="Label14" runat="server" Text="Region" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="TextBox2" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>                            
                             </div>                        
                         <div class="col-md-3">
                              <asp:Label ID="Label15" runat="server" Text="Zone" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox3" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox3" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>                            
                  
                             </div>
                         <div class="col-md-3">
                              <asp:Label ID="Label16" runat="server" Text="Kebele" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TextBox4" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="TextBox4" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Za-z0-9\s]+"></asp:RegularExpressionValidator>                                              
                             </div>
                         <div class="col-md-3">
                              <asp:Label ID="Label17" runat="server" Text="House Number" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="TextBox11" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="TextBox11" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>                            
                  
                             </div>
                         <div class="col-md-3">
                              <asp:Label ID="Label21" runat="server" Text="Phone Number" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="TextBox13" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                  
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label8" runat="server" Text="Instisution Studied" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TextBox7" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="TextBox7" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Za-z0-9\s]+"></asp:RegularExpressionValidator>                                              
                            
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label9" runat="server" Text="Field of Study" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="TextBox8" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="TextBox8" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[A-Za-z0-9\s]+"></asp:RegularExpressionValidator>                                              
                            
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label5" runat="server" Text="Diploma Awarded " CssClass="form-label"></asp:Label>
                              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                  <asp:ListItem></asp:ListItem>
                                 <asp:ListItem>Diploma</asp:ListItem>
                                  <asp:ListItem>Degree</asp:ListItem>
                                  <asp:ListItem>Masters</asp:ListItem>
                                  <asp:ListItem>PHD</asp:ListItem>
                                  <asp:ListItem>Certificate</asp:ListItem>
                             </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="DropDownList2" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label10" runat="server" Text="Initial Date of Employment" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" TextMode="Date"> </asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="TextBox9" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label11" runat="server" Text="Initial Date of Employment By MAU" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="TextBox10" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>

                             </div>
                             <div class="col-md-3">                               
                             <asp:Label ID="Label12" runat="server" Text="Department" CssClass="form-label"></asp:Label>

                                 <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="DropDownList5" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                            
                             </div>
                             <div class="col-md-3">
                             <asp:Label ID="Label18" runat="server" Text="Salary" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"  ></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="TextBox12" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator14" ControlToValidate="TextBox12" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" ValidationExpression="[1-9][0-9]+[.]?[0-9]+[1-9]*"></asp:RegularExpressionValidator>                                              
                            
                                 </div>
                          <div class="col-md-3">
                             <asp:Label ID="Label19" runat="server" Text="Martial Status" CssClass="form-label"></asp:Label>
                              <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem>Married</asp:ListItem>
                                  <asp:ListItem>Unmarried</asp:ListItem>
                                  <asp:ListItem>Divorced</asp:ListItem>
                                  <asp:ListItem>Widowed</asp:ListItem>
                              </asp:DropDownList>   
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="DropDownList3" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>
     
                                 </div>
                          <div class="col-md-3">
                             <asp:Label ID="Label20" runat="server" Text="Number Of Children" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" TextMode="Number" min="0" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="TextBox14" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator> 
                              </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label24" runat="server" Text="Job Status" CssClass="form-label"></asp:Label>
                              <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem>Regular</asp:ListItem>
                                  <asp:ListItem>Contract</asp:ListItem>       
                              </asp:DropDownList>                                  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="DropDownList4" runat="server" ErrorMessage="Please insert value" ForeColor="Red" ></asp:RequiredFieldValidator>                          
                                 </div>    
                           <hr />
                          <center>  <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClick="Button1_Click"  />
                             <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-outline-dark" OnClick="Button2_Click" OnClientClick="javascript:confirm('Are you Sure');" />
                          </center>         
                      </div>
        
        </div>
</asp:Content>