using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;

namespace MAU_HRMS_Final_Project
{
    public partial class DH_AddVaccancy : System.Web.UI.Page
    {
       
        MAU_HRMS vaccancy = new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            searchallrootMenu();
            LabelDate.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            vaccancy.addVaccancy(REDropDownDepartment.SelectedValue, CriteriaTextBox.Text, int.Parse(NoVaccTextBox.Text), DateTime.Parse(LabelDate.Text), EmpIDTextBox.Text);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        public void searchallrootMenu()
        {
            REDropDownDepartment.DataTextField = "Dept_Name";
            REDropDownDepartment.DataValueField = "Dept_Id";
            REDropDownDepartment.DataSource = vaccancy.searchdept();
            REDropDownDepartment.DataBind();
        }
    }
}