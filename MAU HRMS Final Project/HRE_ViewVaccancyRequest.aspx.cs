using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAU_HRMS_Final_Project
{
    public partial class HRE_ViewVaccancyRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs vacc = new SQLClasscs();
            vacc.RetriveData("EXEC SP_VIEWVACCANCYREQUEST");
            vaccRepeater.DataSource = vacc.SQLTable;
            vaccRepeater.DataBind();
        }
    }
}