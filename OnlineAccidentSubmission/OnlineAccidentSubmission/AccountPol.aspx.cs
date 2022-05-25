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
    public partial class AccountPol : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string NewSSN = txtNewRDASSN.Text;
            string  NewName= txtNewPOName.Text;
            string  NewLoc_Dep= txtNewLocDep.Text;
            string  NewDistrict= txtNewDis.Text;
            string  NewDep_Name= txtNewNameDep.Text;
            if (NewSSN != "" && NewName != "" && NewLoc_Dep != "" && NewDistrict != "" && NewDep_Name != "" )
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string qry = "UPDATE Police_RegInfo SET Name='" + NewName + "',Loc_Dep='" + NewLoc_Dep + "',District='" + NewDistrict + "', Dep_Name='" + NewDep_Name + "' WHERE SSN='" + NewSSN + "' ";
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}