using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace OnlineAccidentSubmission
{
    public partial class RESULTS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);


            conn.Open();
            string sql = "SELECT Complain_No,AprRej,ClaimingDocs  from DataAnalysis";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();


            GridView3.DataSource = reader;
            GridView3.DataBind();

            conn.Close();

            
        }
        


    }
}