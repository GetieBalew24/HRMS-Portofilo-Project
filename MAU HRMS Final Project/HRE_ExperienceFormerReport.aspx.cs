using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BOL_HRMS;
using BLL_HRMS;
using System.Xml.Linq;
using Telerik.Charting.Styles;

namespace MAU_HRMS_Final_Project
{
    public partial class HRE_ExperienceReport : System.Web.UI.Page
    {
        MAU_HRMS expreport=new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

            }
            name.Visible=false; 
            Label2.Visible=false;
            Empnames.Visible=false;
            Label4.Visible=false;
            Position.Visible=false;
            Label6.Visible=false;
            dept.Visible=false;
            Label8.Visible=false;
            idebymau.Visible=false;
            Label10.Visible=false;
            lde.Visible=false;
            emp.Visible=false;
            Label3.Visible=false;
            Achivements.Visible=false;
            Label1.Visible=false;
            Label5.Visible=false;
            Label9.Visible=false;
            Label11.Visible=false;
            hrname.Visible=false;
            Label12.Visible=false;
          


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_EmployeeLeave[] st = expreport.LeaveSearch(txt_empid.Text);
            
            if (st.Count() > 0)
            {

                name.Text = st[0].FirstName + " "+ st[0].MiddleName + " " + st[0].LastName;
               
                Empnames.Text = name.Text;
                Position.Text = st[0].Position;
                TBL_Department[] s = expreport.searchdeptbyId(st[0].Dept_Id.ToString());
                dept.Text = s[0].Dept_Name;
                idebymau.Text = st[0].IDEMAU.ToString();
                lde.Text = st[0].LDAT.ToString();
                emp.Text= name.Text;
                Achivements.Text = st[0].Achivements;
                hrname.Text = " ";

                name.Visible = true;
                Label2.Visible = true;
                Empnames.Visible = true;
                Label4.Visible = true;
                Position.Visible = true;
                Label6.Visible = true;
                dept.Visible = true;
                Label8.Visible = true;
                idebymau.Visible = true;
                Label10.Visible = true;
                lde.Visible = true;
                emp.Visible = true;
                Label3.Visible = true;
                Achivements.Visible = true;
                Label1.Visible = true;
                Label5.Visible = true;
                Label9.Visible = true;
                Label11.Visible = true;
                hrname.Visible = true;
                Label12.Visible = true;

            }
            else
            {
                Response.Write("<script> alert(' ID Does Not Exist ');</script>");
            }

        }
    }
}