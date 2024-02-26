using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEmployeeList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
        if (!IsPostBack)
        {
            BindEmp();
        }
         }
   
    public void BindEmp()
    {
        Dataclass dcobj3 = new Dataclass();
        GridView1.DataSource = dcobj3.BindEmp(Session["User_Id"].ToString()).Tables[1];
        GridView1.DataBind();
    }

  

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj3 = new Dataclass();
        dcobj3.DeleteEmp(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindEmp();
    }
   
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj3 = new Dataclass();
        dcobj3.UpdateEmp(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmployeeName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDepartment")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStatus")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDateOfJoining")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtSkill")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCurrentSalary")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUser_Id")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCategory")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAchievement")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLanguageKnown")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPreviousCompany")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDesignation")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtPreviousSalary")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExperiance")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtReason")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyEmailId")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyContactNo")).Text, GridView1.DataKeys[e.RowIndex].Values["User_Id"].ToString());
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindEmp();
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Dataclass dcobj3 = new Dataclass();
        DetailsView1.DataSource = dcobj3.EmployeeDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView1.DataBind();
        DetailsView2.DataSource = dcobj3.EmpPersonalDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView2.DataBind();
        DetailsView3.DataSource = dcobj3.EmpEducationDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView3.DataBind();
        DetailsView5.DataSource = dcobj3.EmpProfessionalDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView5.DataBind();
        DetailsView4.DataSource = dcobj3.JobDiscriptionDetails1Data(GridView1.SelectedValue.ToString());
        DetailsView4.DataBind();
    }
   
}