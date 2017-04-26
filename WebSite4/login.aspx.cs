using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlHelper sh = new SqlHelper();  
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      //连接数据库，用已有的存储过程来进行检查是否是已注册的用户
        if(TextBox3.Text.Equals(Session["VerificationCode"].ToString())){
        SqlConnection con = new SqlConnection(
            System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("query1", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@TxtAccount";
        p1.SqlDbType = System.Data.SqlDbType.NChar;
        p1.Value = TextBox1.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@TxtPassword";
        p2.SqlDbType = System.Data.SqlDbType.NChar;
        p2.Value = TextBox2.Text;
        cmd.Parameters.Add(p2);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            //modify session 添加用户账户
            Session.Add("useraccount", TextBox1.Text);
            Response.Redirect("~/xianshi.aspx");
        }
        else
        {
            Label1.Visible = true;

        }
       
        
        }
        else
        {
            //反馈验证码有误，不执行数据库连接操作
            Label2.Visible = true;
    }
  

}
    
   
}