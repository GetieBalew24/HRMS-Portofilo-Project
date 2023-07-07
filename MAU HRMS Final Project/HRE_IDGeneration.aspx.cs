using BOL_HRMS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class HRE_IDGeneration : System.Web.UI.Page
    {
       MAU_HRMS emp=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            label.Visible = false;
            Image1.Visible = false;
            Image2.Visible = false;
            pbox.Visible = false;
            dire.Visible = false;
            name.Visible = false;
            dept.Visible = false;
            id.Visible = false;
            under.Visible = false;
            valid.Visible = false;

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            label.Visible = true;
            label.Text = " ";
            Image1.Visible = true;
            Image2.Visible = true;
            pbox.Visible = true;
            dire.Visible = true;
            name.Visible = true;
            dept.Visible = true;
            id.Visible = true;
            under.Visible = true;
            valid.Visible = true;

            Image1.ImageUrl = " ";
            Image2.ImageUrl = " ";
            pbox.Text = " ";
            dire.Text = " ";
            name.Text = " ";
            dept.Text = " ";
            id.Text = " ";
            under.Text = " ";
            valid.Text = " ";
            TBL_Employee[] st = emp.searchemployebyID(txt_empid.Text);

            if (st.Count() > 0)
            {
               TBL_Department[] dept_name = emp.searchdeptbyId(st[0].Dept_Id);
                if (FileUpload1.HasFile)
                {
                    String Str = FileUpload1.FileName;
                    DateTime reg_dates = DateTime.Now;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + Str);
                    String path = "~//uploads//" + Str.ToString();
                    if (emp.generate_emp_ID(txt_empid.Text, dept_name[0].Dept_Name, path, reg_dates))
                    {
                        //  label.Text = "successfully regstered"

                        Image1.ImageUrl = "uploads/" + Str.ToString();
                        Image2.ImageUrl = "../images/ID_logo.jpg";

                        pbox.Text = "P.o.Box 32|Tuluawulia,Ethiopia";
                        dire.Text = "Tel. 0338922121/22/23/14";
                        name.Text = "Name:" + " " + st[0].FirstName + " " + st[0].MiddleName + " " + st[0].LastName;
                        dept.Text = "Department:" + dept_name[0].Dept_Name;
                        id.Text = "ID No:" + " " + txt_empid.Text;
                        under.Text = "Employee";
                        String lsd = st[0].IDEbyMAU.ToString();
                        String year = lsd.Substring(5);
                        valid.Text = "Valid:" + " " + st[0].IDEbyMAU + "-" + reg_dates.AddYears(10) + " " + "G.C";


                    }

                    else
                    {
                        Response.Write("<script> alert('Error occured try it again');</script>");
                    }
                }
                else
                {

                    label.Text = "Please select Employee photo";
                    Image1.Visible = false;
                    Image2.Visible = false;

                    pbox.Visible = false;
                    dire.Visible = false;
                    name.Visible = false;
                    dept.Visible = false;
                    id.Visible = false;
                    under.Visible = false;
                    valid.Visible = false;
                }

            }
            else
            {
                label.Text = "Invalid Employee Id";
                Image1.Visible = false;
                Image2.Visible = false;

                pbox.Visible = false;
                dire.Visible = false;
                name.Visible = false;
                dept.Visible = false;
                id.Visible = false;
                under.Visible = false;
                valid.Visible = false;
            }

        
    }
    }
}