<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_ViewTraining.aspx.cs" Inherits="MAU_HRMS_Final_Project.Employee_ViewTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
    <center><span><img src="images/download%20(4).jpg" height="80" width="80" /><span class="fw-bold display-6 text-center">Training Posts</span></span></center>             
       <hr />
      
    <div>
        <asp:Repeater ID="PostRepeateHRE" runat="server">
        <ItemTemplate>
            <hr />
        <center><h4 class=" fw-bold"><%#Eval("Training_Title") %> </h4></center>    
            <hr />
            <p class="card-text">
                <%#Eval("Training_Description") %>
            </p>
            <div class="card-footer text-muted">
                Posted on: <%#Eval("PostedDate") %> 
                <br />             
                <hr  />
            </div>

        </ItemTemplate>
        </asp:Repeater>
        <hr  />
    </div>

     </div>
</asp:Content>
