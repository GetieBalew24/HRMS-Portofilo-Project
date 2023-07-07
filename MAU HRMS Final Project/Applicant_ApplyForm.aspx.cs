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
    public partial class Applicant_ApplyForm : System.Web.UI.Page
    {
        MAU_HRMS apply= new MAU_HRMS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");     
            string fname = FileUpload1.FileName;
            string flocation = "CV/";
            string pathstring=System.IO.Path.Combine(flocation,fname);
            var st = new TBL_Applicant
            {
                Applicant_FirstName = TextBoxFN.Text.Trim(),
                Applicant_MiddleName = TextBoxMN.Text.Trim(),
                Applicant_LastName = TextBox1.Text.Trim(),
                Applicant_Sex  =RadioButtonList1.SelectedValue,
                Applicant_FieldOfStudy= TextBox3.Text.Trim(),
                Applicant_CGPA=float.Parse( TextBox4.Text.Trim()),
                Applicant_Experience= TextBox5.Text .Trim(),
                CV=pathstring,
                JobPost_Id = int.Parse( TextBox2.Text),
            };
            db.TBL_Applicants.InsertOnSubmit(st);
            db.SubmitChanges();
            FileUpload1.SaveAs(MapPath(pathstring));
            HttpContext.Current.Response.Write("<script> alert('Your Request Submitted');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.Url.AbsoluteUri);
        }
    }
}