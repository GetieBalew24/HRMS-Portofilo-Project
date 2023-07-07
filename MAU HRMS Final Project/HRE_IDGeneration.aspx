<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HRE_IDGeneration.aspx.cs" Inherits="MAU_HRMS_Final_Project.HRE_IDGeneration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em">
  <div class="form-horizontal ">

        <asp:Label ID="label" runat="server" ForeColor="#FF3300"></asp:Label>
        <table style="width: 100%">
            <tr>
                <td colspan="3">
                      <div class="form-group">
           <center> <span><img src="images/Id.png" height="100" width="100"  /><span class="fw-bold display-6 text-center">Employee ID</span></span><hr /></center>

                          </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">

                        <div class="col-md-4">
                            <asp:TextBox ID="txt_empid" runat="server" PlaceHolder="Employee Id" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_empid" runat="server" ErrorMessage="Please Enter Employee ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">

                        <div class="col-md-4">
                                    </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Profile Picture" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FileUpload1" runat="server" ErrorMessage="You Do Not select a Photo " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="Generate ID" Width="102px" OnClick="Button1_Click" OnClientClick="javascript:confirm('Are you Sure');" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
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
    
    <div id="SLIP"  >
        <div class="form-horizontal">

            <table style="background-image: url('uploads/EMP1bag.PNG'); width:39%; ">
                <tr>
                    <td colspan="2">

                <asp:Image ID="Image2" runat="server" CssClass="img-responsive w-100 "/>
                          
                    </td>
                </tr>
           
                <tr>
                    <td rowspan="5" style="width: 110px">
                                <asp:Image ID="Image1" runat="server" CssClass="img-rounded" Width="200" Height="200" />
                         

                    </td>
                    <td style="width: 481px">
                        
                                <h4 class="">
                                    <i><asp:Label ID="name" runat="server" ForeColor="Black"></asp:Label></i></h4>
                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 481px">
                       
                                <h5 class="">
                                    <asp:Label ID="dept" runat="server" ForeColor="Black"></asp:Label></h5>
                     

                    </td>
                </tr>
                <tr>
                    <td style="width: 481px">
                        <%--<div class="form-group">--%>
                            <%-- <div class="col-md-2" style="width: 247px;">--%>
                            <h5 class="">
                                <asp:Label ID="under" runat="server" ForeColor="Black"></asp:Label></h5>
                            <%--</div>--%>
                      <%--  </div>--%>
                    </td>
                </tr>
                <tr>
                    <td style="width: 481px">
                        <%--<div class="form-group">--%>
                            <%-- <div class="col-md-2" style="width:247px;">--%>
                            <h5 class="">
                                <asp:Label ID="valid" runat="server" ForeColor="Black"></asp:Label></h5>
                            <%--</div>--%>
                      <%--  </div>--%>
                    </td>
                </tr>
                <tr>
                    <td style="width: 481px">
                        <%--<div class="form-group">--%>
                            <%-- <div class="col-md-2" style="width:247px;">--%>
                            <h5 class="">
                                <asp:Label ID="id" runat="server" ForeColor="Black"></asp:Label></h5>
                            <%--</div>--%>
                        <%--</div>--%>
                    </td>
                </tr>
                <tr>
                    <td style="width: 110px">

                        <h5 class="btn-default">
                            <asp:Label ID="pbox" runat="server" ForeColor="Black"></asp:Label></h5>

                    </td>
                    <td style="width: 481px">
                        <h5 class="btn-default">
                            <asp:Label ID="dire" runat="server" ForeColor="Black"></asp:Label></h5>
                    </td>
                </tr>
            </table>

        </div>
    </div>
                 <br />
    <input type="button" class="btn btn-info" value="Print" id="btn" onclick="return btn_onclick()" /><br />
                 </div>
</asp:Content>
