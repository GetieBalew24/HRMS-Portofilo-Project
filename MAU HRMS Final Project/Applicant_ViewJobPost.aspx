<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Applicant_ViewJobPost.aspx.cs" Inherits="MAU_HRMS_Final_Project.Applicant_ViewJobPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
         <center><span><img src="images/hiring.jpg" height="80" width="80" /><span class="fw-bold display-6 text-center">Posts</span></span><hr /> </center>             
    <hr/>
    <div>
        
        <asp:Repeater ID="JobPostRepeater" runat="server">
        <ItemTemplate>
            Post Number: <b><%#Eval("JobPost_Id") %> </b>
            <hr />
            <b><%#Eval("Title") %> </b>
            <p class="card-text">
                <%#Eval("Description") %>
            </p>
            <div class="card-footer text-muted">
                Posted on: <%#Eval("PostedDate") %> Location : <%#Eval("Location") %> 
                <br />
                <a class="btn btn-outline-dark" href="Applicant_ApplyForm.aspx">APPLY</a>                
                <hr  />
            </div>
        </ItemTemplate>
        </asp:Repeater>
        
    </div>
              </div>
</asp:Content>
