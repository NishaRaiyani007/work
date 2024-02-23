using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_changepass : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        d.Aid = int.Parse(Session["id"].ToString());
        d.Pass = txtold.Text;
        d.Status = "changepwd";
        DataTable dt = b.disp_admin(d);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script>alert('Wrong Password');</script>");
        }
        else
        {
            d.Pass = txtnew.Text;
            d.Aid = int.Parse(Session["id"].ToString());
            d.Status = "updatepass";
            int i = b.op_admin(d);
            if (i == 0)
            {
                Response.Write("<script>alert('Password Not Changed..');</script>");
            }
            else
            {
                Response.Write("<script>alert('Password Changed..');</script>");
            }
        }
    }
}