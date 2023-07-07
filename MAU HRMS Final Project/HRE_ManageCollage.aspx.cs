using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class HRE_ManageCollage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9JALOF\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

      
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string collid = GridView1.Rows[rowindex].Cells[1].Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE TBL_Collage where Collage_Id='" + collid + "'", con);
            cmd.ExecuteNonQuery();
            //HttpContext.Current.Response.Write("<script> alert(' Successfully Removed');</script>");
            con.Close();
        }
    }
}