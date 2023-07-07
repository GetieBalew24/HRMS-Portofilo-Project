using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_HRMS;
namespace MAU_HRMS_Final_Project
{
    public partial class CD_ApproveExperience : System.Web.UI.Page
    {
        MAU_HRMS cdapprove = new MAU_HRMS();
        int status = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClasscs viewNpost = new SQLClasscs();
            viewNpost.RetriveData("SP_CDAPPROVEEXPR");
            GridView1.DataSource = viewNpost.SQLTable;
            GridView1.DataBind();
            if(!Page.IsPostBack)
            {

            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList status = (DropDownList)sender;
            GridViewRow row = (GridViewRow)status.NamingContainer;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                // if(DropDownList1.SelectedValue=="Approve")
                //
                // assignrole
                DropDownList Ck = (DropDownList)GridView1.Rows[i].Cells[0].FindControl("DropDownList1");

                /*       if (Ck.SelectedValue == "1")
                  {
                      status = 1;
                  }
                  else if (Ck.SelectedValue == "Reject")
                  {
                      status = 0;
                  }
                      Label1.Text=Ck.SelectedValue;

                 if (Ck.SelectedValue)
                  {
                      int id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);


                      if (cdapprove.CDEapprove(id, status))
                      {
                          HttpContext.Current.Response.Write("<script> alert('Request Approved');</script>");
                      }
                  } 
            }*/

            }
        }
    }
}