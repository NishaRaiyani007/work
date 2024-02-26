using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resume_Details : System.Web.UI.Page
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
        Dataclass dcobj5 = new Dataclass();
        dcobj5.ResumeInsert(Session["User_Id"].ToString(), TxtFullName.Text, TxtCurrentLocation.Text, TxtNationality.Text, RBGender.SelectedValue.ToString(), TxtMobileNo.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindResume();
    }
    public void BindResume()
    {
        Dataclass dcobj5 = new Dataclass();
        GridView1.DataSource = dcobj5.BindResume(Session["User_Id"].ToString());
        GridView1.DataBind();

    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj5 = new Dataclass();
        dcobj5.DeleteResume(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindResume();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindResume();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj5 = new Dataclass();
        dcobj5.ResumeUpdate(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindResume();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        BindResume();
    }
}