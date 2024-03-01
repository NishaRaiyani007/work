using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    
    protected void Button1_Click(object sender, EventArgs e)
    {
DataTable dt =  dbo.getdata("select * from users where Username = '"+ TextBox1.Text+ "' and Password = '"+ TextBox2.Text +"'");
if (dt.Rows.Count > 0)
{
    Session["uid"] = dt.Rows[0]["Userid"].ToString();
    Response.Redirect("Home.aspx");
}
    }
}
