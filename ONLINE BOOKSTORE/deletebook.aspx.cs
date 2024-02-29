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

public partial class deletebook : System.Web.UI.Page
{
    private SqlConnection scon;
    private SqlCommand cmd;
    private SqlCommand cmd1;
    private SqlDataAdapter da;
    private DataSet ds;
    private SqlDataReader dr;
    private string cat="";
   
 private   int cid;
    private string delete="";
    private int tableid;
    private string item;
    private string select;
    
    protected void Page_Load(object sender, EventArgs e)
    {
         scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
        if (!IsPostBack)
        {
            string select1 = "select * from category";
            cmd = new SqlCommand(select1, scon);
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                ListItem newitem = new ListItem();
                newitem.Text = dr["cat_name"].ToString();
                newitem.Value = dr["category_id"].ToString();
                DropDownList1.Items.Add(newitem);
            }
            dr.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cat = DropDownList1.SelectedItem.Value.ToString();
        cid = Int32.Parse(cat);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("delete2.aspx?catid=" + cat.ToString());
       
       
           
    }
   
 }
