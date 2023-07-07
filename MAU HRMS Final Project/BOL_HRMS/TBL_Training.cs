using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class  TBL_Training
    {
        DataClasses1DataContext training = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addTraining()
        {
            String Post = Convert.ToString(training.SP_ADDTRAINING( _Training_Title, _Training_Description, _PostedDate, Employee_Id));
            return Post;
        }
    }
}