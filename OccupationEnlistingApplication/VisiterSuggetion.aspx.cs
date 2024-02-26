using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GiveUrSuggetion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj15 = new Dataclass();
        dcobj15.InsertSuggetion(Session["User_Id"].ToString(), TxtTitle.Text, TxtDiscription.Text, TxtDate.Text, TxtResponce.Text, TxtResponce_Date.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindSuggetion();
    }

    public void BindSuggetion()
    {
        Dataclass dcobj15 = new Dataclass();
        GridView1.DataSource = dcobj15.BindSuggetion(Session["User_Id"].ToString());
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        BindSuggetion();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj15 = new Dataclass();
        dcobj15.DeleteSuggetion(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindSuggetion();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindSuggetion();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj15 = new Dataclass();
        dcobj15.UpdateSuggetion(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTitle")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDiscription")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDate")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtResponce")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtResponceDate")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindSuggetion();
    }
}