using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dataclass dcobj = new Dataclass();
        GridView1.DataSource = dcobj.SearchProperty(Session["Search"].ToString()).Tables[2];
        GridView1.DataBind();
    }
}