using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class Account_Applicant
    {
        DataClasses1DataContext applicant = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");

        public Account_Applicant[] applicantlogin()
        {
            var login = from f in applicant.Account_Applicants
                        where f.UsernameApplicant == _UsernameApplicant && f.PasswordApplicant == _PasswordApplicant
                        select f;
            return login.ToArray<Account_Applicant>();
        }
        public string accountapplicant()
        {
            String app = Convert.ToString(applicant.SP_NEWAPPLICANT(_UsernameApplicant, _PasswordApplicant, _EmailApplicant));
            return app;
        }

        public Account_Applicant[] SearchAppUsername()
        {
            var search = from g in applicant.Account_Applicants
                         where g.UsernameApplicant == _UsernameApplicant
                         select g;
            return search.ToArray<Account_Applicant>();
        }
    }
}