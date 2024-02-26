using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("LOGIN.aspx");
    }

    protected void lksearch_Click(object sender, EventArgs e)
    {
        Session["Search"] = TextBox1.Text;
        Response.Redirect("CompanySearch.aspx");
    }
}
