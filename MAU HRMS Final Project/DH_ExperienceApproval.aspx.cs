using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class DH_ExperienceApproval : System.Web.UI.Page
    {
        MAU_HRMS dhapprove=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs viewNpost = new SQLClasscs();
            viewNpost.RetriveData("SP_DHAPPROVEEXPR");
            GridView1.DataSource = viewNpost.SQLTable;
            GridView1.DataBind();

        }

      

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            CheckBox status = (CheckBox)sender;
            GridViewRow row = (GridViewRow)status.NamingContainer;
        }
    }
}