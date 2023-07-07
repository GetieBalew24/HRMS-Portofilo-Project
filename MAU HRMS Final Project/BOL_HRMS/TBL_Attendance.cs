using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Attendance

    {
        DataClasses1DataContext attendance = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public TBL_Attendance[] viewattendance()
        {
            var coll = from e in attendance.TBL_Attendances 
                       select e;
            return coll.ToArray<TBL_Attendance>();
        }
    }
}