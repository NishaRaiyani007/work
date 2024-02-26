using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Require_JobDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Id"] == null)
        {
            Response.Redirect("LOGIN.aspx");
        }
        else
        {
            BindRequired_Job(); 
        }
    }
   
      
    

    public void BindRequired_Job()
    {
        Dataclass dcobj10 = new Dataclass();
        GridView1.DataSource = dcobj10.BindRequired_Job(Session["User_Id"].ToString()).Tables[1];
        GridView1.DataBind();
    }
   

}