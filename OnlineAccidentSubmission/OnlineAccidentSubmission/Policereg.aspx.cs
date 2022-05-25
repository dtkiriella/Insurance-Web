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
    public partial class Policereg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string SSN=txtssn.Text;
            string Nic=txtNICP.Text;
            string Name=txtPOName.Text;
            string Loc_Dep=txtLocDep.Text;
            string District =txtDis.Text;
            string Dep_Name=txtNameDep.Text;


            if(SSN!="" && Nic!="" && Name!="" && Loc_Dep!="" && District!="" && Dep_Name!="" && Dep_Name!="" )
            {
                SqlConnection con =new  SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into Police_RegInfo Values('" + SSN + "','" + Nic + "','" + Name + "','"+Loc_Dep+"','" + District + "','" + Dep_Name + "')";
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
            txtssn.Text = "";
            txtNICP.Text = "";
            txtPOName.Text = "";
            txtLocDep.Text = "";
            txtDis.Text = "";
            txtNameDep.Text = "";
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginother.aspx");
        }
    }
}