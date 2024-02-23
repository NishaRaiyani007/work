using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        d.Status = "insert";
        d.Fnm = txtfnm.Text;
        d.Lnm = txtlnm.Text;
        d.Mobile = txtmob.Text;
        d.Gender = radgen.SelectedItem.Text;
        d.Dob = txtdob.Text;
        d.Email = txtmail.Text;
        d.Pwd = txtpwd.Text;
        d.Country = ddcountry.SelectedItem.Text;
        d.Expe = ddexp.SelectedItem.Text;
        d.Education = ddeducation.SelectedItem.Text;
        int i = b.op_Reg(d);
        if (i == 0)
        {
            Label2.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }
    }
    
}