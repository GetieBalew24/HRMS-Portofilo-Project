<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_ContractRenewal.aspx.cs" Inherits="MAU_HRMS_Final_Project.Employee_ContractRenewal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
     <h4 class="fw-bold display-6 text-center">Request Contract Renewal</h4>  <hr />                   
            <div class="row my-5 justify-content-around align-items-center">
               <div class="col-7 col-lg-4">

                <asp:Label ID="Label2" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="JBTitleTextBox" runat="server" CssClass="form-control" placeholder="eg. EMP0000"></asp:TextBox>
                         
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="JBTitleTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="JBTitleTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="^^[A-Za-z0-9]+"></asp:RegularExpressionValidator>  
                     <br /> 
                        <asp:Label ID="Label1" runat="server" Text="Reason" CssClass="form-label"></asp:Label>                           
                        <asp:TextBox ID="JBDescriptionTextBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JBDescriptionTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="JBDescriptionTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="[A-Z][a-zA-Z0-9\s]+"></asp:RegularExpressionValidator>
                      <br />  
                 <div class="col-11 ">
                 <asp:Label ID="Label3" runat="server" Text="Request Date" CssClass="form-label"></asp:Label>                                             
                 <asp:Label ID="LabelPostedDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                </div>
                   <br />    
               <asp:Button ID="NewJobPost" runat="server" Text="Submit" CssClass="btn btn-outline-dark" OnClick="NewJobPost_Click"  />
                   
                      </div>
                </div>
             </div>
</asp:Content>
