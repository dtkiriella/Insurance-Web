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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string NIC_NO = txtNiC.Text;
            string FULL_Name = txtName.Text;
            string Class_of_Vehicle = txtClassVehcile.Text;
            string Status_Reg = txtStatReg.Text;
            string Insurance_No = txtInsNo.Text;
            string Insurance_Category = txtInsCat.Text;
            string Vehicle_No = txtVehicleNo.Text;
            string Engine_No = txtEngNo.Text;

            if (NIC_NO != "" && FULL_Name != "" && Class_of_Vehicle != "" && Status_Reg != "" && Insurance_No != ""
             && Insurance_Category != "" && Vehicle_No != "" && Engine_No != "") 
            {

            


                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into Pub_RegInfo Values('" + NIC_NO + "','" + FULL_Name + "','" + Class_of_Vehicle + "','"
                + Status_Reg + "','" + Insurance_No + "','" + Insurance_Category + "','" + Vehicle_No + "','" + Engine_No + "')";

                SqlCommand cmd =new SqlCommand(sql,con);
                cmd.Parameters.AddWithValue("@Insurance_Category", txtInsCat.SelectedItem.Value);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Data Insertion carried out Successfully");
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
               

            }
            else
            {
                Response.Write("Please Enter Data to all the Fields");
            }




            



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtNiC.Text = "";
            txtName.Text = "";
            txtClassVehcile.Text = "";
            txtStatReg.Text = "";
            txtInsNo.Text = "";
            txtInsCat.Text = "";
            txtVehicleNo.Text = "";
            txtEngNo.Text = "";

        }
    }
}