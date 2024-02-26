using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Application_Details : System.Web.UI.Page
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
        Dataclass dcobj8 = new Dataclass();
        dcobj8.InsertApplication(Session["User_Id"].ToString(), TxtCompany_Id.Text, TxtStatus.Text, TxtApplicationDate.Text, TxtReview.Text);
    }

    public void BindApplication()
    {
        Dataclass dcobj8 = new Dataclass();
        GridView1.DataSource = dcobj8.BindResume(Session["User_Id"].ToString());
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindApplication();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindApplication();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj8 = new Dataclass();
        dcobj8.DeleteApplication(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindApplication();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        BindApplication();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj8 = new Dataclass();
        dcobj8.UpdateApplication(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompany_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStatus")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtApplicationDate")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtReview")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindApplication();
    }
}
