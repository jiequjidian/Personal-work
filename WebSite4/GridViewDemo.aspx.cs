using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GridViewDemo : System.Web.UI.Page
{
    DataTable dt = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        String constr = "Data Source=localhost;Initial Catalog=test;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        dt = new DataTable();
        SqlDataAdapter sdr = new SqlDataAdapter("select * from student", con);
        dt = new DataTable();
        sdr.Fill(dt);
        GridView1.DataSource = dt;
        if (Session["useraccount"] != null)            　//判断管理员是否登录
        {
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("~/login.aspx");            //返回到登录页面
        }     
       
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //设置每行的行鼠标经过时，行的颜色发生改变。
        int i;
        for ( i = 0; i < GridView1.Rows.Count; i++)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor:'#00A9FF'");
                e.Row.Attributes.Add("onmouseout", "this.backgroundColor=c");

            }
        }
    }
  
}