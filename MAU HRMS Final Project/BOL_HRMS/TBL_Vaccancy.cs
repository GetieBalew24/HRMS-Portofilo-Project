using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class  TBL_Vaccancy
    {
        DataClasses1DataContext vaccancy = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addVaccancy()
        {
            String Post = Convert.ToString(vaccancy.SP_ADDVACANCY
                (_Dept,  _Criteria, _NoVaccancy,  _Date ,_Employee_Id));
            return Post;
        }

    }
}