using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_GenerateID
    {
        DataClasses1DataContext id = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string registerempID()
        {
            String reg_id = Convert.ToString(id.registerGeneratedID(_Employee_Id, _Employee_Dept, _Employee_Image, _Reg_date));
            return reg_id;
        }
    }
}