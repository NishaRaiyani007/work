using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Social_Profile : System.Web.UI.Page
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
        Dataclass dcobj6 = new Dataclass();
        dcobj6.SocialInsert(TxtTwitter.Text, TxtFacebook.Text, TxtLinkedIn.Text, TxtQuiker.Text, TxtFlipKart.Text, TxtTagged.Text, TxtPinterest.Text, TxtWikiPedia.Text, TxtMyspace.Text, TxtBadoo.Text, TxtIndiaTimes.Text, TxtMeetUp.Text, TxtWebsites.Text, TxtLocation.Text, TxtJob.Text, Session["User_Id"].ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindSocial();

    }

    public void BindSocial()
    {
        Dataclass dcobj6 = new Dataclass();
        GridView1.DataSource = dcobj6.BindSocial(Session["User_Id"].ToString());
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindSocial();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj6 = new Dataclass();
        dcobj6.DeleteSocial(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindSocial();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindSocial();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        Dataclass dcobj6 = new Dataclass();
        dcobj6.SocialUpdate(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTwitter")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtFacebook")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLinkedIn")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtQuiker")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtFlipkart")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTagged")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPinterest")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtWikipedia")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMySpace")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtBadoo")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtIndiatimes")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMeetUp")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtWebsites")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLocation")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindSocial();
    }
}