using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_ExperienceRequest
    {
        DataClasses1DataContext Erequest = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addExperienceRequest()
        {
            String add = Convert.ToString(Erequest.SP_EXPERIENCEREQUEST(_Employee_Id, _Reason,_RequestDate));
            return add;
        }
        public void DHEapprove()
        {
            Erequest.SP_DHEXPERIENCEAPPROVAL(_Id, _DH_Approval);

        }
        public void CDEapprove()
        {
            Erequest.SP_CDEXPERIENCEAPPROVAL(_Id, _DH_Approval);

        }


    }
}