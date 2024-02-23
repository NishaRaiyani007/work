using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class forgotpwd : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        d.Status = "forgot";
        d.Email = txttext.Text;
        DataTable dt = b.disp_Reg(d);
        if (dt.Rows.Count == 0)
        {
            lblpwd.Text = "Wrong Username";
        }
        else
        {
            lblpwd.Text = dt.Rows[0]["pwd"].ToString();    
        }
    }
}