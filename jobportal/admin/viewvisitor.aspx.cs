using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class admin_viewuser : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        if (!IsPostBack)
        {
            disp();
        }
    }

    public void disp()
    {
        d.Status = "select";
        GridView1.DataSource = b.disp_contact(d);
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Panel1.Visible = true;
        int rowindex = e.NewSelectedIndex;
        d.Vid = int.Parse(GridView1.DataKeys[rowindex].Values["vid"].ToString());
        d.Status = "email";
        DataTable dt = b.disp_contact(d);
        txttoemail.Text = dt.Rows[0]["email"].ToString();
    }


    protected void btnsend_Click(object sender, EventArgs e)
    {
        string mail = txttoemail.Text;
        string sub = txtsub.Text;
        string msg = txtmsg.Text;
        SendMail(mail, sub, msg);
        Response.Write("<script>alert('Mail succssfully sent..!!');</script>")
    }
    protected void SendMail(string name, string toadd, string msg)
    {
        var fromAddress = "pujaa.bhattii@gmail.com";

        var toAddress = "pbhatti93@gmail.com";

        const string fromPassword = "pbhatti1234321";

        string subject = "Suggestion From " + name;
        string body = "From: " + name + "\n";
        body += "Email: " + toadd + "\n";
        body += "Subject: " + subject + "\n";
        body += "Your Password Is : \n" + msg + "\n";

        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }

        smtp.Send(fromAddress, toAddress, subject, body);
    }
}