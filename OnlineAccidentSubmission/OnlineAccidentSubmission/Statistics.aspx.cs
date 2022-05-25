using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAccidentSubmission
{
    public partial class Statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtGetIamge_Click(object sender, EventArgs e)
        {
          
            {
                Image1.ImageUrl = "ShowImage.ashx?id=" + Id.Text;
            }
        }
    }
}