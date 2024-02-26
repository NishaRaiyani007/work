using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Campus_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
        if (!IsPostBack)
        {
            BindCampus();
        }
    }
  
   

    private void BindCampus()
    {
        Dataclass dcobj12 = new Dataclass();
        GridView1.DataSource = dcobj12.BindCampus(Session["User_Id"].ToString()).Tables[1];
        GridView1.DataBind();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindCampus();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj12 = new Dataclass();
        dcobj12.DeleteCampus(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindCampus();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindCampus();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj12 = new Dataclass();
        dcobj12.UpdateCampus(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTitle")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMesage")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCity")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtState")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPlace")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDate")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDays")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtQualification")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAggregatePercentage")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtNoOfVacancy")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStatus")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtType")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExam")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOtherRequirement")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtApplicationDate")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindCampus();

    }
   
  

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Dataclass dcobj4 = new Dataclass();
        DetailsView1.DataSource = dcobj4.CampusDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView1.DataBind();
    }
}