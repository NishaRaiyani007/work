using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using bal;

public partial class Admin_AdminEvents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            viewcities();
            viewprojects();
        }
    }

    protected void viewcities()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(2,0,"", "", "", "", "", "");
        GridView2.DataSource = ds;
        GridView2.DataBind();

    }
    protected void btn_AddCities_Click(object sender, EventArgs e)
    {
        try{
        string city = txt_event.Text;
        string events = "Events";
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(1, 0, city, "",events, "", "", "");
        txt_event.Text = "";
        viewcities();
            Label_News.Text="Added News Successfully";
        }
        catch{
            Label_News.Text = "Problem occured In Adding News";

        }
    }

    protected void subrow_edit(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;

        viewcities();

        


    }
    protected void subrow_editcancel(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        
        viewcities();
    }
    protected void subcat_update(object sender, GridViewUpdateEventArgs e)
    {

        int EventID = Convert.ToInt32(GridView2.Rows[GridView2.EditIndex].Cells[0].Text);
        string EventName = ((TextBox)GridView2.Rows[GridView2.EditIndex].Cells[1].Controls[0]).Text;
        
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(3,EventID,EventName, "", "", "", "", "");
        GridView2.EditIndex = -1;
        viewcities();
        
    }
    protected void subcat_delete(object sender, CommandEventArgs e)
    {

        int SubCatgID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(1, 0, "", "", "", "", "", "");

        viewcities();
       

    }

protected void subrow_index(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;

        viewcities();
    }
    protected void City_delete(object sender, CommandEventArgs e)
    {

        int EventID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(4, EventID, "", "", "", "", "","");

        viewcities();


    }


    protected void viewprojects()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(8, 0, "", "", "", "", "", "");
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void btn_AddProjects_Click(object sender, EventArgs e)
    {
        try
        {
            string Proj = txt_Project.Text;
            string newproject = "Projects";
            Class1 obj = new Class1();
            DataSet ds = new DataSet();
            ds = obj.news(5, 0, "", Proj, newproject, "", "", "");
            txt_Project.Text = "";
            viewprojects();
            Label_Projects.Text = "Project is Added Successfully";
        }
        catch
        {
            Label_Projects.Text = "Problem occured In Adding Project";

        }

    }

    protected void project_edit(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        viewprojects();




    }
    protected void project_editcancel(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        viewprojects();
    }
    protected void project_update(object sender, GridViewUpdateEventArgs e)
    {
       
        ////int ProjectId = Convert.ToInt32(GridView1.Rows[GridView1.EditIndex].Cells[0].Text);
        //string ProjectName = ((TextBox)GridView1.Rows[GridView1.EditIndex].Cells[0].Controls[0]).Text;

        ////HiddenField hdn = (HiddenField)GridView1.FindControl("hdnID");

        //string strValue = ((HiddenField)GridView1.SelectedRow.Cells[0].FindControl("HiddenField1")).Value;
        //int hdnvalue = Convert.ToInt32("strValue");
        //int EID = Convert.ToInt32(hdnvalue);

        int EventID = Convert.ToInt32(GridView1.Rows[GridView1.EditIndex].Cells[0].Text);
        string ProjectName = ((TextBox)GridView1.Rows[GridView1.EditIndex].Cells[1].Controls[0]).Text;
      
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(6, EventID, "", ProjectName, "", "", "", "");
        GridView1.EditIndex = -1;
        viewprojects();

    }
    //protected void Project_delete(object sender, CommandEventArgs e)
    //{

    //    int Parameter = ((TextBox)GridView2.Rows[GridView2.EditIndex].Cells[1].Controls[0]).Text;
    //    Class1 obj = new Class1();
    //    DataSet ds = new DataSet();
    //    ds = obj.news(5, 0, "", "", Parameter, "", "", "");

    //    viewprojects();


    //}
    

    protected void Project_delete(object sender, CommandEventArgs e)
    {
        int Eid = Convert.ToInt32(e.CommandArgument.ToString());
        //string Projects = ((TextBox)GridView1.Rows[GridView1.EditIndex].Cells[0].Controls[0]).Text;
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.news(7,Eid, "", "", "", "", "", "");

        viewprojects();


    }

    protected void project_index(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        viewprojects();
    }
}
