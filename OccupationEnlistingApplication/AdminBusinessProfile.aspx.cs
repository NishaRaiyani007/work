using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Business_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
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
        dcobj4.BusinessUpdate(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox16")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox15")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindBus();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Dataclass dcobj4 = new Dataclass();
        DetailsView1.DataSource = dcobj4.companyDetail(GridView1.SelectedValue.ToString());
        DetailsView1.DataBind();
    }
}