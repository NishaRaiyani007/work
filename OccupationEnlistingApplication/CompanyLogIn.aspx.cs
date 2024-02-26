using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj14 = new Dataclass();
        dcobj14.DeleteLogIn(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindLogIn();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindLogIn();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj14 = new Dataclass();
        dcobj14.UpdateLogIn(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindLogIn();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj7 = new Dataclass();
        dcobj7.InsertLogIn(TxtLogIn_Id.Text, Session["User_Id"].ToString(), TxtPassword.Text, TxtType.Text, TxtApp_Date.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindLogIn();
    }

    public void BindLogIn()
    {
        Dataclass dcobj14 = new Dataclass();
        GridView1.DataSource = dcobj14.BindLogIn(Session["User_Id"].ToString());
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindLogIn();
    }
}