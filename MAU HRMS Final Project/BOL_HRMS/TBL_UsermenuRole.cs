using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_UsermenuRole
    {
        DataClasses1DataContext role = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string assignrole()
        {

            String add = Convert.ToString(role.SP_ASSIGNROLE(_Username,_MenuId,_Status,_AssignedBy,_Date));
            return add;
        }

    }
}