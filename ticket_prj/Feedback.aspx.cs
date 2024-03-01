using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbo.setdata("insert into Feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "' ,'" + TextBox4.Text + "')");

    }
}