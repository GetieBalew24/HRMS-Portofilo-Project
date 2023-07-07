<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_ManageCollage.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_ManageCollage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
           <h3 class="display-5 fw-bold ">Manage Collage</h3><hr />
           
          
          <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="true" AutoGenerateColumns="False"  CssClass="table table-bordered table-condensed table-responsive table-hover" DataKeyNames="Collage_Id" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="Collage_Id" HeaderText="Collage_Id" ReadOnly="True" SortExpression="Collage_Id" />
                  <asp:BoundField DataField="College_Name" HeaderText="College_Name" SortExpression="College_Name" />
                  <asp:BoundField DataField="College_Location" HeaderText="College_Location" SortExpression="College_Location" />
                 
                  </Columns>
          </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>" SelectCommand="SELECT * FROM [TBL_Collage]"
                           UpdateCommand="UPDATE TBL_Collage set [College_Name]=@College_Name, [College_Location]=@College_Location where [Collage_Id]=@Collage_Id "
></asp:SqlDataSource>
       </div>
</asp:Content>
