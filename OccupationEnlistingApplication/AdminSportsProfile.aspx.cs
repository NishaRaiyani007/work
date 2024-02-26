using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sports_Details : System.Web.UI.Page
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
        Dataclass dcobj14 = new Dataclass();
        dcobj14.InsertSports(TxtSchoolSports1.Text, TxtSchoolSports2.Text, TxtSchoolSports3.Text, TxtSchoolLevelAwards.Text, TxtOtherAwardsAtSchoolLevel.Text, TxtCollegeSports1.Text, TxtCollegeSports2.Text, TxtCollegeSports3.Text, TxtCollegeLevelAwards.Text, TxtOtherAwardsAtCollegeLevel.Text, TxtOtherSports1.Text, TxtOtherSports2.Text, TxtOtherSports3.Text, TxtOtherAwards.Text, TxtExtraAwards.Text, Session["User_Id"].ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindSports();
    }

    public void BindSports()
    {
        Dataclass dcobj14 = new Dataclass();
        GridView1.DataSource = dcobj14.BindSports(Session["User_Id"].ToString());
        GridView1.DataBind();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindSports();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj14 = new Dataclass();
        dcobj14.DeleteSports(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindSports();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindSports();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj14 = new Dataclass();
        dcobj14.UpdateSports(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSchoolSports1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSchoolSports2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSchoolSports3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSchoolLevelAwards")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherAwardsAtSchoolLevel")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeSports1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeSports2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeSports3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeLevelAwards")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherAwardsAtCollegeLevel")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherSports1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherSports2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherSports3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherAwards")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExtraAwards")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindSports();
    }
}