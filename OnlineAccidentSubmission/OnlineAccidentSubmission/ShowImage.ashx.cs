using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace OnlineAccidentSubmission
{
    /// <summary>
    /// Summary description for ShowImage
    /// </summary>
    public class ShowImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string Id = context.Request.QueryString["Id"].ToString();
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ASPDBConnectionString"].ToString();
            SqlConnection objConn = new SqlConnection(sConn);
            objConn.Open();
            string sTSQL = "SELECT Image from Images where Id=@Id";
            SqlCommand objCmd = new SqlCommand(sTSQL, objConn);
            objCmd.CommandType = CommandType.Text;
            objCmd.Parameters.AddWithValue("@Id", Id.ToString());
            object data = objCmd.ExecuteScalar();
            objConn.Close();
            objCmd.Dispose();
            context.Response.BinaryWrite((byte[])data);
        }
       
        

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }


    }

   
    
}