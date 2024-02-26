using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Proffetional_Detail : System.Web.UI.Page
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
        Dataclass dcobj9 = new Dataclass();
        dcobj9.InsertProfessional_Detail(TxtJob_Type.Text, TxtExperiance.Text, TxtCurrentIndustry.Text, TxtFunction.Text, TxtKeySkill.Text, TxtProfileHeadline.Text, DDSelectEducation.SelectedValue.ToString(), DDSelectValue.SelectedValue.ToString(), Session["User_Id"].ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindProfessional_Detail();
    }

    public void BindProfessional_Detail()
    {
        Dataclass dcobj9 = new Dataclass();
        GridView1.DataSource = dcobj9.BindProfessional_Detail(Session["User_Id"].ToString());
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindProfessional_Detail();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj9 = new Dataclass();
        dcobj9.DeleteProfessional_Detail(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindProfessional_Detail();
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DDSelectEducation.SelectedValue.ToString() == "--Select Education--")
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
        if (DDSelectValue.SelectedValue.ToString() == "--Select Value--")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindProfessional_Detail();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj9 = new Dataclass();
        dcobj9.UpdateProfessional_Detail(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtJob_Type")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtExperiance")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCurrentIndustry")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtFunction")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtKeySkill")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtProfileHeadline")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEducation")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCertificate")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindProfessional_Detail();
    }
}