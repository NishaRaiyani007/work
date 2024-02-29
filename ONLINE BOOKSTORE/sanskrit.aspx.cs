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

public partial class sanskrit : System.Web.UI.Page
{
    private SqlConnection scon;
    private SqlCommand cmd;
    private SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            string select = "select * from religion where category_id=10";
            scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=F:\\FINAL PROJECT SEM-6\\mainbookwebsite\\App_Data\\bookdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            scon.Open();
            cmd = new SqlCommand(select, scon);
            dr = cmd.ExecuteReader();
            int count = 1;

            while (dr.Read())
            {
                TableRow rnew = new TableRow();
                Table1.Rows.Add(rnew);

                TableCell cnew = new TableCell();
                TableCell cnew1 = new TableCell();
                Label lb1 = new Label();
                lb1.Text = "(" + count.ToString() + ")<br/>";

                Image img = new Image();
                img.ImageUrl = dr["image_url"].ToString();
                Label lb = new Label();
                lb.Text = "Name:-" + dr["book_name"].ToString() + "<br/>";
                lb.Text += "Author:-" + dr["author"].ToString() + "<br/>";
                lb.Text += "price:-" + dr["price"].ToString() + "Rs.<br/><br/>";
                lb.Text += dr["notes"].ToString() + "<br/><br/><br/>";
                LinkButton lbt = new LinkButton();
                lbt.Text = "Order";
                lbt.PostBackUrl = "~/orderlogin.aspx?itemid=" + dr["item_id"].ToString() + "&" + "catid=" + dr["category_id"].ToString();
                cnew.Controls.Add(lb1);
                cnew.Controls.Add(img);
                cnew.Controls.Add(lbt);

                cnew1.Controls.Add(lb);

                rnew.Cells.Add(cnew);
                rnew.Cells.Add(cnew1);
                count++;
            }
            dr.Close();
            scon.Close();

        }

    }
    
}
