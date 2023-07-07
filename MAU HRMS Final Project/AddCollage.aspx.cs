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
    public partial class AddCollage : System.Web.UI.Page
    {
        MAU_HRMS collage = new MAU_HRMS();
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            generateempid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (collage.addCollage(TextBoxID.Text, TextBox1.Text, DropDownList1.SelectedValue))
            {
                HttpContext.Current.Response.Write("<script> alert(' Successfully added');</script>");
            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Login Successful');</script>");
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        void generateempid()
        {
            TBL_Collage[] generatecode = collage.seearchcollage();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Collage ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].Collage_Id;
                String sub = lastcount.Substring(8);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "MAU/Col-" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].Collage_Id == code)
                        {
                            lastcode = lastcode + 1;
                            code = "MAU/Col-" + lastcode;

                        }
                    }

                }
                TextBoxID.Text = "MAU/Col-" + lastcode;
                TextBoxID.Enabled = false;

            }
            else
            {
                TextBoxID.Text = "MAU/Col-" + count;
                TextBoxID.Enabled = false;
            }
        }

       
    }
}