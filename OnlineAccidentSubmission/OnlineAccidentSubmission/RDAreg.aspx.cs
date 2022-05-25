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
    public partial class RDAreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string SSN=txtRDASSN.Text;
            string NIC_No=txtRDANIC.Text;
            string Name=txtRDAName.Text;
            string Dep_Name=txtRDADEPName.Text;
            string Branch=txtRDABRN.Text;
            string District = txtRDADis.Text;

            if (SSN != "" && NIC_No != "" && Name != "" && Dep_Name != "" && Branch != "" && Dep_Name != "" && District != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into RDA_RegInfo Values('" + SSN + "','" + NIC_No + "','" + Name + "','" + Dep_Name + "','" + Branch + "','" + District+ "')";
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
            txtRDASSN.Text = "";
            txtRDANIC.Text = "";
            txtRDAName.Text = "";
            txtRDADEPName.Text = "";
            txtRDABRN.Text = "";
            txtRDADis.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginother.aspx");
        }
    }
}