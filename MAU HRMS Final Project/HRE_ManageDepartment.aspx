﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_ManageDepartment.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_ManageDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">      
      <center>  
        
           <center><h3 class="display-5 fw-bold ">List of Department</h3></center>
             <hr />
        <asp:GridView ID="GridView1"  CssClass="table table-bordered table-condensed table-responsive table-hovers" runat="server" AutoGenerateColumns="False" DataKeyNames="Dept_Id" DataSourceID="viewDept" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true">           
            <Columns>
                <asp:BoundField DataField="Dept_Id" HeaderText="Dept_Id" InsertVisible="False" ReadOnly="True" SortExpression="Dept_Id" />
                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                <asp:BoundField DataField="College_Id" HeaderText="College_Id" SortExpression="College_Id" />
               
                    
                
            </Columns>
            <HeaderStyle BackColor="#999999" />
        </asp:GridView>
        <asp:SqlDataSource ID="viewDept" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>" SelectCommand="SELECT * FROM [TBL_Department]"
            UpdateCommand="UPDATE TBL_Department set [Dept_Name]=@Dept_Name, [College_Id]=@College_Id where [Dept_Id]=@Dept_Id "
            DeleteCommand="DELETE from  TBL_Department where Dept_Id=@Dept_Id"></asp:SqlDataSource>
      
          </div>
</asp:Content>