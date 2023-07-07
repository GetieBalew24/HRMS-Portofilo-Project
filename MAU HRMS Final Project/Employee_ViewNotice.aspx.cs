using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAU_HRMS_Final_Project
{
    public partial class Employee_ViewNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs viewNpost = new SQLClasscs();
            viewNpost.RetriveData("EXEC SP_VIEWNOTICE");
            NoticePostRepeateHRE.DataSource = viewNpost.SQLTable;
            NoticePostRepeateHRE.DataBind();
        }
    }
}