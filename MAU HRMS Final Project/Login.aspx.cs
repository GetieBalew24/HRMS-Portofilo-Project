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
    public partial class Login : System.Web.UI.Page
    {
      
      MAU_HRMS user = new MAU_HRMS();


        public string Encrypt(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            String encpass = Convert.ToBase64String(bytes);
            return encpass;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblvalUN.Visible = false;
            lblConfirm.Visible = false;
            lblUsername.Visible = false;

        }      

        private void CheckData(string text1, string text2)
        {
            if (string.IsNullOrEmpty(text1))
            {
                lblvalUN.Visible = true;
                lblValPass.ForeColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(text2))
            {
                lblValPass.Visible = true;
                lblValPass.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btn_login_Click1(object sender, EventArgs e)
        {
            String pass = Encrypt(txt_password.Text);
            CheckData(txt_username.Text, pass);
            
            TBL_UserAccount[] log = user.login(txt_username.Text, pass);

            if (log.Count() > 0)
            {
                if (log[0].Status == 1)
                {
                    Session["Username"] = log[0].Username;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblConfirm.Visible = true;
                    lblConfirm.Text = "Contact System Admin";
                }
            }
            else
            {
                lblConfirm.Visible = true;
                lblConfirm.Text = "Please Enter Correct Account";

            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }
    }
}