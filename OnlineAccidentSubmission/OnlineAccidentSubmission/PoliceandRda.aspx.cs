using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;



namespace OnlineAccidentSubmission
{
    public partial class PoliceandRda : System.Web.UI.Page
    {
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
            try
            {
                // Load the GridView on Page_Load event
                BindGridView();
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        protected void BindGridView()
        {

            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-Q0P6RT4;Initial Catalog=ACCIDENTWEBDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select id, Name,Image from Images", connection);

            connection.Open();

            SqlDataReader dataReader = cmd.ExecuteReader();

            gvImages.DataSource = dataReader;
            gvImages.DataBind();
        }

       

        
    }
}