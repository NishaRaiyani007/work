using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalProfile : System.Web.UI.Page
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
        Dataclass dcobj2 = new Dataclass();
        dcobj2.Personalinsert(TxtFirstName.Text, TxtMiddleName.Text, TxtLastName.Text, TxtAge.Text, RBGender.SelectedValue.ToString(), TxtDateOfBirth.Text, TxtAddress1.Text, TxtAddress2.Text, TxtCity.Text, TxtState.Text, DDSelectValue.SelectedValue.ToString(), TxtNationality.Text, TxtHobby.Text, TxtContactNo.Text, TxtMobileNo.Text, TxtEmailId.Text, Session["User_Id"].ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        BindPersonal();
    }
    private void BindPersonal()
    {
        Dataclass dcobj2 = new Dataclass();
        GridView1.DataSource = dcobj2.BindPersonal(Session["User_Id"].ToString());
        GridView1.DataBind();
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



    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj2 = new Dataclass();
        dcobj2.DeletePer(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindPersonal();

    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindPersonal();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj2 = new Dataclass();
        dcobj2.PerUpdate(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtFirstName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMiddleName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtLastName")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAge")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtGender")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDateOfBirth")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAddress1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtAddress2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCity")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtState")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCountry")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtNationality")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtHobby")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtContactNo")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtMobileNo")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmailId")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindPersonal();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindPersonal();
    }
}