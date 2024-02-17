using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using bal;

public partial class Admin_AdminQuestManangement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showcategory();

        }
    }
    public void showcategory()
    {
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(2, 0, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DDCategory.Items.Add(new ListItem("-----------Select one------------", "0"));
        foreach (DataRow dr in dt.Rows)
        {
            

            DDCategory.Items.Add(new ListItem(dr["CatgName"].ToString(), dr["CatgID"].ToString()));


        }
        
    }
    protected void Bindsubcategory(object sender, EventArgs e)
    {

        string catid = DDCategory.SelectedValue.ToString();
        int cat = Convert.ToInt32(catid);
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Category(6, cat, "", "", "", "", "");
        DataTable dt = ds1.Tables[0];
        DDSubCategory.Items.Clear();
        foreach (DataRow dr in dt.Rows)
        {
            DDSubCategory.Items.Add(new ListItem(dr["SubCatgName"].ToString(), dr["SubCatgID"].ToString()));

        }


    }
    protected void Button1_Question(object sender, EventArgs e)
    {
        try
        {
            string SelCatName = DDCategory.SelectedValue.ToString();
            string SelSubCatName = DDSubCategory.SelectedValue.ToString();
            int QuestionNo = Convert.ToInt32(ddlqno.SelectedItem.ToString());



            int catid = Convert.ToInt32(SelCatName);
            int subid = Convert.ToInt32(SelSubCatName);
            string SubCatName = txt_question.Text;
            string OptionA = txt_A.Text;
            string OptionB = txt_B.Text;
            string OptionC = txt_C.Text;
            string OptionD = txt_D.Text;

            string Answer = ddlans.SelectedItem.ToString();


            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.QuestionPaper(7, 0, catid, subid, 0, QuestionNo,"", "", "", "", "", "", "", "", "", 0);

            int check = Convert.ToInt32(ds1.Tables[0].Rows[0]["error"]);

            if (check == 1)
            {
                //string cleanMessage = "Current Question Paper is Already Assigned to this User ...";
                //string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>"; 


                // Cleans the message to allow single quotation marks 
                string cleanMessage = "Current Question No is Already Assigned to this Sub Category ...";
                string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>";

                // Gets the executing web page 
                Page page = HttpContext.Current.CurrentHandler as Page;

                // Checks if the handler is a Page and that the script isn't allready on the Page 
                if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
                {
                    page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script);
                } 

            }

            else
            {

                Class1 obj = new Class1();
                DataSet ds = new DataSet();
                ds = obj.QuestionPaper(1, 0, catid, subid, 0, QuestionNo, SubCatName, OptionA, OptionB, OptionC, OptionD, Answer, "", "", "", 0);
                //DDCategory.SelectedValue = "0";
                ////DDSubCategory.SelectedValue = "0";
                //DDCategory.Items.Clear();
                ////DDCategory.Items.Add(new ListItem("-----------Select Category------------", "0"));

                //DDSubCategory.Items.Clear();
                ////DDSubCategory.Items.Add(new ListItem("-----------Select SubCategory------------", "0"));

                //ddlqno.Items.Clear();
                ////ddlqno.Items.Add(new ListItem("-----------Please select Question No------------", "0"));

                //ddlans.Items.Clear();
                //ddlans.Items.Add(new ListItem("-----------Please select Answer------------", "0"));
                
                txt_question.Text = "";
                txt_A.Text = "";
                txt_B.Text = "";
                txt_C.Text = "";
                txt_D.Text = "";
                // ddlans.Text = "";
                lblquest.Text = "Question Added Successfully";

            }
        }

        catch(Exception ex1)
        {
            lblquest.Text = "Unable to Add Questions";
        
        }

    }



}
