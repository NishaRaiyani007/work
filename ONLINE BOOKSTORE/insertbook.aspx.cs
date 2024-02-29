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

public partial class insertbook : System.Web.UI.Page
{
    private SqlConnection scon;
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private DataSet ds;
    private SqlDataReader dr;
    private bool flag = false;
    string item;
    string insert;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
        if (!IsPostBack)
        {
            string select = "select * from category";
            cmd = new SqlCommand(select, scon);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int cid = Int32.Parse(item);

        try
        {
            if (cid == 1 | cid == 2 | cid == 3)
            {
                da = new SqlDataAdapter("select * from bookitem", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into bookitem(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";

            }
            if (cid == 4 | cid == 5 | cid == 6)
            {
                da = new SqlDataAdapter("select * from childrenbook", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into childrenbook(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 7 | cid == 8 | cid == 9)
            {
                da = new SqlDataAdapter("select * from cooking", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into cooking(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 10 | cid == 11 | cid == 12)
            {
                da = new SqlDataAdapter("select * from religion", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into religion(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 14 | cid == 15 | cid == 16 | cid == 17)
            {
                da = new SqlDataAdapter("select * from parents", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into parents(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 18 | cid == 19 | cid == 20)
            {
                da = new SqlDataAdapter("select * from entertainment", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into entertainment(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 21 | cid == 22)
            {
                da = new SqlDataAdapter("select * from science", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into science(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            if (cid == 23 | cid == 24)
            {
                da = new SqlDataAdapter("select * from business", scon);
                ds = new DataSet();
                da.Fill(ds, "user");
                count = ds.Tables["user"].Rows.Count;
                count++;

                insert = "insert into business(item_id,category_id,book_name,author,price,image_url,notes)values(";
                insert += count + ",";
                insert += cid + ",'";
                insert += TextBox1.Text + " ',' ";
                insert += TextBox2.Text + " ', ";
                insert += decimal.Parse(TextBox3.Text) + " ,' ";
                insert += TextBox4.Text + " ',' ";
                insert += TextBox5.Text + " ') ";
            }
            cmd = new SqlCommand(insert, scon);
            cmd.ExecuteNonQuery();
            Label7.Visible = true;
            Label7.Text = "New Book inserted Successfully";

            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }
        catch(Exception err)
            {
                Label7.Visible = true;
                Label7.Text = "Not inserted" + err.Message.ToString();
            }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        item = DropDownList1.SelectedItem.Value.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("insertbook.aspx");
    }
}
