using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Dataclass dcobj3 = new Dataclass();
    //    dcobj3.EmpInsert(TxtEmployeeName.Text, TxtCompanyName.Text, TxtDepartment.Text, TxtStatus.Text, TxtDateOfJoining.Text, TxtSkill.Text, TxtCurrentSalary.Text, Session["User_Id"].ToString(), RadioButtonList1.SelectedValue.ToString(), TxtAchievement.Text, DDSelectLanguage.SelectedValue.ToString(), TxtPreviousCompany.Text, TxtDesignation.Text, TxtPreviousSalary.Text, DDSelectExperiance.SelectedValue.ToString(), TxtReason.Text, TxtCompanyEmailId.Text, TxtCompanyContactNo.Text);
    //}

    protected void Button2_Click(object sender, EventArgs e)
    {
        BindEmp();
    }
    public void BindEmp()
    {
        Dataclass dcobj3 = new Dataclass();
        GridView1.DataSource = dcobj3.BindEmp(Session["User_Id"].ToString());
        GridView1.DataBind();
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectLanguage.SelectedValue.ToString() == "--SelectLanguage--")
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

        if (DDSelectExperiance.SelectedValue.ToString() == "--SelectExperiance--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj3 = new Dataclass();
        dcobj3.DeleteEmp(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindEmp();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindEmp();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj3 = new Dataclass();
        dcobj3.UpdateEmp(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmployeeName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDepartment")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStatus")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDateOfJoining")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSkill")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCurrentSalary")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCategory")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAchievement")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLanguageKnown")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPreviousCompany")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDesignation")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPreviousSalary")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExperiance")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtReason")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyEmailId")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyContactNo")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindEmp();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        Dataclass dcobj3 = new Dataclass();
        dcobj3.EmpInsert(TxtEmployeeName.Text, TxtCompanyName.Text, TxtDepartment.Text, TxtStatus.Text, TxtDateOfJoining.Text, TxtSkill.Text, TxtCurrentSalary.Text, Session["User_Id"].ToString(), RadioButtonList1.SelectedValue.ToString(), TxtAchievement.Text, DDSelectLanguage.SelectedValue.ToString(), TxtPreviousCompany.Text, TxtDesignation.Text, TxtPreviousSalary.Text, DDSelectExperiance.SelectedValue.ToString(), TxtReason.Text, TxtCompanyEmailId.Text, TxtCompanyContactNo.Text);

    }
}