using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace OnlineAccidentSubmission
{
    public partial class ProfilePublic : System.Web.UI.Page
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




        protected void UpdateButton(object sender, EventArgs e)
        {

            string NewComplain_No = txtNewComNo.Text;
            string NewIncident_Time = txtNewIncidentTime.Text;
            string NewCollision_Date = txtNewtDate.Text;
            string Newdesc = txtNewDesc.Text;
            string NewName = txtNewAcName.Text;
            string NewPassNo = txtNewNoPassengers.Text;
            string NewInjNo = txtNewInjPpl.Text;
            string NewLoc = txtNew_location.Text;



            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
            string qry = "UPDATE AccidentInfo_Pub SET Incident_Time='" + NewIncident_Time + "',Collision_Date='" + NewCollision_Date + "',describe='" + Newdesc + "', Name='" + NewName + "' , Passenger_No='" + NewPassNo + "',Injury_Count='" + NewInjNo + "',Incident_Location='" + NewLoc + "' WHERE Complain_No='" + NewComplain_No + "' ";
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

        protected void BACKButton(object sender, EventArgs e)
        {
            Response.Redirect("~/PUBLIC.aspx");
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

        protected void Button4_Click(object sender, EventArgs e)
        {
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
        }
    }
}