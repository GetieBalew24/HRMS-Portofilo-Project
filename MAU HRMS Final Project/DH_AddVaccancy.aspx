<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DH_AddVaccancy.aspx.cs" Inherits="MAU_HRMS_Final_Project.DH_AddVaccancy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
      <h4 class="fw-bold display-6 text-center">Submit vaccancy </h4> <hr />                 
                     <div class="row my-5 justify-content-around align-items-center">
                         <div class="col-6 col-lg-4">
                             <asp:Label ID="Label1" runat="server" Text="Department Name" CssClass="form-label"></asp:Label>
                                 <asp:DropDownList ID="REDropDownDepartment" runat="server" CssClass="form-control" >
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>   
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="REDropDownDepartment" runat="server" ErrorMessage="You should select" ForeColor="Red"></asp:RequiredFieldValidator>  
                             <br />
                             <asp:Label ID="Label2" runat="server" Text="Criteria" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="CriteriaTextBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="CriteriaTextBox" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="CriteriaTextBox"  ValidationExpression="[A-Z][a-zA-Z0-9\s]+" ForeColor="Red" runat="server" ErrorMessage="Incorrect Input"></asp:RegularExpressionValidator>
                             <br />
                             <asp:Label ID="Vaccancies" runat="server" Text="Number of Vaccancies" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="NoVaccTextBox" runat="server" CssClass="form-control" TextMode="Number" min="1"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="NoVaccTextBox" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="col-11 ">
                             <asp:Label ID="Label3" runat="server" Text="Date"  CssClass="form-label"></asp:Label>
                             <asp:Label ID="LabelDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                             </div>
                             <asp:Label ID="Label4" runat="server" Text="Employee ID" CssClass="form-label"></asp:Label>
                             <asp:TextBox ID="EmpIDTextBox"  placeholder="Enter employee Id" runat="server" CssClass="form-control"></asp:TextBox>  
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="EmpIDTextBox" runat="server" ErrorMessage="Can not be null" ForeColor="Red"></asp:RequiredFieldValidator>   
                             <br />
                             <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-outline-dark" OnClick="Button1_Click"  />  
                             <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-outline-dark" CausesValidation="false" />         
                   </div>
              </div>
           </div>
</asp:Content>
