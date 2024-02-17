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


public partial class Admin_AdminCategoryManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            try
            {

                Class1 obj1 = new Class1();
                DataSet ds1 = new DataSet();
                ds1 = obj1.Category(2, 0, "", "", "", "", "");
                DataTable dt = ds1.Tables[0];
                DropDownList1.Items.Clear();
                foreach (DataRow dr in dt.Rows)
                {
                    DropDownList1.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));

                    //DDCategory.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));


                }

                TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[0];
             

            }

            catch (Exception ex)
            {

            }
            showcategory();
            viewcategories();
            subcategories();

        }

    }


    public void showcategory()
    {
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(2, 0, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DropDownList1.Items.Clear();
        DropDownList1.Items.Add(new ListItem("-------Select one-------", "0"));
        foreach (DataRow dr in dt.Rows)
        {
            DropDownList1.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));

            

        }
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        string CatName = txt_category.Text;
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(1, 0, CatName, "", "", "", "");
        txt_category.Text = "";

        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(2, 0, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DropDownList1.Items.Clear();
        foreach (DataRow dr in dt.Rows)
        {
            DropDownList1.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));

            //DDCategory.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));


        }
        viewcategories();
        lbladdcatg.Text = "Added Category successfully";
        }
        catch
        {
            lbladdcatg.Text = "Not Added category";
        }
    }

    protected void Button1_Subcategory(object sender, EventArgs e)
    {
        try
        {
            string SelCatName = DropDownList1.SelectedValue.ToString();
            int catid = Convert.ToInt32(SelCatName);
            string SubCatName = txt_subcategory.Text;
            Class1 obj = new Class1();
            DataSet ds = new DataSet();
            ds = obj.Category(3, catid, SubCatName, "", "", "", "");
            txt_subcategory.Text = "";

            showcategory();
            lbl_addSubCatg.Text = " Added Sub Category Successfully";
        }
        catch {
            lbl_addSubCatg.Text = "Sub Category Not Added";
        }
        subcategories();

    }


    protected void viewcategories()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(4,0,"","","","","");
        GridView3.DataSource = ds;
        GridView3.DataBind();


    }


    protected void row_edit(object sender, GridViewEditEventArgs e)
    {
        GridView3.EditIndex = e.NewEditIndex;
        viewcategories();
        subcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[2];
    }
    protected void row_index(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[2];
        viewcategories();
    }

    protected void row_editcancel(object sender, GridViewCancelEditEventArgs e)
    {
        GridView3.EditIndex = -1;
        viewcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[2];
    }

    protected void row_update(object sender, GridViewUpdateEventArgs e)
    {
        int cid = Convert.ToInt32(GridView3.Rows[GridView3.EditIndex].Cells[0].Text);
        string cname = ((TextBox)GridView3.Rows[GridView3.EditIndex].Cells[1].Controls[0]).Text;
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(7,cid,cname,"","","","");
        GridView3.EditIndex = -1;
        viewcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[2];
    }
    protected void cat_delete(object sender, CommandEventArgs e)
    {
        int CatgID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(12,CatgID,"", "", "","","");
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[2];
        viewcategories();
        subcategories();
    }
   
    protected void subcategories()
    {
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(9, 0, "", "", "", "", "");
        Grid_SubCategory.DataSource = ds;
        Grid_SubCategory.DataBind();
    }
    protected void subrow_index(object sender, GridViewPageEventArgs e)
    {
        Grid_SubCategory.PageIndex = e.NewPageIndex;
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[3];
        subcategories();
    }
    protected void subrow_edit(object sender, GridViewEditEventArgs e)
    {
        Grid_SubCategory.EditIndex = e.NewEditIndex;
        subcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[3];
    }
    protected void subrow_editcancel(object sender, GridViewCancelEditEventArgs e)
    {
        Grid_SubCategory.EditIndex = -1;
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[3];
        subcategories();
    }
    protected void subcat_update(object sender, GridViewUpdateEventArgs e)
    {
        int SubCatgID = Convert.ToInt32(Grid_SubCategory.Rows[Grid_SubCategory.EditIndex].Cells[0].Text);
        string sname = ((TextBox)Grid_SubCategory.Rows[Grid_SubCategory.EditIndex].Cells[1].Controls[0]).Text;
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(10, SubCatgID, sname, "", "", "", "");
        Grid_SubCategory.EditIndex = -1;
        subcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[3];
    }
    protected void subcat_delete(object sender, CommandEventArgs e)
    {
        int SubCatgID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Category(11, SubCatgID, "", "", "", "", "");
        subcategories();
        TabContainerforCategories.ActiveTab = TabContainerforCategories.Tabs[3];
    }


   
    

}
