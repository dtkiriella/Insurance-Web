using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


namespace OnlineAccidentSubmission
{
    public partial class PUBLIC : System.Web.UI.Page
    {
   


        



        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Image"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        






        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Images", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvImages.DataSource = dt;
                        gvImages.DataBind();
                    }
                }
            }

        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePublic.aspx");




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Incident_Time = txtIncidentTime.Text;
            string Collision_Date = txtDate.Text;
            string Desc = txtDesc.Text;
            string Name = txtAcName.Text;
            string Passengers_No = txtNoPassengers.Text;
            string Injury_Count = txtInjPpl.Text;
            string Incident_Location = txt_location.Text;
            string Complain_No = txtInsComplain.Text;


            if (Incident_Time != "" && Collision_Date != "" && Collision_Date != "" && Desc != "" && Name != ""
          && Passengers_No != "" && Injury_Count != "" && Incident_Location != "" && Complain_No != "")
            {


                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
                string sql = "Insert Into AccidentInfo_Pub  Values('" + Incident_Time + "','" + Collision_Date + "','" + Desc + "','"
                + Name + "','" + Passengers_No + "','" + Injury_Count + "','" + Incident_Location + "','" + Complain_No + "')";
                SqlCommand cmd = new SqlCommand(sql, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Data Insertion is Carried out Perfectly");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
            else
            {
                Response.Write("Please Insert Data to each and every field");
            }


            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
            string constr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                string sql = "INSERT INTO Images VALUES(@Name, @Image, @ContentType)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                    cmd.Parameters.AddWithValue("@ContentType", FileUpload1.PostedFile.ContentType);
                    cmd.Parameters.AddWithValue("@Image", bytes);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            Response.Redirect(Request.Url.AbsoluteUri);



        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            txtIncidentTime.Text = "";
            txtDate.Text = "";
            txtDesc.Text = "";
            txtAcName.Text = "";
            txtNoPassengers.Text = "";
            txtInjPpl.Text = "";
            txt_location.Text = "";


        }

        
    }





}