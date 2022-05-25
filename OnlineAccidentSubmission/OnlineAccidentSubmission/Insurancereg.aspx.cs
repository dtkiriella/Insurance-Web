using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace OnlineAccidentSubmission
{
    public partial class Insurancereg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string SSN_INS = txtInsASSN.Text;
            string NIC_INSNO = txtInsNIC.Text;
            string AGENT_NAME = txtInsName.Text;
            string DEP_NAME = txtInsDEPName.Text;
            string BRANCH_NAME = txtInsBRN.Text;
            string DISTRICT = txtInsDis.Text;
            string JOB_TITLE = txtInsJobTitle.Text;

            if (SSN_INS != "" && NIC_INSNO != "" && AGENT_NAME != "" && DEP_NAME != "" && BRANCH_NAME != "" && DISTRICT != "" && JOB_TITLE != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into Ins_RegInfo Values('" + SSN_INS + "','" + NIC_INSNO + "','" + AGENT_NAME + "','" + DEP_NAME + "','" + BRANCH_NAME + "','" + DISTRICT + "','"+ JOB_TITLE + "')";
                SqlCommand cmd = new SqlCommand(sql, con);


                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Data has been Inserted Successfully");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("Please Insert Data to All Fields");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            txtInsASSN.Text = "";
            txtInsNIC.Text = "";
            txtInsName.Text = "";
            txtInsDEPName.Text = "";
            txtInsBRN.Text = "";
            txtInsDis.Text = "";
            txtInsJobTitle.Text = "";        }
    }
}