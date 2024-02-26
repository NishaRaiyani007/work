using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRequireJobDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
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
        dcobj10.UpdateRequired_Job(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtBranch")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLocation")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExperiance")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSalary")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtRequirement")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSkill")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob_Type")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtNoOfVacancy")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEndDate")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindRequired_Job();
    }

}