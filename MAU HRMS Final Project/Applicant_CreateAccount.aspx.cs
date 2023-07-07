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
    public partial class Applicant_CreateAccount : System.Web.UI.Page
    {
        MAU_HRMS account= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
                   
        }
        public string Encrypt(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            String encpass = Convert.ToBase64String(bytes);
            return encpass;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String f = Confirm_Password_TextBox.Text.Trim();
            String s = TextBox2.Text.Trim();
             
            Account_Applicant[] st = account.SearchAppUsername(Username_ApplicantTextBox.Text);
            String Pass2 = Encrypt(f);
            String pass = Encrypt(s);

            if (Pass2 != pass)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Retype two password fields does not match');", true);              
            }
            else if(st.Count()==0)
            {
                if (account.applicantcreateAccount(Username_ApplicantTextBox.Text, pass, Email_ApplicantTextBox.Text))
                {

                    HttpContext.Current.Response.Write("<script> alert('Account Created');</script>");
                    Response.Redirect("Apllicant_Login.aspx");
                }
                else
                {
                    HttpContext.Current.Response.Write("<script> alert('Account not Created Error Ocurred');</script>");

                }
            }
            else
            
            {
                HttpContext.Current.Response.Write("<script> alert('Account Already Exist');</script>");
            }
            
        }
    }
}