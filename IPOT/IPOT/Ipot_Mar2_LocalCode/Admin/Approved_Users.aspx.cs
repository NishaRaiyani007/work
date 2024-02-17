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
using System.Data.SqlClient;

public partial class Admin_Approved_Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindregistered();
        }
    }

    public void Bindregistered()
    {
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Insert_to_Registration(4, 0, "", "", "", "", 0, 0, "", "");
        show_registered_users_new.DataSource = ds1;
        show_registered_users_new.DataBind();

    }

    protected void row_delete(object sender, CommandEventArgs e)
    {
        int UID = Convert.ToInt32(e.CommandArgument);
        Class1 obj = new Class1();
        DataSet ds = new DataSet();
        ds = obj.Insert_to_Registration(5, UID, "", "", "", "", 0, 0, "", "");
        Bindregistered();


    }


    protected void row_index(object sender, GridViewPageEventArgs e)
    {
        show_registered_users_new.PageIndex = e.NewPageIndex;
        Bindregistered();
    }

    //protected void gvStatus_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {

    //        RadioButtonList rdlbuttonActive = ((RadioButtonList)e.Row.FindControl("rdlbtn_active"));

    //        Class1 obj3 = new Class1();
    //        DataSet ds3 = new DataSet();
    //        ds3 = obj3.Insert_to_Registration(4,0,"","","","",0,0,"","");

    //        if (ds3.Tables[0].Rows.Count > 0)
    //        {

    //            string compare = ds3.Tables[0].Rows[0]["Status"].ToString();

    //            if (compare == "0")
    //            {
    //                rdlbuttonActive.Items.Clear();
    //                rdlbuttonActive.SelectedValue = "0";
    //            }

    //            else

    //            {
    //                rdlbuttonActive.Items.Clear();
    //                rdlbuttonActive.SelectedValue = "1";
    //            }
    //            //int count = Convert.ToInt32(ds3.Tables[0].Rows.Count.ToString());
    //            //int i = 0;
    //            //for (i = 0; i < count; i++)
    //            //{
    //            //    int status = Convert.ToInt32(ds3.Tables[0].Rows[i]["Isdeleted"].ToString());

    //            //    if (status == 0)
    //            //    {
    //            //        //lblstatusexam.Text = "Not Taken";
    //            //    }

    //            //    else
    //            //    {
    //            //        //lblstatusexam.Text = " Taken ";
    //            //    }

    //            //}

    //        }


    //        //do what ever you want to do here using the value of your label
    //    }
    //}

    //protected void rdlbuttons_selectedindexchange(object sender, EventArgs e)

    //{

    //    RadioButtonList ddl = (RadioButtonList)sender;
    //    GridView dli = (GridView)ddl.NamingContainer;
    //    RadioButtonList rblfilteritem = (RadioButtonList)dli.FindControl("rdlbtn_active");

    //    if (rblfilteritem.SelectedValue == "0")
    //    {



    //        HiddenField hdnCatID = (HiddenField)dli.FindControl("hdnUid");
    //        int Uid = Convert.ToInt32(hdnCatID.Value);

    //        Class1 obj1 = new Class1();
    //        DataSet ds1 = new DataSet();
    //        ds1 = obj1.Insert_to_Registration(6, Uid, "", "", "", "", 0, 0, "", "");

    //    }

    //    else


    //    {

    //        HiddenField hdnCatID = (HiddenField)dli.FindControl("hdnUid");
    //        int Uid = Convert.ToInt32(hdnCatID.Value);

    //        Class1 obj1 = new Class1();
    //        DataSet ds1 = new DataSet();
    //        ds1 = obj1.Insert_to_Registration(7, Uid, "", "", "", "", 0, 0, "", "");

    //    }

    //}


    protected void wRdoViewStatus_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton radioBtn = (RadioButton)sender;
        if (radioBtn != null)
        {
            GridViewRow wGrdViewStatusRow = (GridViewRow)radioBtn.Parent.Parent;
            if (wGrdViewStatusRow != null)
            {
                HiddenField hdnloc = (HiddenField)wGrdViewStatusRow.FindControl("hdnUid");
                int UID = Convert.ToInt32(hdnloc.Value.ToString());
                DisplayStatus(UID);

            }
        }
    }

    protected void wRdoViewStatus_CheckedChanged1(object sender, EventArgs e)
    {
        RadioButton radioBtn = (RadioButton)sender;
        if (radioBtn != null)
        {
            GridViewRow wGrdViewStatusRow = (GridViewRow)radioBtn.Parent.Parent;
            if (wGrdViewStatusRow != null)
            {
                HiddenField hdnloc = (HiddenField)wGrdViewStatusRow.FindControl("hdnUid");
                int UID = Convert.ToInt32(hdnloc.Value.ToString());
                DisplayDefault(UID);

            }
        }



    }

    private void DisplayStatus(int UID)
    {

        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Insert_to_Registration(6, UID, "", "", "", "", 0, 0, "", "");

        //DataSet ds1 = new DataSet();
        //Class1 obj2 = new Class1();
        //ds1 = obj2.SetViewStatus(intLocationID, 2);
    }

    private void DisplayDefault(int UID)
    {
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Insert_to_Registration(7, UID, "", "", "", "", 0, 0, "", "");

    }
}
