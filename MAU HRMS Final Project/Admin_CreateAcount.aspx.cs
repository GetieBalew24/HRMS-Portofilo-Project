using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
using BOL_HRMS;
using Telerik.Web.UI.com.hisoftware.api2;

namespace MAU_HRMS_Final_Project
{
    public partial class Admin_CreateAcount : System.Web.UI.Page
    {
        MAU_HRMS account = new MAU_HRMS();

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
            int s = 0;
            TBL_UserAccount[] st = account.SearchUsernameById(TextBox1.Text);
            String pass = Encrypt(TextBox2.Text);
            if (DropDownList3.SelectedValue == "Active")
            {
                s = 1;
            }
            else if (DropDownList3.SelectedValue == "Deactive")
            {
                s = 0;
            }
            if(st.Count()==0)
            {

               if( account.CreateAccount(TextBoxID.Text, TextBox1.Text, pass, TextBox4.Text, DropDownList1.SelectedValue, s))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Account Created');", true);
                }   
               else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Another Error');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Account already Exist');", true);
            }
            //   SearchUsernameById
            // account.accountapplicant(TextBox1.Text, TextBox3.Text, TextBox4.Text,);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TBL_Employee[] st = account.searchemployebyID(TextBoxID.Text);

            if (st.Count() > 0)
            {
                // String s=
                TextBox1.Text = st[0].FirstName + st[0].Employee_Id;
                String fn = st[0].FirstName.Substring(0, 1);
                String mn = st[0].FirstName.Substring(1, 2);

                String v = fn.ToUpper();
                TextBox2.Text = v + mn + "@" + st[0].Employee_Id;
                TextBox4.Text = st[0].Email;


            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Id');", true);
            }
        }
    }
}


   