
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
using BOL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class Admin_MenuRegistration : System.Web.UI.Page
    {
        int count = 0;
        string Id = "";
        MAU_HRMS menu= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                searchallrootMenu();
            }


        }

        protected void NewJobPost_Click(object sender, EventArgs e)
        {
            MenuId();
            menu.AddMenu(Id, DropDownList1.SelectedValue, JBDescriptionTextBox.Text, JBEmployee_IDTextBox.Text);
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }
        void MenuId()
        {
            TBL_Menu[] generatecode = menu.searchMenu();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Menu ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].MenuId;
                String sub = lastcount.Substring(6);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "MENU/-" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].MenuId == code)
                        {
                            lastcode = lastcode + 1;
                            code = "MENU/-" + lastcode;

                        }
                    }

                }
              Id = "MENU/-" + lastcode;
              
            }
            else
            {
                Id = "MENU/-" + count;
               
            }
           

        }
       public void searchallrootMenu()
        {                    
                DropDownList1.DataTextField = "MenuName";
                DropDownList1.DataValueField = "MenuId";
                DropDownList1.DataSource = menu.searchMenu();
                DropDownList1.DataBind();          
        }
     
    }
}