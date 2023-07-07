using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
using BLL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class CD_ApproveAttendance : System.Web.UI.Page
    {
        MAU_HRMS collegedean= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                TBL_Department[] dep = collegedean.searchdept();
            if(dep.Count() > 0)
            {              
               // DropDownList1.DataTextField =dep[0].Dept_Name;
               // DropDownList1.DataValueField = dep[0].Dept_Name;    
//DropDownList1.DataBind();
            }
           
        }
    }
}