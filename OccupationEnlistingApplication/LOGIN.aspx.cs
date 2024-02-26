using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOGIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label10.Text = randomnumbergenerator();
        }
        Label4.Visible = false;
    }
    public string randomnumbergenerator()
    {
        Random r = new Random();
        double d = r.NextDouble();
        double dd = d * 100000;
        string s = dd.ToString();
        string ss = s.Substring(0, 4);
        return ss;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Label10.Text)
        {
            Dataclass dcobj = new Dataclass();
            System.Data.DataSet ds = new System.Data.DataSet();
            ds = dcobj.BindLogInPage(TxtUserName.Text, TxtPassword.Text);
            if (ds.Tables.Count > 0)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["User_Id"] = ds.Tables[0].Rows[0]["UserName"].ToString();
                    if (ds.Tables[0].Rows[0]["Type"].ToString() == "Employee")
                    {
                        Response.Redirect("HomePage-Employee.aspx");
                    }
                    else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Student")
                    {
                        Response.Redirect("HomePage-Student.aspx");
                    }
                    else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Company")
                    {
                        Response.Redirect("HomePage-Company.aspx");
                    }
                    else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Admin")
                    {
                        Response.Redirect("Homepage-Admin.aspx");
                    }
                    else
                    {
                        Label17.Text = "Invalid User Name or Password !!!";
                    }
                }
                else
                {
                    Label17.Text = "Invalid User Name or Password !!!";
                }

            }
        }
        else
        {
            Response.Write("<script>alert('Your code is wrong!')</script>");
            Label10.Text = randomnumbergenerator();
        }
        TxtUserName.Text = "";
        TxtPassword.Text = "";

    }
}