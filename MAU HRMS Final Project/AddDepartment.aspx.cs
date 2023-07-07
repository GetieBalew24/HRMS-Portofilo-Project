using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
using BOL_HRMS;
using Telerik.Web.UI.Chat;

namespace MAU_HRMS_Final_Project
{
    public partial class AddDepartment : System.Web.UI.Page
    {
        MAU_HRMS dept = new MAU_HRMS();
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            generatedeptid();
            searchall();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if( dept.addDept(TextBoxID.Text,TextBox1.Text, DropDownList1.Text))
            {
                HttpContext.Current.Response.Write("<script> alert(' Successfully Added');</script>");
            }
            else 
            {
                HttpContext.Current.Response.Write("<script> alert(' Not Added');</script>");
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        void generatedeptid()
        {
            TBL_Department[] generatecode = dept.searchdept();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Department ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].Dept_Id;
                String sub = lastcount.Substring(8);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "MAU/Dpt-" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].Dept_Id == code)
                        {
                            lastcode = lastcode + 1;
                            code = "MAU/Dpt-" + lastcode;

                        }
                    }

                }
                TextBoxID.Text = "MAU/Dpt-" + lastcode;
                TextBoxID.Enabled = false;
            }
            else
            {
                TextBoxID.Text = "MAU/Dpt-" + count;
                TextBoxID.Enabled = false;
            }
        }
        public void searchall()
        {
            DropDownList1.DataTextField = "College_Name";
            DropDownList1.DataValueField = "Collage_Id";
            DropDownList1.DataSource = dept.seearchcollage();
            DropDownList1.DataBind();
        }
    }
}