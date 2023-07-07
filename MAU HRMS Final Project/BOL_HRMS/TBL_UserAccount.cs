using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_UserAccount
    {
     
        DataClasses1DataContext user = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=TrueData Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
            public TBL_UserAccount[] userlogin()
        {
            var login = from f in user.TBL_UserAccounts
                        where f.Username == _Username && f.Password == _Password
                        select f;
            return login.ToArray<TBL_UserAccount>(); 
        }
        public TBL_UserAccount[] SearchUsernameById()
        {
            var search = from g in user.TBL_UserAccounts
                        where g.Username == _Username
                        select g;
            return search.ToArray<TBL_UserAccount>();
        }
        public string CreateAccount()
        {
            String Post = Convert.ToString(user.SP_CREATEACCOUNT(_Employee_Id,_Username, _Password, _Email, _Role, _Status));
            return Post;
        }
        public TBL_UserAccount[] CheckSecurityAnswer()
        {
            var search = from g in user.TBL_UserAccounts
                         where g.Username == _Username && g.Security_Answer == _Security_Answer 
                         select g;
            return search.ToArray<TBL_UserAccount>();
        }


     public void changePassword()
        {
            user.SP_CHANGEPASSWORD(_Username, _Password);
        }
        public string Security()
        {
            String Post = Convert.ToString(user.SP_SECURITYQUESTION(_Username,_Security_Question,Security_Answer));
            return Post;
        }

    }
}