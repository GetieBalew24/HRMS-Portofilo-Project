using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class  TBL_Notice
    {
        DataClasses1DataContext notice = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addNotice()
        {
            String Post = Convert.ToString(notice.SP_ADDNOTICE (_NLocation, _NTitle,_NDescription, _NPostedDate, _Employee_Id));
            return Post;
        }

    }
}