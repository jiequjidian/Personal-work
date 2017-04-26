<%@ WebHandler Language="C#" Class="Index" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Data;

public class Index : IHttpHandler {
    SqlHelper sh=new SqlHelper ();
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        if (context.Request.Cookies["username"] != null && context.Request.Cookies["username"].Value != "")
        {
            if (context.Request.Cookies["password"] != null && context.Request.Cookies["username"].Value != "")
            {
                string username = context.Request.Cookies["username"].Value;
                string password = context.Request.Cookies["password"].Value;

                SqlConnection con = new SqlConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("query1", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@TxtAccount";
                p1.SqlDbType = System.Data.SqlDbType.NChar;
                p1.Value = username;
                cmd.Parameters.Add(p1);

                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@TxtPassword";
                p2.SqlDbType = System.Data.SqlDbType.NChar;
                p2.Value = password;
                cmd.Parameters.Add(p2);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    context.Response.Write("hello world");
                }
            }
        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}