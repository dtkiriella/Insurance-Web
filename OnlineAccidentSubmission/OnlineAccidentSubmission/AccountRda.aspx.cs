using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;
namespace OnlineAccidentSubmission
{
    public partial class AccountRda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string NewSSN = txtNewRDASSN.Text;
            string NewName = txtNewRDAName.Text;
            string NewDep_Name = txtNewRDADEPName.Text;
            string NewBranch_No = txtNewRDABRN.Text;
            string NewDistrict = txtNewRDADis.Text;
            if (NewSSN != "" && NewName != "" && NewDep_Name != "" && NewBranch_No != "" && NewDistrict != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string qry = "UPDATE RDA_RegInfo SET Name='" + NewName + "',Dep_Name='" + NewDep_Name + "', Branch_No='" + NewBranch_No + "',District='" + NewDistrict + "' WHERE SSN='" + NewSSN + "' ";
                SqlCommand cmd = new SqlCommand(qry, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Information Updating is Completed");
                }

                catch (Exception ex)
                {
                    Response.Write("Exception Occurred" + ex);
                }
            }
                
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PoliceandRda.aspx");
        }
    }
}