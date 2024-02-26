using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeBusinessProfile : System.Web.UI.Page
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
        Dataclass dcobj4 = new Dataclass();
        dcobj4.BusinessInsert(TxTCompanyName.Text, TxtBranchName.Text, TxtBranchCode.Text, TxtAddress.Text, TxtCity.Text, TxtState.Text, TxtZipCode.Text, TxtOfficeContactNo.Text, TxtEmergencyContactNo.Text, TxtCompanyWebsite.Text, TxtCompanyEmailId.Text, TxtDiscription.Text, TxtDepartmentOfCompany.Text, TxtStrengthOfEmployee.Text, TxtTotalEmployeeProfit.Text, TxtCompanyProfit.Text, Session["User_Id"].ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        BindBus();
    }
    public void BindBus()
    {
        Dataclass dcoj4 = new Dataclass();
        GridView1.DataSource = dcoj4.BindBus(Session["User_Id"].ToString());
        GridView1.DataBind();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindBus();

    }



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj4 = new Dataclass();
        dcobj4.DeleteBus(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindBus();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindBus();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        Dataclass dcobj4 = new Dataclass();
        dcobj4.BusinessUpdate(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtBranchName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtBranchCode")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAddress")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCity")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtState")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtZipCode")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtOfficeContactNo")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmergencyContactNo")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyWebsite")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyEmailId")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDiscription")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDepartmentOfCompany")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStrengthOfEmployee")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtTotalEmployeeProfit")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCompanyProfit")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindBus();
    }
}