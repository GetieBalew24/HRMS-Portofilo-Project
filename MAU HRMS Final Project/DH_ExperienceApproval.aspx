<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DH_ExperienceApproval.aspx.cs" Inherits="MAU_HRMS_Final_Project.DH_ExperienceApproval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">             
                 <center> <span><img src="images/approval.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Approve Experience</span></span><hr /></center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="408px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" SortExpression="Employee_Id" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
                <asp:BoundField DataField="DH_Approval" HeaderText="DH_Approval" SortExpression="DH_Approval" />
            </Columns>

        </asp:GridView>
        
        
                    
        
                    
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>" SelectCommand="SELECT [Id], [Employee_Id], [Reason], [RequestDate], [DH_Approval] FROM [TBL_ExperienceRequest]"></asp:SqlDataSource>
        
        
                    
        
                    
            </div>
</asp:Content>
