using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_EmployeeLeave
    {
        DataClasses1DataContext leave = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public TBL_EmployeeLeave[] LeaveSearch()
        {
            var coll = from e in leave.TBL_EmployeeLeaves
                       where e.Employee_Id == _Employee_Id

                       select e;
            return coll.ToArray<TBL_EmployeeLeave>();
        }
        public string RegisterLeave()
        {
            
            String register = Convert.ToString(leave.SP_LEAVEREGISTER(_Employee_Id, _FirstName, _MiddleName, _LastName,
                                                                      _Sex, _PhoneNo, _Stream, _Position, _Achivements, _IDEMAU,
                                                                      _LDAT, _Dept_Id, _Salary, _ReasonOfLeave));
            return register;
        }

    }
}