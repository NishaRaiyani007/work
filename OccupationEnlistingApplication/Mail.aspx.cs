﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Dataclass dcobj13 = new Dataclass();
        dcobj13.InsertMail(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BindMail();
    }

    public void BindMail()
    {
        Dataclass dcobj13 = new Dataclass();
        GridView1.DataSource = dcobj13.BindMail(Session["User_Id"].ToString());
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindMail();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Dataclass dcobj13 = new Dataclass();
        dcobj13.DeleteMail(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        BindMail();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindMail();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Dataclass dcobj13 = new Dataclass();
        dcobj13.UpdateMail(((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text, ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text, GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        GridView1.EditIndex = -1;
        BindMail();
    }
  
}