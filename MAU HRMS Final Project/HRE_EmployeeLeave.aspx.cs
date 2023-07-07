using BLL_HRMS;
using BOL_HRMS;
using System;

using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI.HtmlChart.PlotArea;

namespace MAU_HRMS_Final_Project
{
    public partial class HRE_EmployeeLeave : System.Web.UI.Page
    {
        MAU_HRMS emp = new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            TextBoxFN.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            TextBoxMN.Visible = false;
            Label3.Visible = false;
            TextBoxLN.Visible = false;
            Label8.Visible = false;
            TextBox3.Visible = false;
            Label6.Visible = false;
            TextBo.Visible = false;
            Label14.Visible = false;
            TextBox2.Visible=false;
            Label7.Visible=false;
            TextBox6.Visible=false;
            Label10.Visible=false;
            TextBox9.Visible=false;
            Label11.Visible=false;
            TextBox10.Visible=false;
            Label12.Visible=false;
            TextBox5.Visible=false;
            Label18.Visible=false;
            TextBox12.Visible=false;
            Label20.Visible=false;
            TextBox14.Visible=false;
            Label4.Visible=false;
            TextBox4.Visible=false; 
            Button1.Visible = false;
            Button2.Visible=false;  
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TBL_Employee[] st = emp.searchemployebyID(TextBox1.Text);
            
            if (st.Count() > 0)
            {
                String position ="Position: "+" "+ st[0].Position+" " + "Additional Positions:" +" "+  st[0].PreviousPosition;
                TextBoxFN.Text = st[0].FirstName;
                TextBoxFN.Enabled = false;
                TextBoxMN.Text = st[0].MiddleName;
                TextBoxMN.Enabled = false;
                TextBoxLN.Text = st[0].LastName;
                TextBoxLN.Enabled = false;
                TextBox3.Text= st[0].Sex;
                TextBox3.Enabled = false;
                TextBo.Text= st[0].PhoneNo;
                TextBo.Enabled = false;
                TextBox2.Text= st[0].Stream;
                TextBox2.Enabled = false;
                TextBox4.Text= st[0].Position;
                TextBox4.Enabled = false;
                TextBox5.Text = st[0].Dept_Id;
                TextBox6.Text = position;
                TextBox5.Enabled = false;
                TextBox9.Text= st[0].IDEbyMAU.ToString();
                TextBox9.Enabled = false;
                TextBox12.Text = st[0].Salary.ToString();
                TextBox12.Enabled = false;
               
                TextBoxFN.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                TextBoxMN.Visible = true;
                Label3.Visible = true;
                TextBoxLN.Visible = true;
                Label8.Visible = true;
                TextBox3.Visible = true;
                Label6.Visible = true;
                TextBo.Visible = true;
                Label14.Visible = true;
                TextBox2.Visible = true;
                Label7.Visible = true;
                TextBox6.Visible = true;
                Label10.Visible = true;
                TextBox9.Visible = true;
                Label11.Visible = true;
                TextBox10.Visible = true;
                Label12.Visible = true;
                TextBox5.Visible = true;
                Label18.Visible = true;
                TextBox12.Visible = true;
                Label20.Visible = true;
                TextBox14.Visible = true;
                Label4.Visible = true;
                TextBox4.Visible=  true;
                Button1.Visible = true;
                Button2.Visible = true; 
            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Incorrect input chech Employee ID');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if( emp.LeaveRegistration(
               TextBox1.Text,
               TextBoxFN.Text,
               TextBoxMN.Text,
               TextBoxLN.Text,
               TextBox3.Text,
               TextBo.Text,
               TextBox2.Text,
               TextBox4.Text,
               TextBox6.Text,               
               DateTime.Parse(TextBox9.Text),
               DateTime.Parse(TextBox10.Text),
               TextBox5.Text,              
                float.Parse(TextBox12.Text),
                TextBox14.Text)&& emp.RemoveEmployee(TextBox1.Text))
            {
                HttpContext.Current.Response.Write("<script> alert('Employee Leaves we wish all the best');</script>");

            }
           else
            {
                HttpContext.Current.Response.Write("<script> alert(' Something wrong with your Input');</script>");
            }

        }
    }
}