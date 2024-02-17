using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using bal;
using System.IO;
public partial class Admin_AdminUserManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindusers();
        }
    }
    protected void bindusers()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        //ds = obj.Users(1,0,"","","","",1,0,"","");

        ds = obj.Users(3,0,"", "", "", "", 1, 0, "", "");

        GridAdminUsermanagement.DataSource = ds.Tables[0];
        GridAdminUsermanagement.DataBind();
    }
    protected void row_index(object sender, GridViewPageEventArgs e)
    {
        GridAdminUsermanagement.PageIndex = e.NewPageIndex;
        bindusers();
    }
    protected void row_delete(object sender, CommandEventArgs e)
    {
        int UserID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Users(2, UserID, "", "", "", "", 1,0, "", "");
        bindusers();


    }
    //protected void view_details(object sender, CommandEventArgs e)
    //{
    //    int UserID = Convert.ToInt32(e.CommandArgument);


    //    Class1 obj = new Class1();
    //    DataSet ds = new DataSet();
    //    ds = obj.Users(3,0, "", "", "", "", 1, 0, "", "");

    //    Session["UsersUid"] = UserID;
    //    Response.Redirect("AdminViewClientDetails.aspx");
    //}
}
