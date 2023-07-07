using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
using BLL_HRMS;
using Telerik.Web.UI.com.hisoftware.api2;

namespace MAU_HRMS_Final_Project
{
    public partial class Security_Question : System.Web.UI.Page
    {
        MAU_HRMS security= new MAU_HRMS();  
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            TBL_UserAccount[] st = security.SearchUsernameById(JBTitleTextBox.Text);
            if (st.Count() > 0)
            {

                if (security.Security(JBTitleTextBox.Text, JBDescriptionTextBox.Text, TextBox1.Text))
                {
                    HttpContext.Current.Response.Write("<script> alert('Your command Successful');</script>");
                }
                else
                {
                    HttpContext.Current.Response.Write("<script> alert('Your command not Successful');</script>");
                }

            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Your username is not correct');</script>");
            }


        }
    }
}