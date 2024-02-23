using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class changepwd : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void btnchange_Click(object sender, EventArgs e)
    {
        d.Uid = int.Parse(Session["id"].ToString());
        d.Pwd = txtold.Text;
        d.Status = "changepwd";
        DataTable dt = b.disp_Reg(d);
        if (dt.Rows.Count == 0)
        {
            Response.Write("Wrong Password");
        }
        else
        {
            d.Pwd = txtnew.Text;
            d.Uid = int.Parse(Session["uid"].ToString());
            d.Status = "updatepass";
            d.Pwd = dt.Rows[0]["pwd"].ToString();
            Response.Write("Password Changed..!!");
        }
       
    }
}