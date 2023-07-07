using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
using BLL_HRMS;
using Microsoft.Ajax.Utilities;

namespace MAU_HRMS_Final_Project
{
    public partial class Apllicant_Login : System.Web.UI.Page
    {
        MAU_HRMS login=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3tire_Click(object sender, EventArgs e)
        {
            Account_Applicant[] lg = login.applicantlogin(TextBoxUsername.Text, LoginPasswordTextBox.Text);
            if (lg.Count() > 0)
            {
                Session["Username"] = TextBoxUsername.Text;
                HttpContext.Current.Response.Write("<script> alert('Login Successful');</script>");
                Server.Transfer("Applicant_ViewJobPost.aspx");
            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Incorrect input chech your username and password or create an account');</script>");               
            }

        }
    }
}