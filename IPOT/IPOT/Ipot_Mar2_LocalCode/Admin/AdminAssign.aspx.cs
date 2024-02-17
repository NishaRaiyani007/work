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

public partial class Admin_AdminAssign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showcategory();
            showUsers();
            BindAssignUsers();
            //settime();
        }
       
    }
    public void showcategory()
    {
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(2, 0, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DDCategory.Items.Clear();
        DDCategory.Items.Add(new ListItem("-Select Category-", "0"));

        foreach (DataRow dr in dt.Rows)
        {                       
            DDCategory.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));

        }
       
       
    }
    protected void Bindsubcategory_indexchange(object sender, EventArgs e)
    {

        string Catid = DDCategory.SelectedValue.ToString();
        Session["CatID"] = Catid;
        int cat = Convert.ToInt32(Catid);
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(6, cat, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DDSubCategory.Items.Clear();
        DDSubCategory.Items.Add(new ListItem("---Select Paper---", "0"));

        foreach (DataRow dr in dt.Rows)
        {
            DDSubCategory.Items.Add(new ListItem(dr["SubCatgName"].ToString(), dr["SubCatgID"].ToString()));

        }


    }

    public void showUsers()
    {
        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.Users(4, 0, "", "", "", "", 1,0, "", "");
        DataTable dt = ds2.Tables[0];
        DDUserName.Items.Clear();
        DDUserName.Items.Add(new ListItem("---Select User---", "0"));

        foreach (DataRow dr in dt.Rows)
        {
            
            DDUserName.Items.Add(new ListItem(dr["Username"].ToString(), dr["Uid"].ToString()));

        }
       
    }




   
    public void settime()
    {
        Class1 obj3 = new Class1();
        DataSet ds3 = new DataSet();
        ds3 = obj3.Users(4, 0, "", "", "", "", 1, 0, "", "");
        DataTable dt = ds3.Tables[0];
        DDTime.Items.Clear();
        DDTime.Items.Add(new ListItem("---Set Time---", "0"));

        foreach (DataRow dr in dt.Rows)
        {

            DDTime.Items.Add(new ListItem(dr["SetTimings"].ToString(), dr["SetTimings"].ToString()));

        }

    }




    protected void Assign_Click(object sender, EventArgs e)
    {
         int Catid= Convert.ToInt32(  Session["CatID"]);
         int SubCatID = Convert.ToInt32(Session["SubCatID"]);
         int UserID = Convert.ToInt32(Session["UserID"]);
         string SetTimings = Session["SetTimings"].ToString();


         Class1 obj22 = new Class1();
         DataSet ds22 = new DataSet();
         ds22 = obj22.Assign(5, 0, 0, 0, UserID, "", "", "", 0, SetTimings);

         if (ds22.Tables[0].Rows.Count > 0)
         {
             //string cleanMessage = "Current Question Paper is Already Assigned to this User ...";
             //string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>"; 


             // Cleans the message to allow single quotation marks 
             string cleanMessage = "Current Question Paper is Already Assigned to this User ...";
               string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>"; 

               // Gets the executing web page 
               Page page = HttpContext.Current.CurrentHandler as Page; 

               // Checks if the handler is a Page and that the script isn't allready on the Page 
               if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert")) 
               { 
                 page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script); 
               } 

          }

         else
         {

             Class1 obj2 = new Class1();
             DataSet ds2 = new DataSet();
             ds2 = obj2.Assign(1, 0, Catid, SubCatID, UserID, "", "", "", 0,SetTimings);
             BindAssignUsers();



             Class1 obj4 = new Class1();
             DataSet ds4 = new DataSet();
             ds4 = obj4.Assign(8, 0, 0, 0, UserID, "", "", "", 0, "");

             if (ds4.Tables[0].Rows.Count > 0)
             {

                 try
                 {
                     string Email = ds4.Tables[0].Rows[0]["EmailId"].ToString();

                     //Create the msg object to be sent    
                     MailMessage msg = new MailMessage();
                     MailMessage MsgReply = new MailMessage();

                     //Add email address of the recipients

                     msg.To.Add(Email);

                 

                     msg.To.Add(Email);
                     msg.Subject = "Testing RNH RP Online Exam Request ..";
                     //MsgReply.To.Add(Textmail.Text);
                     //Configure the address we are sending the mail from 
                     //string Email = "stnithin@yahoo.com";
                     MailAddress Address = new MailAddress("'" + Email + "'");
                     //MailAddress AddressReply = new MailAddress("sachin.wincent@gmail.com");


                     //MsgReply.From = AddressReply;
                     msg.From = Address;

                     MsgReply.IsBodyHtml = true;
                     msg.IsBodyHtml = true;

                     msg.Body = "<html><head></head><body >" +

                                "<br>" +

                                 "<center><img src='http://www.RNHRP(online).com/images/logo.jpg' style='padding-right:15px;'></center> " +

                                "<div style='Background-color:#6D7B8D'>" +


                                "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:justify;'> <b>Hello,</b><br> This is a mail from RNH Recruitment ..Please take up the test by logging in to the website <a href='http://www.RNH.in'> www.RNH.in </a> " + "</p>" +


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
                     //NetworkCredential credentials = new NetworkCredential("wincentdemo@gmail.com", "@wincent");
                     NetworkCredential credentials = new NetworkCredential("rupareliyanalin@gmail.com", "n9714650345n");

                     client.Credentials = credentials;
                     //Send the msg   
                     client.Send(msg);

                     string cleanMessage = "Question Paper is Assigned to this User & Exam request is sent to his/her Email ID...";
                     string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>";
                     obj4.Users(7, 0, "", "", "", "", 0, 0, "", "");
                     // Gets the executing web page 
                     Page page = HttpContext.Current.CurrentHandler as Page;

                     // Checks if the handler is a Page and that the script isn't allready on the Page 
                     if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
                     {
                         page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script);
                     }
                 }

                 catch (Exception ex)

                 {
                     string cleanMessage = "Invalid Request , Please check the Email is proper or not ?";
                     string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>";
                     obj4.Users(7, 0, "", "", "", "", 0, 0, "", "");
                     // Gets the executing web page 
                     Page page = HttpContext.Current.CurrentHandler as Page;

                     // Checks if the handler is a Page and that the script isn't allready on the Page 
                     if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
                     {
                         page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script);
                     }
                 }

             }
             

         }
       
    }

    public void BindAssignUsers()

     {
        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.Assign(9, 0, 0, 0, 0, "", "", "", 0,"");
        show_Assign_users.DataSource = ds2;
        show_Assign_users.DataBind();
    
    }
    protected void DDSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string SubCatID = DDSubCategory.SelectedValue.ToString();
        Session["SubCatID"] = SubCatID;
    }
    protected void DDUserName_SelectedIndexChanged(object sender, EventArgs e)
    {
        string UserID = DDUserName.SelectedValue.ToString();
        Session["UserID"] = UserID;

    }
    protected void DDTime_SelectedIndexChanged(object sender, EventArgs e)
    {
        string SetTimings = DDTime.SelectedItem.ToString();
        var str = SetTimings.Split(' ');
        var str2 = str[0];
        Session["SetTimings"] = str[0].ToString();

    }
    

    protected void row_index(object sender, GridViewPageEventArgs e)
    {
        show_Assign_users.PageIndex = e.NewPageIndex;
        BindAssignUsers();
    }
    protected void row_delete(object sender, CommandEventArgs e)
    {

        try
        {
            int AID = Convert.ToInt32(e.CommandArgument);
            Class1 obj = new Class1();
            DataSet ds = new DataSet();
            ds = obj.Assign(4, AID, 0, 0, 0, "", "", "", 0, "");

            int UID = Convert.ToInt32(ds.Tables[0].Rows[0]["UserID"].ToString());

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.Assign(11, 0, 0, 0, UID, "", "", "", 0, "");
        }
        catch
        {
            BindAssignUsers();
        }
        //int UID = Convert.ToInt32(Session["UserID"]);
       
        //BindAssignUsers();

    }

    protected void gvStatus_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblstatusexam = ((Label)e.Row.FindControl("lblstatus"));

            Class1 obj3 = new Class1();
            DataSet ds3 = new DataSet();
            ds3 = obj3.Assign(2, 0, 0, 0, 0, "", "", "", 0, "");

            if (ds3.Tables[0].Rows.Count > 0)
            {
                int count =Convert.ToInt32(ds3.Tables[0].Rows.Count.ToString());
                int i = 0;
                for (i = 0; i < count; i++)

                {
                    int status = Convert.ToInt32(ds3.Tables[0].Rows[i]["Isdeleted"].ToString());

                    if (status == 0)
                    {
                        //lblstatusexam.Text = "Not Taken";
                    }

                    else
                    {
                        //lblstatusexam.Text = " Taken ";
                    }
                
                }
                
            }

            
            //do what ever you want to do here using the value of your label
        }
    }
    protected void show_Assign_users_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
