using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Education_Details : System.Web.UI.Page
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
        Dataclass dcobj1 = new Dataclass();
        dcobj1.InsertEdu(TxtSchoolName.Text, TxtSSCPercentage.Text, TxtHSCPercentage.Text, DDESelectValue.SelectedValue.ToString(), TxtCollegeNameUG.Text, TxtUniversityNameUG.Text, TxtDegreeUG.Text, TxtCPIUG.Text, TxtPassingYearUG.Text, TxtCollegeNamePG.Text, TxtUniversityNamePG.Text, DDSelectValue.SelectedValue.ToString(), TxtCPIPG.Text, DDSelectValue1.SelectedValue.ToString(), TxtExtraCurricular.Text, Session["User_Id"].ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        BindEdu();
    }
    private void BindEdu()
    {
        Dataclass dcobj1 = new Dataclass();
        GridView1.DataSource = dcobj1.BindEdu(Session["User_Id"].ToString());
        GridView1.DataBind();

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDESelectValue.SelectedValue.ToString() == "--SelectValue--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectValue.SelectedValue.ToString() == "--SelectValue--")
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
        if (DDSelectValue1.SelectedValue.ToString() == "--SelectValue--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindEdu();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj1 = new Dataclass();
        dcobj1.DeleteEdu(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindEdu();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj1 = new Dataclass();
        dcobj1.UpdateEdu(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSchoolName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSSCPercentage")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtHSCPercentage")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtHSCPassingYear")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeNameUG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUniversityNameUG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDegreeUG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCPIUG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPassingYearUG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCollegeNamePG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUniversityNamePG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDegreePG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCPIPG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPassingYearPG")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExtraCurricular")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindEdu();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindEdu();
    }
}