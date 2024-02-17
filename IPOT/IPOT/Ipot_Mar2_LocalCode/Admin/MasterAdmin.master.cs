using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using bal;

public partial class Admin_MasterAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Uid"] != null)
        {
            int UserId = Convert.ToInt32(Session["Uid"]);
            Class1 obj = new Class1();
          DataSet ds = new DataSet();
         // ds = obj.Users();

        //string fname_lbl = ds.Tables[0].Rows[0]["FirstName"].ToString();
        // string lname_lbl = ds.Tables[0].Rows[0]["LastName"].ToString();

      //lblUserName.Text = fname_lbl+ " " + lname_lbl;
       BindCategories();
           
       }
        if (!IsPostBack)
        {
            if (Session["Uid"] == null)
                Response.Redirect("../Index.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
        //else
        //{
        //    Response.Redirect("../newAdminlogin.aspx");
        //}
    }

    protected void lnk_Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();//clear session
        
        Response.Redirect("../Index.aspx");
        
    }
    public void BindCategories()
    {
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        //ds = obj.SuperCategories(3, 0, "", "");
        //RpCategories.DataSource = ds;
        //RpCategories.DataBind();
        //Repeater1.DataSource = ds;
        //Repeater1.DataBind();
    }
}
