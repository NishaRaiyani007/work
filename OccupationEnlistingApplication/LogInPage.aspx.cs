using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj = new Dataclass();
        System.Data.DataSet ds = new System.Data.DataSet();
        ds = dcobj.BindLogInPage(TextBox1.Text, TextBox2.Text);
        if (ds.Tables.Count > 0)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["Type"].ToString() == "Employee")
                {
                    Response.Redirect("EmployeeHomePage.aspx");
                }
                else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Student")
                {
                    Response.Redirect("StudentHomePage.aspx");
                }
                else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Company")
                {
                    Response.Redirect("CompanyHomePage.aspx");
                }
                else if (ds.Tables[0].Rows[0]["Type"].ToString() == "Admin")
                {
                    Response.Redirect("AdminHomepage.aspx");
                }
                else
                {
                    Label4.Text = "Invalid User Name or Password !!!";
                }
            }
            else
            {
                Label4.Text = "Invalid User Name or Password !!!";
            }
        }
    }
}