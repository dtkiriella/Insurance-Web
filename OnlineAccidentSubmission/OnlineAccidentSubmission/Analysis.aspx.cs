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
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace OnlineAccidentSubmission
{
    public partial class Analysis : System.Web.UI.Page
    {
      
     
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);


            conn.Open();
            string sql = "SELECT * from Pub_RegInfo";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();


            GridView1.DataSource = reader;
            GridView1.DataBind();

            conn.Close();
           
            {
                if (!this.IsPostBack)
                {
                    this.BindListView();
                }
            }

        }
     

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PoliceandRda.aspx");
        }


        private void BindListView()
        {
            string constr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT Complain_No, Collision_Date, Name,describe,Incident_Time,Incident_Location,Injury_Count,Passenger_No FROM AccidentInfo_Pub ";
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        lvCustomers.DataSource = dt;
                        lvCustomers.DataBind();
                    }
                }
            }
        }
        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lvCustomers.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.BindListView();
        }

        
    }
}