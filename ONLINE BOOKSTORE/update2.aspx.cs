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

public partial class update2 : System.Web.UI.Page
{
    private SqlConnection scon;
    private SqlCommand cmd;
    private SqlDataReader dr;
    int cid;
    string select;
    string u;
    protected void Page_Load(object sender, EventArgs e)
    {
        scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        scon.Open();
        string cat = Request.QueryString["catid"].ToString();
        cid = Int32.Parse(cat);

        if (cid == 1 | cid == 2 | cid == 3)
        {

            select = "select * from bookitem where category_id=" + cid;
        }
        if (cid == 4 | cid == 5 | cid == 6)
        {

            select = "select * from childrenbook where category_id=" + cid;

        }
        if (cid == 7 | cid == 8 | cid == 9)
        {

            select = "select * from cooking where category_id=" + cid;
        }
        if (cid == 10 | cid == 11 | cid == 12)
        {

            select = "select * from religion where category_id=" + cid;

        }
        if (cid == 14 | cid == 15 | cid == 16 | cid == 17)
        {

            select = "select * from parents where category_id=" + cid;

        }
        if (cid == 18 | cid == 19 | cid == 20)
        {

            select = "select * from entertainment where category_id=" + cid;

        }
        if (cid == 21 | cid == 22)
        {

            select = "select * from science where category_id=" + cid;

        }
        if (cid == 23 | cid == 24)
        {

            select = "select * from business where category_id=" + cid;

        }
        cmd = new SqlCommand(select, scon);
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            ListItem newitem = new ListItem();
            newitem.Text = dr["book_name"].ToString();
            newitem.Value = dr["item_id"].ToString();
            DropDownList1.Items.Add(newitem);
        }
        dr.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (cid == 1 | cid == 2 | cid == 3)
            {

                u = "update bookitem set price=@price where item_id=@item_id";
            }
            if (cid == 4 | cid == 5 | cid == 6)
            {

                u = "update childrenbook set price=@price where item_id=@item_id";

            }
            if (cid == 7 | cid == 8 | cid == 9)
            {

                u = "update cooking set price=@price where item_id=@item_id";
            }
            if (cid == 10 | cid == 11 | cid == 12)
            {

                u = "update religion set price=@price where item_id=@item_id";

            }
            if (cid == 14 | cid == 15 | cid == 16 | cid == 17)
            {

                u = "update parents set price=@price where item_id=@item_id";

            }
            if (cid == 18 | cid == 19 | cid == 20)
            {

                u = "update entertainment set price=@price where item_id=@item_id";

            }
            if (cid == 21 | cid == 22)
            {

                u = "update science set price=@price where item_id=@item_id";

            }
            if (cid == 23 | cid == 24)
            {

                u = "update business set price=@price where item_id=@item_id";

            }
            cmd = new SqlCommand(u, scon);
            cmd.Parameters.AddWithValue("@price", Decimal.Parse(TextBox1.Text));
            cmd.Parameters.AddWithValue("@item_id", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "Price Updated Successfully";
        }
        catch (Exception err)
        {
            Label2.Visible = true;
            Label2.Text = "Not updated" + err.Message.ToString();
        }
    }
}
