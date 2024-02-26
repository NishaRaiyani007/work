using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected SmtpClient SMTP = new SmtpClient();
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Dataclass dc = new Dataclass();
        DataSet ds = new DataSet();
        ds = dc.For_pass(TextBox1.Text);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                MailMessage Mail = new MailMessage();
                MailMessage message = new MailMessage();
                message.To.Add(TextBox1.Text);
                message.From = new MailAddress("info@enlisting.com");
                message.Subject = "Your Password !!!";
                message.Body = ds.Tables[0].Rows[0]["Password"].ToString();
                message.IsBodyHtml = true;
                SMTP.EnableSsl = true;
                SMTP.Credentials = new System.Net.NetworkCredential("divyamakwana98@gmail.com", "9687527301");
                Label2.Text = "Password is successfully sent to your mail";
                try
                {
                    SMTP.Send(message);
                }
                catch (Exception ex_object)
                {

                }
                TextBox1.Text = "";
            }
            else
            {
                Label2.Text = "Email Is Not Exist In Our DataBase !!!";
            }
        }
        else
        {
            Label2.Text = "Email Is Not Exist In Our DataBase !!!";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
    }
}