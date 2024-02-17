using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using bal;
using System.IO;


public partial class TimeOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Request.QueryString["id"] != null)
        //    {
        //        lnk_submit_Click(sender, e);
        //    }
        //}

    }
    protected void lnk_submit_Click(object sender, EventArgs e)
    {
        
        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int UserID = Convert.ToInt32(Session["UID"]);


        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.Evaluation(4, 0, catID, subcatID, UserID, 0, "", 0, "", "", "", "", "", "");

        if (ds2.Tables[0].Rows.Count > 0)
        {

            //int catID = Convert.ToInt32(Session["catID"].ToString());
            //int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.QuestionPaper(11, 0, catID, subcatID, UserID, 0, "", "", "", "", "", "", "", "", "", 0);

            int count = ds1.Tables[0].Rows.Count;
            ViewState["Count"] = count;
            int resultcount = 0;

            for (int i = 0; i < count; i++)
            {
                string resultset;
                resultset = ds1.Tables[0].Rows[i]["MyDesiredResult"].ToString();
                if (resultset == "1")
                {
                    resultcount = resultcount + 1;
                }

                ViewState["resultset"] = resultcount;
            }

            //lblScore.Text = ViewState["resultset"].ToString();


            double percentage = ((resultcount * 100) / count);

            //double percentage = resultcount / count

            try
            {

                string name = Session["Username"].ToString(); ;

                string TotalQuestions = ViewState["Count"].ToString();

                string TotalAnswers = ViewState["resultset"].ToString();

                //Create the msg object to be sent    
                MailMessage msg = new MailMessage();
                MailMessage MsgReply = new MailMessage();
               
                msg.To.Add("sreedhar.wincent@gmail.com");
              //  msg.CC.Add("mudasir.wincent@gmail.com");
                
                msg.Subject = "Testing PO Tracking Online Exam Result ..";

                string Email = "sreedhar.wincent@gmail.com";
                MailAddress Address = new MailAddress("'" + Email + "'");
                //MailAddress AddressReply = new MailAddress("sachin.wincent@gmail.com");


                //MsgReply.From = AddressReply;
                msg.From = Address;

                MsgReply.IsBodyHtml = true;
                msg.IsBodyHtml = true;

                msg.Body = "<html><head></head><body >" +

                           "<br>" +

                            "<center><img src='http://exam.jcrrealities.com/images/logo.jpg' style='padding-right:15px;'></center> " +

                           "<div style='Background-color:#6D7B8D'>" +


                           "<p  style='color:whitesmoke;font-family:calibri;font-size:30px;font-weight:bold;text-align:center;'> Result Sheet </p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Name : " + name + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Questions : " + TotalQuestions + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Correct Answers : " + TotalAnswers + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Grade(%) : " + percentage + " % " + "</p>" +

                           "</div>" +

                           "</body></html>";

                //MsgReply.Body = "<html><head></head><body>" +
                //           "<p>Your Registration to Betterfly Consultancy Services is Confirmed !</p>" +

                //           "</body></html>";

                //Configure an SmtpClient to send the mail.   
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                //only enable this if your provider requires it   
                //Setup credentials to login to our sender email address ("UserName", "Password")  
                NetworkCredential credentials = new NetworkCredential("wincentdemo@gmail.com", "@wincent");
                //NetworkCredential credentials = new NetworkCredential("importpotracking@gmail.com", "ipot123ipot");

                client.Credentials = credentials;
                //Send the msg   
                client.Send(msg);
                //client.Send(MsgReply);
                //lblreply.Text = "Your message was sent!";
                //Clear the form   


                //string name = TxtName.Text;

                //string email = Textmail.Text;
                //string mobile = txtmob.Text;
                //string age = txtage.Text;
                //string qualification = txtqual.Text;
                //string experience = txtexp.Text;
                //string stream = txtstream.Text;
                //string explain = txtexplain.Text;


                //Class1 obj = new Class1();
                //DataSet ds = new DataSet();
                //ds = obj.Insert_to_Registration(1, 0, name, email, mobile, age, qualification, experience, stream, explain);



                //    TxtName.Text = "";

                //    Textmail.Text = "";
                //    txtmob.Text = "";
                //    txtage.Text = "";
                //    txtqual.Text = "";
                //    txtexp.Text = "";
                //    txtstream.Text = "";
                //    txtexplain.Text = "";
                //    lblreply.Visible = true;
                //    Response.Write("<script>alert('Registered Successfully');</script>");

                //    lblreply.Text = "Registered Successfully";
                //    lblreply.ForeColor = System.Drawing.Color.Blue;

                //Page.ClientScript.RegisterStartupScript(Page.GetType(), "Count Exceeded", "alert('Thanks ! Your Examination Paper submitted successfully ..');", true);

                Class1 obj3 = new Class1();
                DataSet ds3 = new DataSet();
                ds3 = obj3.Assign(7, 0, catID, subcatID, UserID, "", "", "", 1, "");

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Your Examination Paper submitted successfully ..'); window.location='" +
                 "index.aspx';", true);

                Session.Clear();
                Session.Abandon();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Unable to Submit your Application ! Please Try again Later ..');</script>");
                //lblreply.Text = "Unable to register please try again";
            }
        }

        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                   "alert('uhh !! please choose the answers first..');", true);

        }


   
    }
}
