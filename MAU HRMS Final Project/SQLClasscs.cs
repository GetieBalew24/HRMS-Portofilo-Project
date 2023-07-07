using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace MAU_HRMS_Final_Project
{
    public class SQLClasscs
    {
        SqlConnection con = new SqlConnection();
        public DataTable SQLTable = new DataTable();
        public SQLClasscs()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["MAUHRMS_DBConnectionString"].ConnectionString;
        }
        public void RetriveData(string cmd)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd, con);
                da.Fill(SQLTable);
               
            }
            catch (Exception e)
            {
                HttpContext.Current.Response.Write("<script> alert('Connecting to DB error:'" + e.Message + "'); </script>");
            }
            finally
            {
                con.Close();
            }
        }

    }
}