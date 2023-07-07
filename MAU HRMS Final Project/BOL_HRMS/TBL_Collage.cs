using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Collage
    {
        DataClasses1DataContext collage = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public bool addcollage()
        {
            try
            {
            String addcollage = Convert.ToString(collage.SP_COLLAGE(_Collage_Id,_College_Name, _College_Location));
            HttpContext.Current.Response.Write("<script> alert('command is done '); </script>");

                return true;
            }
           catch(Exception ex)
            {
                HttpContext.Current.Response.Write("<script> alert('Connecting to DB error:'" + ex.Message + "'); </script>");
                return false;   
            }
            
        }
       public TBL_Collage[] seearchcollage()
        {
            var coll = from e in collage.TBL_Collages
                      select e;
            return coll.ToArray<TBL_Collage>();
        }
    }
}