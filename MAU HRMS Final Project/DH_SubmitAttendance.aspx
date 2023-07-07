<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DH_SubmitAttendance.aspx.cs" Inherits="MAU_HRMS_Final_Project.DH_SubmitAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-lg my-5 shadow-lg justify-content-center align-items-center" style="border-style:double;padding-left:2em; padding-bottom:2em; padding-top:2em">
          <center> <span><img src="images/Attendance.jpg" height="80" width="80"  /><span class="fw-bold display-6 text-center">Submit Attendance </span></span><hr /></center>  
             <div class="form-horizontal table-bordered">
           <br />
         <br />
                 <center>
        <div class="form-group">
            <div class="col-md-3"></div>
                <div class="col-lg-6">
    <label class=" form-control fw-bold" for="exampleInputFile" >Upload Employee Attendance sheet</label>
                    <br />
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="400" CssClass="form-control" ToolTip="Select Excel File" />              
  </div>
            </div>
        <div class="form-group">
            <div class="col-md-3"></div>
                <div class="col-lg-2">
                    <br />
                    <asp:Button ID="btnUpload" CssClass="btn btn-outline-dark" runat="server" Text="Upload" OnClick="btnUpload_Click" />
  </div>
            </div>
        <div class="form-group">
            <div class="col-md-3"></div>
                <div class="col-lg-6">
                    
                    <asp:Label ID="Label1" runat="server" CssClass="btn-success" Text=""></asp:Label>
  </div>
            </div>
       </center>   
             </div>
     
        
         </div>

</asp:Content>
