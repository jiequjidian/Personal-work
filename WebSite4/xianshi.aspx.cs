using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class xianshi : System.Web.UI.Page
{
    private DataTable dt;
    private void Bind()
    {
        String constr="Data Source=localhost;Initial Catalog=test;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlDataAdapter sdr = new SqlDataAdapter("select * from student", con);
        dt = new DataTable();
        sdr.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["useraccount"] != null)            　//判断管理员是否登录
        {
            Bind();
        } 
        else
        {
            Response.Redirect("~/login.aspx");            //返回到登录页面
        }     
       

    }

   
  
}