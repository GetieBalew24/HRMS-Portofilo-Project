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
    public partial class HRE_EmployeeRegisteration : System.Web.UI.Page
    {
        MAU_HRMS employee = new MAU_HRMS();
        int count = 0;               
        protected void Page_Load(object sender, EventArgs e)
        {
            searchallDept();
            Generateempid();
            Label25.Visible= false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Parse(TextBoxDOB.Text);

            DateTime dt_now= DateTime.Now;
            DateTime dt_18 = dt.AddYears(-18);
            DateTime dt_60 = dt.AddYears(-65);
            if(dt.Date>=dt_18.Date)
            {
                TextBoxDOB.Text = "";
                HttpContext.Current.Response.Write("<script> alert('You are Under age');</script>");
            }
          else if (dt.Date<= dt_60.Date)
            {

                HttpContext.Current.Response.Write("<script> alert('You are age is too old to work Grab a coffee and enjoy');</script>");
            }

          else if( employee.Registration(
                TextBoxID.Text,
                TextBoxFN.Text,
                TextBoxMN.Text,
                TextBoxLN.Text,
                DateTime.Parse(TextBoxDOB.Text),
                TextBox1.Text,
                RadioButtonList1.SelectedValue,
                TextBoxEmail.Text,
                DropDownList1.SelectedValue,
                TextBox6.Text,
                TextBox2.Text,
                TextBox3.Text,
                TextBox4.Text,
                TextBox11.Text,
                TextBox13.Text,
                TextBox7.Text,
                TextBox8.Text,
                DropDownList2.SelectedValue,
                DateTime.Parse(TextBox9.Text),
                DateTime.Parse(TextBox10.Text),
                DropDownList5.SelectedValue,
                float.Parse(TextBox12.Text),
                DropDownList3.SelectedValue,
                int.Parse(TextBox14.Text),
                DropDownList4.SelectedValue
                ))
            {
                HttpContext.Current.Response.Write("<script> alert('Registered Successfully');</script>");
                Label25.Visible= true;
                Label25.Text = "'Registered Successfully";
                Response.Redirect(Request.Url.AbsoluteUri);
                Generateempid();

            }
            else
            {
                HttpContext.Current.Response.Write("<script> alert('Try Again');</script>");
            }
           
        }
        void Generateempid()
        {
            TBL_Employee[] generatecode = employee.seearchallemp();
            /* if (DropDownList1.SelectedValue == "Academic")
             {*/
            foreach (TBL_Employee ping in generatecode)
            {
                count++;
            }
            if (count != 0)
            {
                String lastcount = generatecode[count - 1].Employee_Id;
                String sub = lastcount.Substring(8);
                int lastcode = Convert.ToInt32(sub);
                lastcode = lastcode + 1;
                String code = "MAU/Emp-" + lastcode;
                for (int j = 0; j < count; j++)
                {
                    for (int i = 0; i < count; i++)
                    {
                        if (generatecode[i].Employee_Id == code)
                        {
                            lastcode = lastcode + 1;
                            code = "MAU/Emp-" + lastcode;

                        }
                    }

                }
                TextBoxID.Text = "MAU/Emp-" + lastcode;
                TextBoxID.Enabled = false;

            }
            else
            {
                TextBoxID.Text = "MAU/Emp-" + count;
                TextBoxID.Enabled = false;
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
            /*
             TextBoxFN.Text = "";
                TextBoxMN.Text = "";
            TextBoxLN.Text = "";
           TextBoxDOB.Text = "";
            TextBox1.Text = "";
            RadioButtonList1.SelectedValue = "";
            TextBoxEmail.Text = "";
            DropDownList1.SelectedValue = "";
            TextBox6.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox11.Text = "";
            TextBox13.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            DropDownList2.SelectedValue = "";
          TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox5.Text = "";
           TextBox12.Text = "";
            DropDownList3.SelectedValue = "";
            TextBox14.Text = "";
            DropDownList4.SelectedValue = "";
            */ 
        }
        public void searchallDept()
        {
            DropDownList5.DataTextField = "Dept_Name";
            DropDownList5.DataValueField = "Dept_Id";
            DropDownList5.DataSource = employee.searchdept();
            DropDownList5.DataBind();
        }
       
    }
        }
    
