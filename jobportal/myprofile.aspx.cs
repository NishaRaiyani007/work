using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class myprofile : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            disp();
        }
        lblupdate.Visible = false;
        lblnotupdate.Visible = false;
       
    }
    public void disp()
    {
        d.Uid = int.Parse(Session["id"].ToString());
        d.Status = "myprofile";
        DataTable dt = b.disp_Reg(d);
        txtfnm.Text = dt.Rows[0]["fnm"].ToString();
        txtlnm.Text = dt.Rows[0]["lnm"].ToString();
        txtmob.Text = dt.Rows[0]["mob"].ToString();
        radgen.SelectedItem.Text = dt.Rows[0]["gen"].ToString();
        txtdob.Text = dt.Rows[0]["dob"].ToString();
        txtmail.Text = dt.Rows[0]["mail"].ToString();
        ddcountry.SelectedItem.Text = dt.Rows[0]["country"].ToString();
        ddexp.SelectedItem.Text = dt.Rows[0]["expe"].ToString();
        ddeducation.SelectedItem.Text = dt.Rows[0]["education"].ToString();    
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        d.Status = "update";
        d.Fnm = txtfnm.Text;
        d.Lnm = txtlnm.Text;
        d.Mobile = txtmob.Text;
        d.Gender = radgen.SelectedItem.Text;
        d.Dob = txtdob.Text;
        d.Email = txtmail.Text;
        d.Country = ddcountry.SelectedItem.Text;
        d.Expe = ddexp.SelectedItem.Text;
        d.Education = ddeducation.SelectedItem.Text;
        int i = b.op_Reg(d);
        if (i == 0)
        {
            lblnotupdate.Visible = true;
        }
        else
        {
            lblupdate.Visible = true;
        }
    }
    protected void linkbtnchange_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepwd.aspx");
    }
}