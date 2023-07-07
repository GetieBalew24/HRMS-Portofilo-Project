using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;

namespace MAU_HRMS_Final_Project
{
    public partial class Admin_Role : System.Web.UI.Page
    {

        DateTime date= DateTime.Now;
      MAU_HRMS role= new MAU_HRMS();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if (Session["Username"]==null)
             {
                 Response.Redirect("Login.aspx");
             }
             else
             {


             }*/
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // int count = GridView1.Rows.Count;
           // String assignedby = Session["Username"].ToString();
            /* if (count > 0)
             {
                 for (int i = 0; i < count; i++)
                 {
                     //
                     // assignrole
                     role.assignrole(TextBox1.Text, uint, WeakReference, assignedby, date);
                 }
                
            foreach (GridViewRow in GridView1)
             */
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                //
                // assignrole
                CheckBox Ck = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1"); 
                if(Ck.Checked)
                {
                    String menuid = GridView1.Rows[i].Cells[1].Text;
                    int status = 1;
                    role.assignrole(TextBox1.Text, menuid, status, "abc", date);
                }
              
               
            }
        
    }
        public void assign()
        {
            int count= GridView1.Rows.Count;
            Label1.Text = count.ToString();
           

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox status = (CheckBox)sender;
            GridViewRow row = (GridViewRow)status.NamingContainer;

        }
    }
}