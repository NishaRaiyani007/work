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

public partial class purchasedetail : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection scon;
    private SqlDataReader dr;
    private SqlDataAdapter da;
    private DataSet ds;
    int cardid;
    string usernm;
    string password;
    Int64 cardno;
    int orderid = 0;
    string  dt;
    string select = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string qunt = Request.QueryString["quantity"].ToString();
        string userid = Request.QueryString["userid"].ToString();
        string totprice = Request.QueryString["totprice"].ToString();
        scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
        string itemid = Request.QueryString["itemid"].ToString();
        string catid = Request.QueryString["catid"].ToString();
        int cid = Int32.Parse(catid);

        if (cid == 1 | cid == 2 | cid == 3)
        {
             select = "select * from bookitem where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 4 | cid == 5 | cid == 6)
        {
             select = "select * from childrenbook where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 7 | cid == 8 | cid == 9)
        {
             select = "select * from cooking where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 10 | cid == 11 | cid == 12)
        {
             select = "select * from religion where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 14 | cid == 15 | cid == 16 | cid == 17)
        {
             select = "select * from parents where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 18 | cid == 19 | cid == 20)
        {
            select = "select * from entertainment where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 21 | cid == 22)
        {
             select = "select * from science where item_id=" + (Int32.Parse(itemid));
        }
        if (cid == 23 | cid == 24)
        {
             select = "select * from business where item_id=" + (Int32.Parse(itemid));
        }

       
        cmd = new SqlCommand(select, scon);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lbbooknm.Text = dr["book_name"].ToString();
            lbbookprice.Text = dr["price"].ToString()+"Rs.";
            lbqunt.Text = qunt.ToString();
            lbtotal.Text = totprice.ToString();

           

            
        }
        dr.Close();
        string select1 = "select * from login where user_id=" + (Int32.Parse(userid));
        cmd = new SqlCommand(select1, scon);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lbfname.Text = dr["fname"].ToString();
            lblname.Text = dr["lname"].ToString();
            lbcardno.Text = dr["cardnumber"].ToString();
            cardid = Int32.Parse(dr["card_id"].ToString());
            usernm = dr["username"].ToString();
            password = dr["password"].ToString();
            cardno = Int64.Parse(dr["cardnumber"].ToString());
        }
        dr.Close();
        string select2 = "select * from card_type where cardtype_id=" + cardid;
        cmd = new SqlCommand(select2, scon);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            lbcardtype.Text = dr["card_name"].ToString();
        }
        dr.Close();

        cmd = new SqlCommand("select * from purchase", scon);
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            orderid = Int32.Parse(dr["order_id"].ToString());
        }
       orderid++;
       dr.Close();
       dt = System.DateTime.Now.ToShortDateString();
        string insert = "insert into purchase(order_id,user_id,category_id,item_id,quantity,card_no,card_id,username,password,totalprice,date) ";
        insert += "values(";
        insert += orderid + " ,";
        insert += Int32.Parse(userid) + " , ";
        insert += Int32.Parse(catid) + " , ";
        insert += Int32.Parse(itemid) + " , ";
        insert += Int32.Parse(qunt) + " , ";
        insert += cardno + " , ";
        insert += cardid + " ,' ";
       
        insert += usernm + " ',' ";
        insert += password + " ',";
        insert += decimal.Parse(totprice)+" ,' ";
        insert += dt + " ') ";

        
        cmd = new SqlCommand(insert, scon);
        cmd.ExecuteNonQuery();
       
    }
   
}
