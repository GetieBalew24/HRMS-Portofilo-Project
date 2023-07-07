<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_RequestExperience.aspx.cs" Inherits="MAU_HRMS_Final_Project.Employee_RequestExperience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
      <h4 class="fw-bold display-6 text-center">Request Experience</h4>   <hr />                  
            <div class="row my-5 justify-content-around align-items-center">
               <div class="col-8 col-lg-4">

                <asp:Label ID="Label2" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="JBTitleTextBox" runat="server" placeholder="eg. EMP0000" CssClass="form-control"></asp:TextBox>
                         
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="JBTitleTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /> 
                        <asp:Label ID="Label1" runat="server" Text="Reason" CssClass="form-label"></asp:Label>                           
                        <asp:TextBox ID="JBDescriptionTextBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JBDescriptionTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[A-Z][a-zA-Z0-9\s]+" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                   <br />   
                    <div class="col-11 ">
                     <asp:Label ID="Label3" runat="server" Text="Request Date" CssClass="form-label"></asp:Label>                                             
                     <asp:Label ID="LabelPostedDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                  </div>
                        <br />    
               <asp:Button ID="NewJobPost" runat="server" Text="Submit" CssClass="btn btn-outline-dark" OnClick="NewJobPost_Click"  />
                   <asp:Button ID="Button2" runat="server"  Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="Button2_Click" />

                   
                      </div>
                </div>
             </div>
</asp:Content>
