using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class shangpin : System.Web.UI.Page
{
    public void bind()
    {
        String constr="Data Source=localhost;Initial Catalog=Smart;Integrated Security=True";
        SqlConnection conn1=new SqlConnection(constr);
        conn1.Open();
        SqlDataAdapter sdr=new SqlDataAdapter("select * from T_Ware",conn1);
        DataTable dt=new DataTable();
        sdr.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        }
        
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["useraccount"] != null)            　//判断管理员是否登录
        {
            bind();
        }
        else
        {
            Response.Redirect("~/login.aspx");            //返回到登录页面
        }     
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowIndex = e.RowIndex;
        String spName = ((TextBox)(GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox1"))).Text;
        String spPrice = ((TextBox)(GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox2"))).Text;
        String spNumber = ((TextBox)(GridView1.Rows[rowIndex].Cells[1].FindControl("TextBox3"))).Text;
        String keys = GridView1.DataKeys[rowIndex].Value.ToString();
        String sql = String.Format("update T_Ware set Ware_Name='{0},Ware_Price='{1}',Ware_Number='{2}'where Ware_ID='{3}'", spName, spPrice, spNumber, keys);
        UpdateQuery(sql);
        GridView1.EditIndex = -1;
        bind();
    }

    public bool UpdateQuery(string sql)
    {
        String constr = "Data Source=localhost;Initial Catalog=Smart;Integrated Security=True";
        SqlConnection conn1 = new SqlConnection(constr);
        if (conn1.State == ConnectionState.Closed)
            conn1.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn1;
        cmd.CommandText = sql;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch(Exception ex)
        {
            throw ex;
            // return false;
        }
        return true;

    
    }
}