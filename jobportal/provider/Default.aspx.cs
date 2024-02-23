using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class provider_Default : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_error.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        d.Status = "login";
        d.Email=txtunm.Text;
        d.Pwd=txtpass.Text;
        DataTable dt = b.disp_Reg(d);
        if (dt.Rows.Count == 0)
        {
            lbl_error.Visible = true;
        }
        else
        {
            Session["id"] = dt.Rows[0]["jid"];
            Session["uname"] = txtunm.Text;
            Response.Redirect("myprofile.aspx");
        }
    }
    }
}