using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj11 = new Dataclass();
        dcobj11.InsertContactUs(TxtUser_Id.Text, TxtName.Text, TxtEmail.Text, TxtMessage.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindContactUs();
    }

    public void BindContactUs()
    {
        Dataclass dcobj11 = new Dataclass();
        GridView1.DataSource = dcobj11.BindContactUs();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindContactUs();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj11 = new Dataclass();
        dcobj11.DeleteContactUs(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindContactUs();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindContactUs();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj11 = new Dataclass();
        dcobj11.UpdateContactUs(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindContactUs();
    }
}