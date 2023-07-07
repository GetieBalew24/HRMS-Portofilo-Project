<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MAU_HRMS_Final_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 id="title"><%: Title %>.</h2>
      <div id="abc"> hello sir</div>
    <asp:Button ID="Button1" runat="server" Text="Print" onclick = "JavaScript:printPartOfPage('abc');" />
    
    <script type="text/javascript">  
      
 
function printPartOfPage(elementId) {  
var printContent = document.getElementById(elementId);  
var windowUrl = 'about:blank';  
var uniqueName = new Date();  
var windowName = 'Print' + uniqueName.getTime();  
var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');  
printWindow.document.write(printContent.innerHTML);  
printWindow.document.close();  
printWindow.focus();  
printWindow.print();  
printWindow.close();  
}  
    </script>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
     
</asp:Content>
