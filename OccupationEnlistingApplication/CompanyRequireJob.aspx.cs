using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Require_Job : System.Web.UI.Page
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
        Dataclass dcobj10 = new Dataclass();
        dcobj10.InsertRequired_Job(Session["User_Id"].ToString(), TxtCompanyName.Text, TxtBranch.Text, TxtLocation.Text, TxtExperiance.Text, TxtSalary.Text, TxtRequirement.Text, TxtSkill.Text, TxtJob_type.Text, TxtNoOfVacancy.Text, TxtEndDate.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindRequired_Job();
    }

    public void BindRequired_Job()
    {
        Dataclass dcobj10 = new Dataclass();
        GridView1.DataSource = dcobj10.BindRequired_Job(Session["User_Id"].ToString());
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindRequired_Job();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj10 = new Dataclass();
        dcobj10.DeleteRequired_Job(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindRequired_Job();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindRequired_Job();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj10 = new Dataclass();
        dcobj10.UpdateRequired_Job(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindRequired_Job();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}