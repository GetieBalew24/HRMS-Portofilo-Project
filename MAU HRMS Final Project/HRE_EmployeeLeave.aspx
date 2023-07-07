<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_EmployeeLeave.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_EmployeeLeave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
                 <center> <span><img src="images/Leave.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Employee Leave</span></span><hr /></center>

                     <div class="row my-5 justify-content-around align-items-center" >
                        
                            <div class="col-md-6">                                 
                             <asp:Label ID="Label5" runat="server" Text="Employee Id" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server" placeholder="eg.EMP0000" CssClass="form-control"></asp:TextBox><br />
                             <asp:Button ID="Button4" runat="server" CssClass="btn btn-outline-info" Text="Search" OnClick="Button4_Click" />                                  
                                     </div> <hr />                                                                                              
                           
                             <div class="col-md-3">
                             <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxFN" runat="server" CssClass="form-control"></asp:TextBox>
                                 </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label2" runat="server" Text="Middle Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxMN" runat="server" CssClass="form-control"></asp:TextBox>
                             </div>
                             <div class="col-md-3">
                             <asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBoxLN" runat="server" CssClass="form-control"></asp:TextBox>
                             </div>                                                  
                         <div class="col-md-3">
                             <asp:Label ID="Label8" runat="server" Text="Sex"></asp:Label>       
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

                               </div>   
                            
                          <div class="col-md-3">
                             <asp:Label ID="Label6" runat="server" Text="Phone Number" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBo" runat="server" CssClass="form-control"></asp:TextBox>
                              </div>

                              <div class="col-md-3">
                              <asp:Label ID="Label14" runat="server" Text="Stream" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                             </div>  
                         <div class="col-md-3">
                              <asp:Label ID="Label4" runat="server" Text="Position" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                             </div>
                          <div class="col-md-3">
                                <asp:Label ID="Label7" runat="server" Text="Achivements" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                             </div>                             
                                            
                         <div class="col-md-3">
                             <asp:Label ID="Label10" runat="server" Text="Initial Date of Employment In MAU" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" TextMode="DateTime"> </asp:TextBox>
                             </div>
                         <div class="col-md-3">
                             <asp:Label ID="Label11" runat="server" Text="Last Date of Employment In MAU" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox10" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill this field" ForeColor="Red"></asp:RequiredFieldValidator>

                             </div>
                             <div class="col-md-3">                               
                             <asp:Label ID="Label12" runat="server" Text="Department ID" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ></asp:TextBox>
                             </div>
                             <div class="col-md-3">
                             <asp:Label ID="Label18" runat="server" Text="Salary" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                                 </div>                                                      
                          <div class="col-md-3">
                             <asp:Label ID="Label20" runat="server" Text="Reason of Leave" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                              <asp:RequiredFieldValidator ControlToValidate="TextBox14" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill this Field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div> 
                      </div>
                       <hr />
                             <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-outline-dark" OnClick="Button1_Click" OnClientClick="return  confirm('Are you Sure')"  />
                             <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-outline-dark" />
                                 
             </div>
         
</asp:Content>
