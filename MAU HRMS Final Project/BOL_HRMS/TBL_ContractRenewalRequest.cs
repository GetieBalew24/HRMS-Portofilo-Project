using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_ContractRenewalRequest
    {
        DataClasses1DataContext contract = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addContractRequest()
        {
            String add = Convert.ToString(contract.SP_CONTRACTREQUEST(_Employee_Id, _Reason, _RequestDate));
            return add;
        }
    }
}