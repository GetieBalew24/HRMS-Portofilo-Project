<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TSD_AddTraining.aspx.cs" Inherits="MAU_HRMS_Final_Project.TSD_AddTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-lg my-5 shadow-lg justify-content-center align-items-center " style="border-style:double;padding-left:2em"">
                 <center> <span><img src="images/training.jpeg" height="80" width="80"  /><span class="fw-bold display-6 text-center">  Add Training</span></span><hr /></center>
         <center>
             
                   <div class="col-8">
     <asp:Label ID="Label2" runat="server" Text="Title" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="JBTitleTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="JBTitleTextBox" ErrorMessage="Title can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="JBTitleTextBox" runat="server" ErrorMessage="Please enter valid title" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z\s]+"></asp:RegularExpressionValidator>
             <br />
                      <asp:Label ID="Label1" runat="server" Text="Description" CssClass="form-label"></asp:Label>                           
                <asp:TextBox ID="JBDescriptionTextBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JBDescriptionTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="JBDescriptionTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="[A-Z][A-Za-z0-9\s]+"></asp:RegularExpressionValidator>
                      <br /> 
                       <div class="col-3">
                 <asp:Label ID="Label3" runat="server" Text="Posted Date" CssClass="form-label"></asp:Label>                                             
                <asp:Label ID="LabelPostedDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                </div>
                 <asp:Label ID="Label4" runat="server" Text="Your Employee_ID " CssClass="form-label"></asp:Label>                                                                               
                <asp:TextBox ID="JBEmployee_IDTextBox" runat="server"  CssClass="form-control"></asp:TextBox>   
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="JBEmployee_IDTextBox" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="JBEmployee_IDTextBox" runat="server" ErrorMessage="Please enter valid input" ForeColor="Red" ValidationExpression="[A-za-z0-9]+"></asp:RegularExpressionValidator>
                      <br />    
                       </div>
               <asp:Button ID="NewJobPost" runat="server" Text="Post" CssClass="btn btn-outline-dark" OnClick="NewPost_Click" OnClientClick="javascript:confirm('Are you Sure');"  />
             <asp:Button ID="Button2" runat="server"  Text="Reset " CssClass="btn btn-outline-danger" CausesValidation="false" OnClick="Button2_Click" />

             </center>
              </div>
        
</asp:Content>
