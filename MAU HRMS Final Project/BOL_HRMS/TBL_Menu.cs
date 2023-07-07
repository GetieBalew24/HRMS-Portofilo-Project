using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_Menu
    {
        DataClasses1DataContext menu = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string AddMenu()
        {

            String add = Convert.ToString(menu.SP_MENUREGISTRATION(_MenuId, _ParentMenu, _MenuName, _Link));
            return add;
        }
        public TBL_Menu[] searchMenu()
        {
            var coll = from e in menu.TBL_Menus
                       select e;
            return coll.ToArray<TBL_Menu>();
        }
        public TBL_Menu[] searchRootMenu()
        {
            var coll = from e in menu.TBL_Menus
                       where e.ParentMenu==_ParentMenu
                       select e;
            return coll.ToArray<TBL_Menu>();
        }

    }
}