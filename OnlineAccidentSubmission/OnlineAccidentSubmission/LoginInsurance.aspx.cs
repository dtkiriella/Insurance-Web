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
    public partial class LoginInsurance : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spIns_login";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SSN_INS", txtLogInsSSN.Text.ToString());
                cmd.Parameters.AddWithValue("@BRANCH_NAME", txtInsBRNNAME.Text.ToString());

                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["SSN_INS"] = txtLogInsSSN.Text.ToString();

                    txtInsInfo.Text = "Login Successful!";

                    reader.Close();
                    con.Close();

                    Response.Redirect("~/PoliceandRda.aspx");
                }
                else
                {
                    txtInsInfo.Text = "Invalid Credentials";

                }

                reader.Close();

                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spIns_login";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SSN_INS", txtLogInsSSN.Text.ToString());
                cmd.Parameters.AddWithValue("@BRANCH_NAME", txtInsBRNNAME.Text.ToString());

                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["SSN_INS"] = txtLogInsSSN.Text.ToString();

                    txtInsInfo.Text = "Login Successful!";

                    reader.Close();
                    con.Close();

                    Response.Redirect("~/PoliceandRda.aspx");
                }
                else
                {
                    txtInsInfo.Text = "Invalid Credentials";

                }

                reader.Close();

                con.Close();

            }
            catch (Exception ex)
            {

            }
        }
    }
}