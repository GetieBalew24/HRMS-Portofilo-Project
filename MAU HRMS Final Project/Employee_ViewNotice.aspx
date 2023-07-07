<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_ViewNotice.aspx.cs" Inherits="MAU_HRMS_Final_Project.Employee_ViewNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
 <center><span><img src="images/hiring.jpg" height="80" width="80" /><span class="fw-bold display-6 text-center">Posts</span></span></center>             
    <hr />
    <div>
        <asp:Repeater ID="NoticePostRepeateHRE" runat="server">
        <ItemTemplate>
            <hr />
            <h4 class=" fw-bold"><%#Eval("NTitle") %> </h4>
            <hr />
            <p class="card-text">
                <%#Eval("NDescription") %>
            </p>
            <div class="card-footer text-muted">
                Posted on: <%#Eval("NPostedDate") %> Location : <%#Eval("NLocation") %> 
                <br />             
                <hr  />
            </div>
        </ItemTemplate>
        </asp:Repeater>
        <hr  />
    </div>
     </div>
</asp:Content>
