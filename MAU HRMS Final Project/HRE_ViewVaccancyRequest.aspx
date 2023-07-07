<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_ViewVaccancyRequest.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_ViewVaccancyRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
     <center><span class="fw-bold display-6 text-center">Vaccancy Annoucements</span></center>  <hr /> 
     <asp:Repeater ID="vaccRepeater" runat="server">
        <ItemTemplate>
            <h4 class="fw-bold">Department of: <%#Eval("Dept") %> </h4>
            <p class="card-text">
               <%#Eval("Criteria") %>
            </p>
            <p class="bg-light">
               Number of vaccancy: <%#Eval("NoVaccancy") %>
            </p>
            <div class="card-footer text-muted">
                Request submitted on: <%#Eval("Date") %> 
                <br />
                 <hr  />
            </div>
        </ItemTemplate>
        </asp:Repeater>
        <hr  />
    </div>
</asp:Content>
