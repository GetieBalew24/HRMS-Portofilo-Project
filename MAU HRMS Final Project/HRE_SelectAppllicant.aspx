<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_SelectAppllicant.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_SelectAppllicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
           <center> <span><img src="images/selectapplicant.jpeg" height="80" width="80"  /><span class="fw-bold display-6 text-center">Select Applicants</span></span><hr /></center>            
              <asp:GridView ID="GridView1" runat="server"  CssClass="table table-bordered table-condensed table-responsive table-hover" AutoGenerateColumns="False"  DataKeyNames="Applicant_Id" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:BoundField DataField="Applicant_Id" HeaderText="Applicant_Id" InsertVisible="False" ReadOnly="True" SortExpression="Applicant_Id" />
                      <asp:BoundField DataField="CV" HeaderText="CV" SortExpression="CV" />
                      <asp:BoundField DataField="JobPost_Id" HeaderText="JobPost_Id" SortExpression="JobPost_Id" />
                      <asp:BoundField DataField="HRE_Approval" HeaderText="HRE_Approval" SortExpression="HRE_Approval" />
                <asp:TemplateField HeaderText="View CV">
                    <ItemTemplate >
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">View CV</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:CheckBox ID="CheckBox1" runat="server" />
                          </ItemTemplate>
                      </asp:TemplateField>
                      </Columns>

              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MAUHRMS_DBConnectionString %>" SelectCommand="SELECT [Applicant_Id], [CV], [JobPost_Id], [HRE_Approval] FROM [TBL_Applicant]"></asp:SqlDataSource>
</div>
</asp:Content>
