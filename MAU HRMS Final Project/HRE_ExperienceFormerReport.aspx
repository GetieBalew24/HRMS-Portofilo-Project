<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_ExperienceFormerReport.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_ExperienceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                 <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
                 <center> <span><img src="images/experience.png" height="80" width="80"  /><span class="fw-bold display-6 text-center"> Experience Report</span></span><hr /></center>

                     <asp:TextBox ID="txt_empid" runat="server" PlaceHolder="Employee Id" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt_empid" runat="server" ErrorMessage="Enter employee ID"></asp:RequiredFieldValidator>

                     <br />
                     <asp:Button ID="Button1" runat="server" Text="Generate Report" CssClass="btn btn-outline-dark" OnClick="Button1_Click"  />
                     <br />
       <script type="text/javascript" src="jq.js"></script>
       <script type="text/javascript">
        $("#btn").live("click", function () {
            var divContents = $("#SLIP").html();
            var printWindow = window.open('', '', 'height=470,width=295');

            printWindow.document.write(divContents);

            printWindow.document.close();
            printWindow.print();
        });
        $("#search").live("click", function () {
            var id = $(".empid").val();

            $(".con").hide("slow");
        });
        $("#clear").live("click", function () {
            var id = $(".empid").val();


            $(".con").show("slow");



        });
        function btn_onclick() {

        }

                      </script>
                     <div id="SLIP" class="container-lg my-5 shadow-lg justify-content-center align-items-center w-75" Visible="false" >
                 <center>  <h5 class="fw-bold "> Experience Letter<br /></h5> <hr /> </center>

                     <asp:Label ID="name" runat="server" Text="" CssClass="fw-bold"></asp:Label>
                          
                         <br />

                     <asp:Label ID="Label2" runat="server" Text="It is to certify that"></asp:Label>
                     <asp:Label ID="Empnames" runat="server" Text="Label"></asp:Label>
                     <asp:Label ID="Label4" runat="server" Text="was employed as "></asp:Label>
                     <asp:Label ID="Position" runat="server" Text="Label"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text="in the department of "></asp:Label>
                     <asp:Label ID="dept" runat="server" Text="Label"></asp:Label>
                     <asp:Label ID="Label8" runat="server" Text="from"></asp:Label>
                     <asp:Label ID="idebymau" runat="server" Text="Label"></asp:Label>
                     <asp:Label ID="Label10" runat="server" Text="to"></asp:Label>
                     <asp:Label ID="lde" runat="server" Text="Label"></asp:Label>
                         <br />
                         <asp:Label ID="emp" runat="server" Text="Label"></asp:Label>
                         <asp:Label ID="Label3" runat="server" Text="has"></asp:Label>
                         <asp:Label ID="Achivements" runat="server" Text="Label"></asp:Label>
                       
                         <br />
                          <asp:Label ID="Label1" runat="server" Text="We are sure that thier passionand dedication will help them excel in whatever they choose to do in thier life. They have shown
                              high level of commitment throughout thier time with Mekdela Amba University"></asp:Label>
                         <br />
                         <asp:Label ID="Label5" runat="server" Text="We wish all the best for thier future. "></asp:Label>
                         <br />
                         <asp:Label ID="Label9" runat="server" Text="Sincerly,"></asp:Label><br />
                         <asp:Label ID="Label11" runat="server" Text="Human Resource Officer"></asp:Label><br />
                         <asp:Label ID="hrname" runat="server" Text=""></asp:Label><br />
                         <asp:Label ID="Label12" runat="server" Text="____________________________"></asp:Label>
                         <br />
                         </div>
            <center>  <input type="button" class="btn btn-info" value="Print" id="btn" onclick="return btn_onclick()" />      </center>            

                 </div>
</asp:Content>
