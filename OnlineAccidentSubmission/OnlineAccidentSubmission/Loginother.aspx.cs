using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineAccidentSubmission
{
    public partial class Loginother : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spPolice_login";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SSN", txtLogSSN.Text.ToString());
                cmd.Parameters.AddWithValue("@Loc_Dep", txtDepName.Text.ToString());
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["SSN"] = txtLogNIC.Text.ToString();
                    txtPoliceInfo.Text = "Login Successful!";

                    reader.Close();
                    con.Close();

                    Response.Redirect("~/PoliceandRda.aspx");
                }
                else
                {
                    txtPoliceInfo.Text = "Invalid Credentials";
                }

                reader.Close();

                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "spRDA_login";
               
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SSN", txtLogRDASSN.Text.ToString());
                cmd.Parameters.AddWithValue("@Branch_No", txtRDABRNNAME.Text.ToString());
               
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["SSN"] = txtLogRDASSN.Text.ToString();
                    
                    txtRDAInfo.Text = "Login Successful!";

                    reader.Close();
                    con.Close();

                    Response.Redirect("~/PoliceandRda.aspx");
                }
                else
                {
                    txtRDAInfo.Text = "Invalid Credentials";
                 
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
                cmd.CommandText = "sp_login";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NIC_No", txtLogNIC.Text.ToString());
                cmd.Parameters.AddWithValue("@Insurance_No", txtLogIns.Text.ToString());
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["NIC_No"] = txtLogNIC.Text.ToString();
                    txtInfo.Text = "Login Successful!";

                    reader.Close();
                    con.Close();

                    Response.Redirect("~/PUBLIC.aspx");
                }
                else
                {
                    txtInfo.Text = "Invalid Credentials";
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