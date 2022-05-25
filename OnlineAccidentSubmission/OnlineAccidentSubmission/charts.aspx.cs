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
    public partial class charts : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand com;
        private string constr, query;
        private void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ToString();
            con = new SqlConnection(constr);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bindchart();

            }
          
        }
      


        private void Bindchart()
        {
            connection();
            com = new SqlCommand("GetAccidentData", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable ChartData = ds.Tables[0];

           
            string[] XPointMember = new string[ChartData.Rows.Count];
            int[] YPointMember = new int[ChartData.Rows.Count];

            for (int count = 0; count < ChartData.Rows.Count; count++)
            {
               
                XPointMember[count] = ChartData.Rows[count]["Incident_Location"].ToString();
      
                YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["Passenger_No"]);

            }
           
            Chartdetails.Series[0].Points.DataBindXY(XPointMember, YPointMember);

           
            Chartdetails.Series[0].BorderWidth = 10;
          
            Chartdetails.Series[0].ChartType = SeriesChartType.Pie;
            foreach (Series charts in Chartdetails.Series)
            {
                foreach (DataPoint point in charts.Points)
                {
                    switch (point.AxisLabel)
                    {
                        case "Q1": point.Color = Color.RoyalBlue; break;
                        case "Q2": point.Color = Color.SaddleBrown; break;
                        case "Q3": point.Color = Color.SpringGreen; break;
                    }
                    point.Label = string.Format("{0:0} - {1}", point.YValues[0], point.AxisLabel);

                }
            }
            
            con.Close();

            

        }
    }
}