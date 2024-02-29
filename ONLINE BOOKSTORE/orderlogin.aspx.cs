using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class orderlogin : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection scon;
    private SqlDataReader dr;
    private SqlDataAdapter da;
    DataSet ds;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
         scon.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from login where username like ' " + (TextBox1.Text) + " ' and password like ' " + TextBox2.Text + " ' ", scon);

        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {

            string userid = ds.Tables[0].Rows[0][0].ToString();
            string url = Request.QueryString["itemid"].ToString();
            string catid = Request.QueryString["catid"].ToString();
            Response.Redirect("~/orderinfo.aspx?itemid=" + url.ToString() +"&"+"catid="+catid.ToString()+ "&"+"userid=" + userid.ToString());
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = "Try again for login or register as new user if  you are not authorized User";
        } 
    }
}
