using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAU_HRMS_Final_Project
{
    public partial class DH_SubmitAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                Label1.Text = " ";
                string path = string.Concat((Server.MapPath(FileUpload2.FileName)));
                FileUpload2.PostedFile.SaveAs(path);
                OleDbConnection OleDbcon = new OleDbConnection("Provider=Microsoft.Ace.OLEDB.12.0;Data Source=" + path + ";Extended Properties=Excel 12.0; ");
                OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", OleDbcon);
                OleDbDataAdapter objAdapter1 = new OleDbDataAdapter(cmd);
                OleDbcon.Open();
                //DbDataAdapter dr=cmd.ExecuteReader();
                DataTable dt = new DataTable();
                objAdapter1.Fill(dt);

                string con_str = @"Data Source=DESKTOP-P9JALOF\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True";

                SqlBulkCopy bulkinsert = new SqlBulkCopy(con_str);
                bulkinsert.DestinationTableName = "TBL_Attendance";
                bulkinsert.WriteToServer(cmd.ExecuteReader());
                OleDbcon.Close();

                //Array.ForEach(Directory.GetFiles((Server.MapPath("//Attendance//"))), File.Delete); 
                Label1.ForeColor = Color.Green;
                Label1.Text = "sucessfully inserted";
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "please select the file";
            }

        }
    }
}