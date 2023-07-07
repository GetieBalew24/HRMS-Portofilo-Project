using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAU_HRMS_Final_Project
{
    public partial class Employee_ViewTraining : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs viewpost = new SQLClasscs();
            viewpost.RetriveData("EXEC SP_VIEWTRAINING");
            PostRepeateHRE.DataSource = viewpost.SQLTable;
            PostRepeateHRE.DataBind();
        }
    }
}