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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        MAU_HRMS forget=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Label2.Visible=false;
                SecQuesio.Visible=false;
                Label3.Visible=false;
                TextBox3.Visible=false;
                Label4.Visible=false;
                Label5.Visible=false; 
                Button2.Visible=false;  
                   
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
             TBL_UserAccount[] st = forget.SearchUsernameById(TextBox1.Text);
            if (st.Count() >0)
            {
                Label2.Visible = true;
                SecQuesio.Visible = true;
                Label3.Visible = true;
                TextBox3.Visible = true;
                SecQuesio.Text = st[0].Security_Question;
                Button2.Visible = true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Incorrect input chech your username and Try Again');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TBL_UserAccount[] sa = forget.CheckSecurityAnswer(TextBox1.Text ,TextBox3.Text);
            if (sa.Count() >0) 
            {
                Response.Redirect("ChangePassword.aspx");
            }

        }
    }
}