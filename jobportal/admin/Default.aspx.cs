using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        d.Status = "login";
        d.Emailid = txtunm.Text;
        d.Pass = txtpwd.Text;
        DataTable dt = b.disp_admin(d);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script>alert('Username or Password is incorrect..!!');</script>");
        }
        else
        {
            Session["id"] = dt.Rows[0]["aid"];
            Session["uname"] = txtunm.Text;
            Response.Redirect("home.aspx");
        }

    }

    protected void linkforgetpwd_Click(object sender, EventArgs e)
    {
       
    }
}