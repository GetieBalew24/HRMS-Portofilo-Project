using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;

namespace MAU_HRMS_Final_Project
{
    public partial class Employee_RequestExperience : System.Web.UI.Page
    {
        MAU_HRMS request= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelPostedDate.Text = DateTime.Now.ToString();
        }

        protected void NewJobPost_Click(object sender, EventArgs e)
        {
            request.addExperienceRequest(JBTitleTextBox.Text, JBDescriptionTextBox.Text, DateTime.Parse(LabelPostedDate.Text));
            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);

        }
    }
}