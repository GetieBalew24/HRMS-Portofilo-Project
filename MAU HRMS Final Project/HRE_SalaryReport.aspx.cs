using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class HRE_SalaryReport : System.Web.UI.Page
    {
        MAU_HRMS vaccancy = new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            searchallrootMenu();
        }
        public void searchallrootMenu()
        {
            DropDownList1.DataTextField = "Dept_Name";
            DropDownList1.DataValueField = "Dept_Id";
            DropDownList1.DataSource = vaccancy.searchdept();
            DropDownList1.DataBind();
            GridView1.DataSource = vaccancy.viewattendance();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //viewattendance   
            GridView1.DataSource= vaccancy.viewattendance();
        }
    }
}