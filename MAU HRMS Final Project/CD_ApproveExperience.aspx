<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CD_ApproveExperience.aspx.cs" Inherits="MAU_HRMS_Final_Project.CD_ApproveExperience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">             
                 <center> <span><img src="images/approval.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Approve Experience</span></span><hr /></center>
          <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-responsive table-hover" AutoGenerateColumns="False" >
              <Columns>
                  <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" SortExpression="Employee_Id" />
                  <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                  <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
                   <asp:TemplateField>
               <ItemTemplate>
                   <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem Value="1">Approve</asp:ListItem>
                       <asp:ListItem Value="0">Reject</asp:ListItem>
                   </asp:DropDownList>
               </ItemTemplate>
           </asp:TemplateField>
              </Columns>
                 </asp:GridView>
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


          </div>
</asp:Content>
