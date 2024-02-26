using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Give_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj7 = new Dataclass();
        dcobj7.InsertFeedback(Session["User_Id"].ToString(), TxtTitle.Text, TxtDiscription.Text, TxtDate.Text, TxtResponce.Text, TxtResponce_Date.Text);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindFeedback();
    }

    public void BindFeedback()
    {
        Dataclass dcobj7 = new Dataclass();
        GridView1.DataSource = dcobj7.BindFeedback(Session["User_Id"].ToString());
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindFeedback();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj7 = new Dataclass();
        dcobj7.DeleteFeedback(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindFeedback();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindFeedback();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj7 = new Dataclass();
        dcobj7.UpdateFeedback(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTitle")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDiscription")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDate")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtResponce")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtResponceDate")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindFeedback();
    }
}