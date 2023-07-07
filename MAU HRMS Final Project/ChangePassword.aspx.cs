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
    public partial class ChangePassword : System.Web.UI.Page
    {

        MAU_HRMS cngpassword= new MAU_HRMS();
        public string Encrypt(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            String encpass = Convert.ToBase64String(bytes);
            return encpass;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
          
            if (TextBox3.Text.Trim() != TextBox2.Text.Trim())
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Retype two password fields does not match');", true);
            }
            else
            {
                string pass = Encrypt(TextBox2.Text);
                if (cngpassword.changePassword(TextBox1.Text, pass))
                {
                    HttpContext.Current.Response.Write("<script> alert('Change Successful');</script>");
                }
                else
                {
                    HttpContext.Current.Response.Write("<script> alert('Change not Successful');</script>");
                }
            }

           
        }
    }
}