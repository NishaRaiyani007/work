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

public partial class adminlogin : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "alpa" && TextBox2.Text == "lathiya")
        {
            Response.Redirect("adminmain.aspx");
        }
        if (TextBox1.Text == "hiral" && TextBox2.Text == "mendapara")
        {
            Response.Redirect("adminmain.aspx");
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = "You are not authorized user for administrative tasks";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}
