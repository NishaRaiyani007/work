using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        d.Status = "feedback";
        d.Vnm = txtname.Text;
        d.Vemail = txtemail.Text;
        d.Phone = txtphone.Text;
        d.Msg = txtmsg.Text;
        int i = b.op_contact(d);
        if (i == 0)
        {
            Response.Write("<script>alert('Offo something missing.. Data Not Stored!!'); </script>");
        }
        else
        {
            Response.Write("<script>alert('Thank You..!!'); </script>");
        }
    }
}