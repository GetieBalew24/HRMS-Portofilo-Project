using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Deal
    {
        DataClasses1DataContext deal = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addDeal()
        {

            String add = Convert.ToString(deal.SP_DEAL(_Employee_Id, _Training_Id, _Referee_FirstName, _Referee_MiddleName, _Referee_LastName, _Referee_Region,
                                                 _Referee_Zone, _Referee_Kebele, _Referee_HouseNo, _Referee_PhoneNo, _TermsAndConditions, _PostedDate));
            return add;
        }
        public TBL_Deal[] checkexist()
        {
            var check = from f in deal.TBL_Deals
                        where f.Training_Id == Training_Id && f.Employee_Id == Employee_Id
                        select f;
            return check.ToArray<TBL_Deal>();
        }
    }
}