using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlHelper sh = new SqlHelper();
    public void Randomcheck()
    {
        Random r = new Random();
        TextBox8.Text = Convert.ToString(r.Next(1000, 9999));
           
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Randomcheck();
        }
    }
    protected void CvAccount_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        /*if the account exists, show error*/
        String sql = String.Format("select id from T_Reg where TxtAccount='{0}'", args.Value);
        SqlDataReader sdr = sh.QueryOperation(sql);
        if (sdr.HasRows)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            //add account
                String sql = String.Format("insert into T_Reg values('{0}','{1}',{2},'{3}','{4}')",
                    TxtAccount.Text, TxtPassword.Text, TxtAge.Text, TxtPhone.Text, TxtEmail.Text);
                sh.ExeNonQuery(sql);
                Response.Redirect("~/Default.aspx");
            }
            
        }
}