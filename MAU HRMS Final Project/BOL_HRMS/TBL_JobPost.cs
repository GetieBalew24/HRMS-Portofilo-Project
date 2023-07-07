using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BOL_HRMS
{
    public partial class TBL_JobPost
    {
        DataClasses1DataContext jobPost = new DataClasses1DataContext("Data Source=DESKTOP-P9JALOF\\SQLEXPRESS;Initial Catalog=MAUHRMS_DB;Integrated Security=True");
        public string addPost()
        {
           
            
            String Post = Convert.ToString(jobPost.SP_ADDJOBPOST(_Location,_Title,_Description,_PostedDate,Employee_Id));
            return Post;
            
           
        }
        public TBL_JobPost[] ViewPost()
        {
            var posts = from cc in jobPost.TBL_JobPosts
                        select cc;
            return posts.ToArray<TBL_JobPost>();
        }
    }
}