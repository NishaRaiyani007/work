using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.Net;
using System.Data;


public partial class admin_forgotpass : System.Web.UI.Page
{
    DAL d = new DAL();
    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        d.Emailid = txtemail.Text;
        d.Status = "forgot";
        DataTable dt = b.disp_admin(d);
        string demail = dt.Rows[0]["emailid"].ToString();
        string pass = dt.Rows[0]["pass"].ToString();
        if (d.Emailid == demail)
        {
            SendMail("pbhatti93@gmail.com", txtemail.Text, pass);
        }
        else
        {
            Response.Write("<script>alert('**********');</script>");
        }

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