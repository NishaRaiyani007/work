using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RagistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj = new Dataclass();
        System.Data.DataSet ds = new System.Data.DataSet();
        ds = dcobj.SelectEmail(TextBox1.Text);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label5.Text = "Email ID already exists please try with different email add !!!";
            }
            else
            {
                dcobj.InsertLogInPage(TextBox1.Text, TextBox2.Text,DropDownList1.SelectedValue.ToString(),"Allow");
            }
        }
       
    }
}