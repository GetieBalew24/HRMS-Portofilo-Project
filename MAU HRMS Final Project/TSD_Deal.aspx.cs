using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
using BOL_HRMS;

namespace MAU_HRMS_Final_Project
{
    public partial class TSD_Deal : System.Web.UI.Page
    {
        MAU_HRMS deal= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelPostedDate.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            TBL_Deal[] check = deal.checkexist( int.Parse(TextBox2.Text), TextBox1.Text);
            if(check.Count()==0)
            {
                if (deal.AddDeal(TextBox1.Text, int.Parse(TextBox2.Text), TextBox3.Text, TextBox4.Text, TextBox5.Text,
                         TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, TextBox11.Text, DateTime.Parse(LabelPostedDate.Text)))
                {
                    HttpContext.Current.Response.Write("<script> alert('Registered Successfully');</script>");
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                else
                {
                    HttpContext.Current.Response.Write("<script> alert('Try Again your input is wrong');</script>");


                }
            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Try Again your input is already Existed');</script>");
            }
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }
    }
}