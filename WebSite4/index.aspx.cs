using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class index : System.Web.UI.Page
{
    SqlHelper sh = new SqlHelper();
    String connStr = "Data Source=localhost;Initial Catalog=test;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("proc_student2", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@userid";
        p1.DbType = DbType.Int32;
        p1.Value = 1;
        cmd.Parameters.Add(p1);
        SqlDataReader sdr = cmd.ExecuteReader();
        if(sdr.HasRows)
        {
            GridView1.DataSource = sdr;
            GridView1.DataBind();
        }
        con.Close();
        //Label1.Text = Session["username"].ToString();
        //Label1.Text=Request.QueryString["username"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String email = "";
        SqlConnection con = sh.getConn();
        con.Open();
        SqlTransaction trans = con.BeginTransaction();
        try
        {
            string sql = string.Format("select id,TxtEmail from T_Reg where TxtAccount='{0}'");
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Transaction = trans;
            SqlDataReader sdr = cmd.ExecuteReader();
            int id = -1;
            if (sdr.HasRows)
            {
                sdr.Read();
                id = sdr.GetInt32(0);
                email = sdr.GetString(1);

            }
            sdr.Close();
        }
        catch (Exception)
        {
            trans.Rollback();

            
        }
        con.Close();
        SendMail sm = new SendMail();
        sm.SendEmail(email, "骚年，你的邮件到了");

    }
}