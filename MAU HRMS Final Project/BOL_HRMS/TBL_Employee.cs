using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Employee
    {
        DataClasses1DataContext employee = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string Registration()
        {
            String register = Convert.ToString(employee.SP_REGERSTEREMPLOYEE(_Employee_Id, _FirstName, _MiddleName, _LastName, _DOB,
                                _BP, _Sex, _Email, _Stream, _Position,
                            _Region, _Zone, _Kebele, _HouseNo, _PhoneNo,
                            _InstitutionStudied, _FieldOfStudy, _DiplomaAwarded, _IDE, _IDEbyMAU,
                            _Dept_Id, _Salary, _MartialStatus, _NoOfChildren, _JobStatus));
            return register;
        }
        public TBL_Employee[] searchallemp()
        {
            var emp = from e in employee.TBL_Employees
                      select e;
            return emp.ToArray<TBL_Employee>();
        }
        public TBL_Employee[] searchmployeebyId()
        {
            var emp = from cc in employee.TBL_Employees
                      where cc.Employee_Id == _Employee_Id
                      select cc;
            return emp.ToArray<TBL_Employee>();
        }

        public string Leave()
        {
            String register = Convert.ToString(employee.SP_REMOVEFORMEREMPLOYEE(_Employee_Id));
            return register;
        }

    }
}