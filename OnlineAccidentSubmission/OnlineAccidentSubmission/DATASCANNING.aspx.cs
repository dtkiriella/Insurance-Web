using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace OnlineAccidentSubmission
{
    public partial class DATASCANNING : System.Web.UI.Page
    {
        
        
        

       
       

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/charts.aspx");
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            string SSN_INS = txtInsReSSN.Text;
            string Complain_No = txtInsCom.Text;
            string AprRej = txtInsapp.Text;
            string ClaimingDocs = txtInsDoc.Text;



            if (SSN_INS != "" && Complain_No != "" && AprRej != "" && ClaimingDocs != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into DataAnalysis Values('" + SSN_INS + "','" + Complain_No + "','" + AprRej + "','" + ClaimingDocs + "')";
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

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txtInsReSSN.Text = "";
            txtInsCom.Text = "";
            txtInsapp.Text = "";
            txtInsDoc.Text = "";
             
        }
    }
}