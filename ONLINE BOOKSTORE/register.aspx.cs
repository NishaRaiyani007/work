using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    private SqlConnection scon;
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private DataSet ds;
    private bool flag = false;
    //private SqlDataReader dr;
    private int cardid;
    private int count = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
        da = new SqlDataAdapter("select * from login", scon);
        ds = new DataSet();
        da.Fill(ds, "user");
        count = ds.Tables["user"].Rows.Count;
        
    }
    protected void btsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (flag == false)
            {
                count++;
                string insert = "insert into login(";
                insert += "user_id,username,password,fname,lname,email,phone,address,card_id,cardnumber) ";
                insert += "values( ";
                insert += count + " ,' ";
                insert += txtusernm.Text + " ',' ";
                insert += txtpassword.Text + " ',' ";
                insert += txtfname.Text + " ',' ";
                insert += txtlname.Text + " ',' ";
                insert += txtemail.Text + " ', ";
                insert += Int64.Parse(txtphone.Text) + " ,' ";
                insert += txtadd.Text + " ',";
                insert += cardid + " , ";
                insert += Int64.Parse(txtcardno.Text) + " ) ";

                cmd = new SqlCommand(insert, scon);
                cmd.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "You are Registered Successfully";

                txtadd.Text = "";
                txtcardno.Text = "";
                txtemail.Text = "";
                txtfname.Text = "";
                txtlname.Text = "";
                txtpassword.Text = "";
                txtphone.Text = "";
                txtusernm.Text = "";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "You are not registered please try again";
              

            }

        }
        catch (Exception err)
        {
            Label1.Visible = true;
            Label1.Text = "You are not registered please try again";
            Label1.Text += err.Message.ToString();
        }

    }
    protected void cardlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        cardid = Int32.Parse(cardlist.SelectedItem.Value.ToString());
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        try
        {
            Int64 digit = Int64.Parse(args.Value);
            if (digit >= 100000 && digit <= 10000000000)
            {
                args.IsValid = true;
                flag = false;
               
            }
            else
            {
                args.IsValid = false;
                flag = true;
                CustomValidator1.ErrorMessage = "Enter Proper Value";
            }
        }
        catch
        {
            args.IsValid = false;
            flag = true;
        }
    }
   
    protected void btcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {
       
    }
}
