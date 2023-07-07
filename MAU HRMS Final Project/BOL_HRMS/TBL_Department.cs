using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Department
    {
        DataClasses1DataContext dept = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addDept()
        {
            String addDept = Convert.ToString(dept.SP_DEPT(_Dept_Id,_Dept_Name, _College_Id));
            return addDept;
        }

        public TBL_Department[] searchdept()
        {
            var de = from cc in dept.TBL_Departments

                     select cc;
            return de.ToArray<TBL_Department>();
        }
            public TBL_Department[] searchdeptbyId()
        {
            var de = from cc in dept.TBL_Departments
                     where cc.Dept_Id == _Dept_Id
                     select cc;
            return de.ToArray<TBL_Department>();
        }
    }
}