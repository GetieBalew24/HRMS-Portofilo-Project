using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
using BOL_HRMS;

namespace MAU_HRMS_Final_Project
{
    public partial class Applicant_ViewJobPost : System.Web.UI.Page
    {
        MAU_HRMS view=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs viewJpostHRE = new SQLClasscs();
            viewJpostHRE.RetriveData("EXEC SP_VIEWJOBPOST");
            JobPostRepeater.DataSource = viewJpostHRE.SQLTable;
            JobPostRepeater.DataBind();
            /* TBL_JobPost[] post = view.viewPost();
             JobPostRepeater.DataSource = post;
             JobPostRepeater.DataBind();
             //   JobPostRepeater.DataSource= post;
             // JobPostRepeater.DataBind();
            *
            */
        }
    }
}