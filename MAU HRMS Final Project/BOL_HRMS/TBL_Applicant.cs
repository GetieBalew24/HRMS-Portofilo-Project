using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Applicant
    {
        DataClasses1DataContext applicant = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
       /* public string Apply()
        {
            String apply = Convert.ToString(applicant.SP_APPLY(_Applicant_FirstName,_Applicant_MiddleName, _Applicant_LastName, _Applicant_Sex, _Applicant_FieldOfStudy,
                                                               _Applicant_CGPA, _Applicant_Experience, _CV, _JobPost_Id));
            return apply;
        }
       */
    }
}