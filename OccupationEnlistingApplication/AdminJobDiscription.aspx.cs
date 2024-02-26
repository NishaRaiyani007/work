using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobDiscription : System.Web.UI.Page
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
        dcobj6.InsertJob_Des(Session["User_Id"].ToString(), TxtDiscription.Text, TxtTiming.Text, TxtSkill.Text, TxtReference.Text, TxtJob_Status.Text, TxtJob_Name.Text, TxtJob_StartDate.Text, TxtApplicationName.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindJob_Des();
    }
    public void BindJob_Des()
    {
        Dataclass dcobj6 = new Dataclass();
        GridView1.DataSource = dcobj6.BindJob_Des(Session["User_Id"].ToString());
        GridView1.DataBind();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindJob_Des();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        Dataclass dcobj6 = new Dataclass();
        dcobj6.DeleteJob_Des(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindJob_Des();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindJob_Des();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj6 = new Dataclass();
        dcobj6.UpdateJob_Des(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDiscription")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTiming")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSkill")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtReference")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob_Status")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob_Name")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob_StartDate")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtApplicationName")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindJob_Des();
    }
}