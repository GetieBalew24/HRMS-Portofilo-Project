using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
using BLL_HRMS;
using System.Net;

namespace MAU_HRMS_Final_Project
{
    public partial class HRE_SelectAppllicant : System.Web.UI.Page
    {
        DataClasses1DataContext select = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }


       


        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            String flocation = GridView1.Rows[rowindex].Cells[1].Text;
            String fpath = Server.MapPath(flocation);
            WebClient user = new WebClient();
            Byte[] FileBuffer = user.DownloadData(fpath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
    }
}