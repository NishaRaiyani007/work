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

public partial class orderinfo : System.Web.UI.Page
{
    private SqlCommand cmd;
    private SqlConnection scon;
    private SqlDataReader dr;
    decimal price;
    string select="";
    protected void Page_Load(object sender, EventArgs e)
    {
        scon=new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
       string   itemid = Request.QueryString["itemid"].ToString();
       string catid = Request.QueryString["catid"].ToString();
       int cid = Int32.Parse(catid);

        if(cid==1 | cid==2 | cid==3)
        {
             select="select * from bookitem where item_id="+(Int32.Parse(itemid));
        }
        if (cid ==4 | cid ==5 | cid ==6)
        {
             select = "select * from childrenbook where item_id=" + (Int32.Parse(itemid));
        }
        if (cid ==7 | cid ==8 | cid ==9)
        {
             select = "select * from cooking where item_id=" + (Int32.Parse(itemid));
        }
        if (cid ==10 | cid ==11 | cid ==12)
        {
             select = "select * from religion where item_id=" + (Int32.Parse(itemid));
        }
        if (cid ==14 | cid == 15 | cid == 16 | cid==17)
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
            Image1.ImageUrl = dr["image_url"].ToString();
            Label1.Text = "Name:" + dr["book_name"].ToString() + "<br/>" ;
            Label1.Text += "Author:" + dr["author"].ToString() + "<br/>" ;
            Label1.Text += "Price:" + dr["price"].ToString() + "Rs.<br/>" ;

            Label2.Text = "Description:" + dr["notes"].ToString();
            price = decimal.Parse(dr["price"].ToString());
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string catid = Request.QueryString["catid"].ToString();
        string itemid = Request.QueryString["itemid"].ToString();
        decimal qunt=(decimal.Parse(TextBox1.Text));
        decimal totprice =((qunt) * (price));
        
        string userid=Request.QueryString["userid"].ToString();
        Response.Redirect("~/purchasedetail.aspx?itemid=" + itemid.ToString() +"&"+"catid="+catid.ToString()+ "&" + "userid=" + userid.ToString()+"&"+"totprice="+totprice.ToString()+"&"+"quantity="+qunt.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/orderinfo.aspx");
    }
}
