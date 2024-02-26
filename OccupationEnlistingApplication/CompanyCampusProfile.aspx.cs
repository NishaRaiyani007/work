using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Campus_Details : System.Web.UI.Page
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
        Dataclass dcobj12 = new Dataclass();
        dcobj12.InsertCampus(Session["User_Id"].ToString(), TxtCompanyName.Text, TxtTitle.Text, TxtMessage.Text, TxtCity.Text, TxtState.Text, TxtPlace.Text, TxtDate.Text, DDSelectDays.SelectedValue.ToString(), TxtQualification.Text, TxtAggregatePercentage.Text, TxtNoOfVacancy.Text, DDSelectStatus.SelectedValue.ToString(), DDSelectType.SelectedValue.ToString(), DDSelectExam.SelectedValue.ToString(), TxtOtherReqirement.Text, TxtApplicationDate.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindCampus();
    }

    private void BindCampus()
    {
        Dataclass dcobj12 = new Dataclass();
        GridView1.DataSource = dcobj12.BindCampus(Session["User_Id"].ToString());
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
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectType.SelectedValue.ToString() == "--Select Type--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectDays.SelectedValue.ToString() == "--Select Days--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectStatus.SelectedValue.ToString() == "--Select Status--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectExam.SelectedValue.ToString() == "--Select Exam--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}