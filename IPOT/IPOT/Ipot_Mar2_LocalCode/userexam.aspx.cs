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
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using bal;
using System.IO;


public partial class userexam : System.Web.UI.Page
{

    protected string PostBackStr;
    int startid = 1;//Here specify your starting id of Questions table. So that it will display questions from id starting from this value
    int endid = 4;//Here specify your ending id of Questions table. So that it will display questions which has id below this value
    int totalnoofquestions = 4;//Here change the number of questions you want to display.


    #region Private Properties
    private int CurrentPage
    {
        get
        {
            object objPage = ViewState["_CurrentPage"];
            int _CurrentPage = 0;
            if (objPage == null)
            {
                _CurrentPage = 0;
            }
            else
            {
                _CurrentPage = (int)objPage;
            }
            return _CurrentPage;
        }
        set { ViewState["_CurrentPage"] = value; }
    }
    private int fistIndex
    {
        get
        {

            int _FirstIndex = 0;
            if (ViewState["_FirstIndex"] == null)
            {
                _FirstIndex = 0;
            }
            else
            {
                _FirstIndex = Convert.ToInt32(ViewState["_FirstIndex"]);
            }
            return _FirstIndex;
        }
        set { ViewState["_FirstIndex"] = value; }
    }
    private int lastIndex
    {
        get
        {

            int _LastIndex = 0;
            if (ViewState["_LastIndex"] == null)
            {
                _LastIndex = 0;
            }
            else
            {
                _LastIndex = Convert.ToInt32(ViewState["_LastIndex"]);
            }
            return _LastIndex;
        }
        set { ViewState["_LastIndex"] = value; }
    }
    #endregion

    #region PagedDataSource
    PagedDataSource _PageDataSource = new PagedDataSource();
    #endregion

    #region Private Methods
    /// <summary>
    /// Build DataTable to bind Main Items List
    /// </summary>
    /// <returns>DataTable</returns>
    //private DataTable GetDataTable()
    //{
    //    //SqlConnection con = new SqlConnection("Data Source=202.65.135.246;uid=warehouse123;pwd=warehouse@123123@;database=wincent_warehouse");

    //    ////SqlConnection con = new SqlConnection("Data Source=202.65.135.246;uid=warehouse123;pwd=warehouse@123123@;database=wincent_warehouse");
    //    //DataTable dt = new DataTable();
    //    //SqlDataAdapter adp = new SqlDataAdapter("select * from tblProducts where Status='Active'", con);
    //    //DataSet ds = new DataSet();
    //    //adp.Fill(dt);
    //    //adp.Dispose();
    //    //product_list2.DataSource = dt;
    //    //product_list2.DataBind();

    //    int UID = Convert.ToInt32(Session["Uid"].ToString());
    //    Class1 obj1 = new Class1();
    //    DataSet ds1 = new DataSet();
    //    ds1 = obj1.QuestionPaper(2, 0, 0, 0, UID, 0, "", "", "", "", "", "", "", "", "", 0);

    //    UserQuest.DataSource = ds1;
    //    UserQuest.DataBind();

    //    DataTable dt = ds1.Tables[0];

    //    if (dt.Rows.Count == 0)
    //    {
    //        lblPageInfo.Text = "No Questions Available ...";
    //    }
    //    else
    //    {
    //        Session["cnt"] = Convert.ToInt32((dt.Rows.Count));

    //    }
    //    return dt;

    //}

    //private void BindItemsList()
    //{

    //    DataTable dataTable = this.GetDataTable();
    //    _PageDataSource.DataSource = dataTable.DefaultView;
    //    _PageDataSource.AllowPaging = true;
    //    _PageDataSource.PageSize = 1;
    //    _PageDataSource.CurrentPageIndex = CurrentPage;
    //    ViewState["TotalPages"] = _PageDataSource.PageCount;

    //    this.lblPageInfo.Text = "Page " + (CurrentPage + 1) + " of " + _PageDataSource.PageCount;
    //    this.lbtnPrevious.Enabled = !_PageDataSource.IsFirstPage;
    //    this.lbtnNext.Enabled = !_PageDataSource.IsLastPage;
    //    this.lbtnFirst.Enabled = !_PageDataSource.IsFirstPage;
    //    this.lbtnLast.Enabled = !_PageDataSource.IsLastPage;

    //    this.UserQuest.DataSource = _PageDataSource;
    //    this.UserQuest.DataBind();
    //    this.doPaging();

    //}

    ///// <summary>
    ///// Binding Paging List
    ///// </summary>
    //private void doPaging()
    //{
    //    DataTable dt = new DataTable();
    //    dt.Columns.Add("PageIndex");
    //    dt.Columns.Add("PageText");

    //    fistIndex = CurrentPage - 5;


    //    if (CurrentPage > 5)
    //    {
    //        lastIndex = CurrentPage + 5;
    //    }
    //    else
    //    {
    //        lastIndex = 10;
    //    }
    //    if (lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
    //    {
    //        lastIndex = Convert.ToInt32(ViewState["TotalPages"]);
    //        fistIndex = lastIndex - 10;
    //    }

    //    if (fistIndex < 0)
    //    {
    //        fistIndex = 0;
    //    }

    //    for (int i = fistIndex; i < lastIndex; i++)
    //    {
    //        DataRow dr = dt.NewRow();
    //        dr[0] = i;
    //        dr[1] = i + 1;
    //        dt.Rows.Add(dr);
    //    }

    //    this.dlPaging.DataSource = dt;
    //    this.dlPaging.DataBind();
    //}
    #endregion


    protected void Page_Init(object sender, EventArgs e)
    {

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        Session["check"] = null;
        int val = 0;
        int counter;
        counter = val + 1;
        ViewState["counter"] = counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {

            //lblQuestion.Visible = false;
            //lblOptionA.Visible = false;
            //lblOptionB.Visible = false;
            //lblOptionC.Visible = false;
            //lblOptionD.Visible = false;

            //RblOption.Visible = false;

            //btn_Submit.Visible = false;
            //Finish.Visible = false;

            if (Session["Uid"] == null)
                Response.Redirect("Index.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }

            if (Session["check"] == null)
            {
                if (ClickCount == 1)
                {
                    int catID = Convert.ToInt32(Session["catID"].ToString());
                    int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());


                    int UID = Convert.ToInt32(Session["Uid"].ToString());

                    Class1 obj1 = new Class1();
                    DataSet ds1 = new DataSet();
                    ds1 = obj1.Assign(7, 0, catID, subcatID, UID, "", "", "", 1,"");

                    //Session.Clear();
                    //Session.Abandon();
                    ClickCount = 0;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
            "alert('oops ! Your exam has been encountered due to page refresh ..'); window.location='" +
             "error.aspx';", true);
                    //Response.Redirect("member.aspx");

                    

                }

                else
                {


                    lblQuestion.Visible = false;
                    lblOptionA.Visible = false;
                    lblOptionB.Visible = false;
                    lblOptionC.Visible = false;
                    lblOptionD.Visible = false;

                    RblOption.Visible = false;

                    btn_Submit.Visible = false;
                    Finish.Visible = false;


                    //Session.Add("strttime", DateTime.Now.ToLocalTime());
                    //if (Session["strttime"].ToString() != "")
                    //{
                    //    //statusid.Value = "3";
                    //    DateTime dtm = new DateTime();
                    //    dtm = ((DateTime)Session["strttime"]).AddMinutes(20);
                    //    //lefttime.Value = dtm.Subtract(DateTime.Now).Minutes.ToString() + ":" + dtm.Subtract(DateTime.Now).Seconds.ToString();


                    //}

                    PreviewQuestions();

                    //start_exam_button_Click(sender, e);



                    if (Request.QueryString["action"] != null)
                    {

                    }


                }

            }

            else
            {
                //Session["check"] = null;

                if (Session["check"] != null)
                {
                    //Session.Abandon();
                    //Session.Clear();
                    //Response.Redirect("member.aspx");



                    int catID = Convert.ToInt32(Session["catID"].ToString());
                    int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());


                    int UID = Convert.ToInt32(Session["Uid"].ToString());

                    Class1 obj1 = new Class1();
                    DataSet ds1 = new DataSet();
                    ds1 = obj1.Assign(7, 0, catID, subcatID, UID, "", "", "", 1,"");
                    //Page.ClientScript.RegisterStartupScript(Page.GetType(), "Count Exceeded", "alert('Your Exam has been interrupted due to Page refresh ..Try Again..');", true);
                    //Response.Redirect("member.aspx");

                    Session.Clear();
                    Session.Abandon();
                   
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
            "alert('oops ! Your exam has been encountered due to page refresh ..'); window.location='" +
             "error.aspx';", true);

                }
            }
        }



        if (!Page.IsPostBack)
        {
            try
            {

                int catID = Convert.ToInt32(Session["catID"].ToString());
                int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
                int UID = Convert.ToInt32(Session["Uid"].ToString());

                //string minutes=;
                Class1 obj10 = new Class1();
                DataSet ds10 = new DataSet();
                ds10 = obj10.Assign(6, 0, catID, subcatID, UID, "", "", "", 0, "");

                double minutes = Convert.ToDouble(ds10.Tables[0].Rows[0]["SetTimings"].ToString());

                //double INCminutes = minutes + 1;
                Session["Minutes"] = minutes;

                //Session["timeout"] = DateTime.Now.AddMinutes(INCminutes).ToString();

                //Session["timeoutseconds"] = DateTime.Now.AddSeconds(60).ToString();

                start_exam_button_Click(sender, e);
            }

            catch (Exception ex)

            { 
            
            }

            //main();
        }


        //if (!IsPostBack)
        //{


        //    PreviewQuestions();
        //    //this.BindItemsList();
        //    Session.Add("strttime", DateTime.Now.ToLocalTime());
        //    if (ClickCount > 2)
        //    {
        //        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Count Exceeded", "alert('The number of tries has been exceeded.Dont ever try to do this again..');", true);


        //    }
        //    ClickCount = 0;

        //}

        PostBackStr = Page.ClientScript.GetPostBackEventReference(this, "time");



        if (IsPostBack)
        {
            Session["check"] = null;
            if (Session["check"] != null)
            {


                int catID = Convert.ToInt32(Session["catID"].ToString());
                int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());


                int UID = Convert.ToInt32(Session["Uid"].ToString());

                Class1 obj1 = new Class1();
                DataSet ds1 = new DataSet();
                ds1 = obj1.Assign(7, 0, catID, subcatID, UID, "", "", "1", 1,"");

            //    Response.Redirect("member.aspx");
            //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "Count Exceeded", "alert('Your Exam has been interrupted due to Page refresh ..Try Again..');", true);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
            "alert('oops ! Your exam has been encountered due to page refresh ..'); window.location='" +
             "index.aspx';", true);
            }
            //RblOption.Items.Clear();
            string eventArg = Request["__EVENTARGUMENT"];
            if (eventArg == "time")
            {
                //getNextQuestion();
            }
        }

    }

    //protected void timer1_tick(object sender, EventArgs e)
    //{

    //    //int i = (Convert.ToInt16(Label1.Text));
    //    //i = i - 1;
    //    //Label1.Text = i.ToString();

    //    //if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
    //    //{
    //    lblTimer.Text = ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString();
    //    lblseconds.Text = ((Int32)DateTime.Parse(Session["timeoutseconds"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();

    //    int i = (Convert.ToInt16(lblseconds.Text));
    //    i = i - 1;
    //    lblseconds.Text = i.ToString();


    //    int j = (Convert.ToInt16(lblTimer.Text));
    //    j = j - 1;
    //    lblTimer.Text = j.ToString();

    //    if (i < 0)
    //    {
    //        Session["timeoutseconds"] = DateTime.Now.AddSeconds(60).ToString();
    //        //lblseconds.Text = "60";

    //        lblseconds.Text = ((Int32)DateTime.Parse(Session["timeoutseconds"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();

    //        if (i < 0 && j <= 0)
    //        {
    //            //Session.Clear();
    //            //Session.Abandon();
    //            Button2_Click1(sender, e);


    //        }

    //    }
    //    //}
    //}


    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label1.Visible = false;
        //txtName.Visible = false;
        //Button1.Visible = false;
        //Panel1.Visible = true;
        lblName.Text = "Name : " + Session["Username"].ToString();
        int score = Convert.ToInt32(txtScore.Text);
        //lblScore.Text = "Score : " + Convert.ToString(score);
        Session["counter"] = "1";
        Random rnd = new Random();
        int i = rnd.Next(startid, endid + 1);
        getQuestion(i);
        ArrayList al = new ArrayList();
        al.Add(i.ToString());
        Session["ids"] = al;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //getNextQuestion();
    }
    protected void Finish_Click(object sender, EventArgs e)
    {
        if (Session["Answer"].ToString() == RblOption.SelectedIndex.ToString())
        {
            int score = Convert.ToInt32(txtScore.Text) + 1;// 1 for mark for each question
            txtScore.Text = score.ToString();
            //lblScore.Text = "Score : " + Convert.ToString(score);
        }
        lblResult.Text = "Thank you for test our application. Your Score is : " + txtScore.Text;
        lblResult.Visible = true;
        Panel2.Visible = false;
    }
    public void getQuestion(int no)
    {

        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        //int questionno = Convert.ToInt32(e.CommandArgument.ToString());

        Class1 obj1 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj1.QuestionPaper(4, 0, catID, subcatID, 0, no, "", "", "", "", "", "", "", "", "", 0);


        string Question = ds2.Tables[0].Rows[0]["Question"].ToString();
        string OptionA = ds2.Tables[0].Rows[0]["OptionA"].ToString();
        string OptionB = ds2.Tables[0].Rows[0]["OptionB"].ToString();
        string OptionC = ds2.Tables[0].Rows[0]["OptionC"].ToString();
        string OptionD = ds2.Tables[0].Rows[0]["OptionD"].ToString();


        //Class1 obj1 = new Class1();
        //DataSet ds1 = new DataSet();
        ////ds1 = obj1.QuestionPaper(2, 0, 0, 0, UID, 0, "", "", "", "", "", "", "", "", "", 0);
        //ds1 = obj1.QuestionPaper(2, 0, 0, 0, 0, 0, "", "", "", "", "", "", "", "", "", 0);

        //string str = "select * from Questions where id=" + no + "";
        //SqlDataAdapter da2 = new SqlDataAdapter(str, sqlconn);


        //DataSet ds2 = new DataSet();
        //da2.Fill(ds2, "Question");
        if (ds2.Tables[0].Rows.Count > 0)
        {



            lblQuestion.Visible = true;
            lblOptionA.Visible = true;
            lblOptionB.Visible = true;
            lblOptionC.Visible = true;
            lblOptionD.Visible = true;

            RblOption.Visible = true;

            btn_Submit.Visible = true;
            Finish.Visible = true;
            //DataRow dtr;
            //int i = 0;
            //while (i < ds2.Tables[0].Rows.Count)
            //{
            //    dtr = ds2.Tables[0].Rows[i];
            //    //Session["Answer"] = Convert.ToString(Convert.ToInt32(dtr["Correct"].ToString()) - 1);
            lblQuestion.Text = "Q" + " " + " <img src='images/blue-dot.png' style='width:12px; height:10px; padding-bottom: 4px;' />" + " " + no + "  " + Question.ToString();
            lblOptionA.Text = "A" + " " + " <img src='images/blue-dot.png' style='width:12px; height:10px; padding-bottom: 4px;' />" + " " + OptionA.ToString();
            lblOptionB.Text = "B" + " " + " <img src='images/blue-dot.png' style='width:12px; height:10px; padding-bottom: 4px;'/>" + " " + OptionB.ToString();
            lblOptionC.Text = "C" + " " + " <img src='images/blue-dot.png' style='width:12px; height:10px; padding-bottom: 4px;'/>" + " " + OptionC.ToString();
            lblOptionD.Text = "D" + " " + " <img src='images/blue-dot.png' style='width:12px; height:10px; padding-bottom: 4px;'/>" + " " + OptionD.ToString();
            //    RblOption.ClearSelection();
            //    RblOption.Items.Clear();
            //    RblOption.Items.Add(dtr["OptionA"].ToString());
            //    RblOption.Items.Add(dtr["OptionB"].ToString());
            //    RblOption.Items.Add(dtr["OptionC"].ToString());
            //    RblOption.Items.Add(dtr["OptionD"].ToString());
            //    i++;
            //}
        }

        else
        {
            lblQuestion.Visible = false;
            lblOptionA.Visible = false;
            lblOptionB.Visible = false;
            lblOptionC.Visible = false;
            lblOptionD.Visible = false;

            RblOption.Visible = false;

            btn_Submit.Visible = false;
            Finish.Visible = false;
        }
    }
    //public void getNextQuestion()
    //{
    //    if (Convert.ToInt32(Session["counter"].ToString()) < totalnoofquestions)
    //    {
    //        if (RblOption1.SelectedIndex >= 0)
    //        {
    //            if (Session["Answer"].ToString() == RblOption1.SelectedIndex.ToString())
    //            {
    //                int score = Convert.ToInt32(txtScore.Text) + 1;// 1 for mark for each question
    //                txtScore.Text = score.ToString();
    //                lblScore.Text = "Score : " + Convert.ToString(score);
    //            }
    //        }
    //        Random rnd = new Random();
    //        int i = rnd.Next(startid, endid);
    //        ArrayList al = (ArrayList)Session["ids"];
    //        if (!al.Contains(i.ToString()))
    //        {
    //            al.Add(i.ToString());
    //        }
    //        else
    //        {
    //            while (al.Contains(i.ToString()))
    //            {
    //                i = rnd.Next(startid, endid + 1);

    //                if (al.Count == totalnoofquestions - 1 && !al.Contains(i.ToString()))
    //                {
    //                    Button2.Visible = false;
    //                    Finish.Visible = true;
    //                    break;
    //                }
    //                else if (al.Count > endid + 1)
    //                {
    //                    break;
    //                }

    //            }
    //            if (!al.Contains(i.ToString()))
    //            {
    //                al.Add(i.ToString());
    //            }
    //        }
    //        if (al.Count == totalnoofquestions)
    //        {
    //            Button2.Visible = false;
    //            Finish.Visible = true;
    //        }
    //        Session["ids"] = al;
    //        Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);
    //        getQuestion(i);



    //    }
    //    else
    //    {
    //        Panel2.Visible = false;
    //        //code for displaying after completting the exam, if you want to show the result then you can code here.
    //    }
    //}

    private int ClickCount
    {
        get
        {
            if (Session["clickcount"] == null)
            { Session["clickcount"] = 0; return 0; }
            else
                return (int)Session["clickcount"];
        }
        set
        {
            Session["clickcount"] = value;
        }
    }


    protected void start_exam_button_Click(object sender, EventArgs e)
    {
        Session["strttime"] = DateTime.Now.ToUniversalTime();

        if (Session["strttime"].ToString() != "")
        {
            Label1.Text = System.DateTime.Now.ToString();
            Session["starttime"] = Label1.Text;
            string starttime = Label1.Text; 
            Session["strttime"] = System.DateTime.Now;
            DateTime dtm = new DateTime();
            double MINS = Convert.ToDouble(Session["Minutes"]);
            dtm = System.DateTime.Now.AddMinutes(MINS);

            Label2.Text = dtm.ToString();
            Session["lasttime"] = Label2.Text;
            string lasttime = Label2.Text;
            lefttime.Value = dtm.Subtract(DateTime.Now).Minutes.ToString() + ":" + dtm.Subtract(DateTime.Now).Seconds.ToString();
            Session["countdown"] = lefttime.Value;

        }
        else
        {
            Label1.Text = ((DateTime)Session["strttime"]).ToString();
            DateTime dtm = new DateTime();
            dtm = ((DateTime)Session["strttime"]).AddMinutes(20);
            Label2.Text = dtm.ToString();

            lefttime.Value = dtm.Subtract((DateTime)Session["strttime"]).Minutes.ToString() + ":" + dtm.Subtract((DateTime)Session["strttime"]).Seconds.ToString();
        }

        start_exam_button.Enabled = false;
        statusid.Value = "3";


    }

    public void PreviewQuestions()
    {
        int UID = Convert.ToInt32(Session["Uid"].ToString());
        Session["UID"] = UID;
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        //ds1 = obj1.QuestionPaper(2, 0, 0, 0, UID, 0, "", "", "", "", "", "", "", "", "", 0);
        ds1 = obj1.QuestionPaper(2, 0, 0, 0, UID, 0, "", "", "", "", "", "", "", "", "", 0);

        if (ds1.Tables[0].Rows.Count > 0)
        {

            Session["catID"] = ds1.Tables[0].Rows[0]["CatgID"].ToString();
            Session["Subcatid"] = ds1.Tables[0].Rows[0]["SubCatgID"].ToString();

            lbl_noItems.Visible = false;
            UserQuest.DataSource = ds1;
            UserQuest.DataBind();
            noquestionpaper.Visible = false;
            mainquestionpaper.Visible = true;
            counter_container.Visible = true;
            //timercontrol.Visible = true;

        }

        else
        {
            lbl_noItems.Visible = true;
            lbl_noItems.Text = "No Exam Paper Available for you ..";
            UserQuest.Visible = false;
            noquestionpaper.Visible = true;
            mainquestionpaper.Visible = false;
            counter_container.Visible = false;
            //timercontrol.Visible = false;

        }

    }

    protected void rdl_Active_Buttons(object sender, EventArgs e)
    {

        RadioButtonList ddl = (RadioButtonList)sender;
        DataListItem dli = (DataListItem)ddl.NamingContainer;
        RadioButtonList rblfilteritem = (RadioButtonList)dli.FindControl("rdl_Activeans");


        HiddenField hdnCatID = (HiddenField)dli.FindControl("hdnCatID");
        int CatID = Convert.ToInt32(hdnCatID.Value);

        HiddenField hdnSubCatID = (HiddenField)dli.FindControl("hdnSubCatID");
        int SubCatID = Convert.ToInt32(hdnSubCatID.Value);

        HiddenField hdnUserID = (HiddenField)dli.FindControl("hdnUserID");
        int UserID = Convert.ToInt32(hdnUserID.Value);

        HiddenField hdnQID = (HiddenField)dli.FindControl("hdnQID");
        int QID = Convert.ToInt32(hdnQID.Value);

        string Answer = rblfilteritem.SelectedItem.ToString();

        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Evaluation(1, 0, CatID, SubCatID, UserID, QID, Answer, 1, "", "", "", "", "", "");


    }

    protected void Questionshow_Click(object sender, CommandEventArgs e)
    {
        lblName.Visible = true;

        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int questionno = Convert.ToInt32(e.CommandArgument.ToString());
        Session["QuestionNo"] = questionno;
        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.QuestionPaper(4, 0, catID, subcatID, 0, questionno, "", "", "", "", "", "", "", "", "", 0);


        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.QuestionPaper(8, 0, catID, subcatID, 0, 0, "", "", "", "", "", "", "", "", "", 0);


        int startid = Convert.ToInt32(ds2.Tables[0].Rows[0]["FirstID"].ToString()); //Here specify your starting id of Questions table. So that it will display questions from id starting from this value
        int endid = Convert.ToInt32(ds2.Tables[1].Rows[0]["LastID"].ToString());//Here specify your ending id of Questions table. So that it will display questions which has id below this value
        int totalnoofquestions = Convert.ToInt32(ds2.Tables[2].Rows[0]["counts"].ToString());//Here change the number of questions you want to display.

        Session["Count"] = totalnoofquestions;



        //Label1.Visible = false;
        //txtName.Visible = false;
        //Button1.Visible = false;
        Panel1.Visible = true;
        lblName.Text = "Name : " + Session["Username"].ToString();
        int score = Convert.ToInt32(txtScore.Text);
        //lblScore.Text = "Score : " + Convert.ToString(score);
        Session["counter"] = "1";
        ////Random rnd = new Random();
        ////int i = rnd.Next(startid, endid + 1);
        int i = questionno;

        //Random rnd = new Random();
        //int i = rnd.Next(startid, endid + 1);
        ////getQuestion(i);

        getQuestion(i);
        ArrayList al = new ArrayList();
        al.Add(i.ToString());
        Session["ids"] = al;

        setButtons();
      
    }


    protected void lbtnLast_Click(object sender, EventArgs e)
    {

        CurrentPage = (Convert.ToInt32(ViewState["TotalPages"]) - 1);
        //this.BindItemsList();
        Submit_Click.Visible = true;

    }
    protected void lbtnFirst_Click(object sender, EventArgs e)
    {

        CurrentPage = 0;
        //this.BindItemsList();


    }

    protected void lbtnNext_Click(object sender, EventArgs e)
    {

        CurrentPage += 1;
        //this.BindItemsList();

    }
    protected void lbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        //this.BindItemsList();

    }

    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("Paging"))
        {
            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
            //this.BindItemsList();
        }
    }
    protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
        if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
        {
            lnkbtnPage.Enabled = false;
            lnkbtnPage.Style.Add("fone-size", "14px");
            lnkbtnPage.Font.Bold = true;

        }
    }

    //protected void start_exam_button_Click(object sender, EventArgs e)
    //{

    //}
    //protected void RblOption_SelectedIndexChanged(object sender, EventArgs e)
    //{


    //    string Answer = RblOption.SelectedItem.ToString();
    //    Session["Answer"] = Answer;
    //    RblOption.Items.Clear();

    //}

    protected void Submit_Click1(object sender, ImageClickEventArgs e)
    {

        if (RblOption.SelectedValue != "")
        {
            ClickCount = 0;
            int val = ClickCount;
            ClickCount = val + 1;

            Session["check"] = "set";

            string Answer = RblOption.SelectedItem.ToString();
            int catID = Convert.ToInt32(Session["catID"].ToString());
            int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
            int questionno = Convert.ToInt32(Session["QuestionNo"].ToString());
            int UserID = Convert.ToInt32(Session["UID"]);
            //string Answer = Session["Answer"].ToString();

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.Evaluation(1, 0, catID, subcatID, UserID, questionno, Answer, 1, "", "", "", "", "", "");

            //DataList data = (DataList)Page.FindControl("UserQuest");

            ////DataList dli = (DataList)Page.NamingContainer;

            //LinkButton lnkrow = (LinkButton)data.FindControl("lnk_Questionno");
            //lnkrow.Attributes.Add("class", "style1");
            int count = Convert.ToInt32(Session["Count"]);

            for (int i = 0; i < count; i++)
            {
                if (i == (questionno - 1))
                {
                    LinkButton lnkrow = (LinkButton)UserQuest.Items[i].FindControl("lnk_Questionno");

                    //LinkButton lnkrow = (LinkButton)sender;
                    //DataListItem item = (DataListItem)lnkrow.NamingContainer;
                    //LinkButton lnkbtn6 = (LinkButton)UserQuest.Items[item.ItemIndex].FindControl("lnk_Questionno");

                    lnkrow.Attributes.Add("class", "style1");

                    break;
                }



            }

        }


        else

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('oops ! please select the answer first ..');", true);
        
        }

        //Session["check"] = null;
        //ClickCount = 0;
        ////LinkButton lnkrow = new LinkButton();
        ////HyperLink hlRow = new HyperLink();
        //lnkrow.Style.Add("color", "#000000");
        //lnkrow.Style.Add("text-decoration", "none");

    }

    protected void Priview_Click(object sender, ImageClickEventArgs e)
    {
        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int questionno = Convert.ToInt32(Session["QuestionNo"].ToString());
        int UserID = Convert.ToInt32(Session["UID"]);
        //string Answer = Session["Answer"].ToString();

        //Class1 obj1 = new Class1();
        //DataSet ds1 = new DataSet();
        //ds1 = obj1.Evaluation(2, 0, catID, subcatID, UserID, questionno, "", 1, "", "", "", "");


        int count = Convert.ToInt32(Session["Count"]);

        for (int i = 0; i < count; i++)
        {
            if (i == (questionno - 1))
            {

                int questionno1 = questionno - 1;
                LinkButton lnkrow = (LinkButton)UserQuest.Items[questionno1].FindControl("lnk_Questionno");

                //LinkButton lnkrow = (LinkButton)sender;
                //DataListItem item = (DataListItem)lnkrow.NamingContainer;
                //LinkButton lnkbtn6 = (LinkButton)UserQuest.Items[item.ItemIndex].FindControl("lnk_Questionno");

                lnkrow.Attributes.Add("class", "style2");

                break;
            }



        }

    }

    protected void ItemColorChange_Click(object sender, DataListItemEventArgs e)
    {

        LinkButton lnkrow = (LinkButton)e.Item.FindControl("lnk_Questionno");
        //lnkrow.Style.Add("color", "#ffffff");
        //lnkrow.Style.Add("text-decoration", "none");
        lnkrow.Attributes.Add("class", "style");
        ViewState["linkID"] = lnkrow.Text;
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {


        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int questionno = Convert.ToInt32(Session["QuestionNo"].ToString());
        int UserID = Convert.ToInt32(Session["UID"]);

        Class1 obj1 = new Class1();
        DataSet ds1 = new DataSet();
        ds1 = obj1.Evaluation(2, 0, catID, subcatID, UserID, questionno, "", 1, "", "", "", "", "", "");

        if (ds1.Tables[0].Rows.Count > 0)
        {
            if (Convert.ToInt32(ds1.Tables[0].Rows[0]["Temp"]) == 1)
            {

                LinkButton lnkrow = (LinkButton)e.Item.FindControl("lnk_Questionno");
                //lnkrow.Style.Add("color", "#ffffff");
                //lnkrow.Style.Add("text-decoration", "none");
                lnkrow.Attributes.Add("class", "style1");
                //ViewState["linkID"] = lnkrow.Text;
                //string strId = UserQuest.DataKeys[e.Item.ItemIndex].ToString();

            }

            else
            {
                LinkButton lnkrow = (LinkButton)e.Item.FindControl("lnk_Questionno");
                //lnkrow.Style.Add("color", "#ffffff");
                //lnkrow.Style.Add("text-decoration", "none");
                lnkrow.Attributes.Add("class", "style");

            }
        }
        //if (e.CommandName == "ViewDetails")
        //{
        //    Response.Redirect("ViewDetails.aspx?Id=" + e.CommandArgument.ToString());
        //}

        //LinkButton lnkrow = (LinkButton)e.Item.FindControl("lnk_Questionno");
        ////lnkrow.Style.Add("color", "#ffffff");
        ////lnkrow.Style.Add("text-decoration", "none");
        //lnkrow.Attributes.Add("class", "style1");
        //ViewState["linkID"] = lnkrow.Text;
    }

    public void setButtons()
    {

        try
        {
            int catID = Convert.ToInt32(Session["catID"].ToString());
            int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
            int questionno = Convert.ToInt32(Session["QuestionNo"].ToString());
            int UserID = Convert.ToInt32(Session["UID"]);

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.Evaluation(2, 0, catID, subcatID, UserID, questionno, "", 1, "", "", "", "", "", "");

            //RblOption.Items.Clear();
            string compare = ds1.Tables[0].Rows[0]["Answers"].ToString();
            if (compare == "A")
            {
                //RblOption.Items[0].Selected = false;
                RblOption.Items[1].Selected = false;
                RblOption.Items[2].Selected = false;
                RblOption.Items[3].Selected = false;
                //RblOption.SelectedItem.Value = "0";
                RblOption.Items[0].Selected = true;
            }

            else if (compare == "B")
            {
                RblOption.Items[0].Selected = false;
                //RblOption.Items[1].Selected = false;
                RblOption.Items[2].Selected = false;
                RblOption.Items[3].Selected = false;
                RblOption.Items[1].Selected = true;
                //RblOption.SelectedItem.Value = "1";

            }

            else if (compare == "C")
            {
                RblOption.Items[0].Selected = false;
                RblOption.Items[1].Selected = false;
                //RblOption.Items[2].Selected = false;
                RblOption.Items[3].Selected = false;
                //RblOption.SelectedItem.Value = "2";
                RblOption.Items[2].Selected = true;
            }

            else if (compare == "D")
            {
                RblOption.Items[0].Selected = false;
                RblOption.Items[1].Selected = false;
                RblOption.Items[2].Selected = false;
                //RblOption.Items[3].Selected = false;
                //RblOption.SelectedItem.Value = "3";
                RblOption.Items[3].Selected = true;
            }


        }

        catch (Exception ex)
        {

            RblOption.Items[0].Selected = false;
            RblOption.Items[1].Selected = false;
            RblOption.Items[2].Selected = false;
            RblOption.Items[3].Selected = false;
        }


    }
    protected void Button2_Click1(object sender, ImageClickEventArgs e)
    {

        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int UserID = Convert.ToInt32(Session["UID"]);


        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.Evaluation(4, 0, catID, subcatID, UserID,0,"",0,"","","","","","");

        if (ds2.Tables[0].Rows.Count > 0)
        {

            //int catID = Convert.ToInt32(Session["catID"].ToString());
            //int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.QuestionPaper(11, 0, catID, subcatID,UserID , 0, "", "", "", "", "", "", "", "", "", 0);

            int count = ds1.Tables[0].Rows.Count;
            ViewState["Count"] = count;
            int resultcount = 0;

            for (int i = 0; i < count; i++)
            {
                string resultset;
                resultset = ds1.Tables[0].Rows[i]["MyDesiredResult"].ToString();
                if (resultset == "1")
                {
                    resultcount = resultcount + 1;
                }

                ViewState["resultset"] = resultcount;
            }

            //lblScore.Text = ViewState["resultset"].ToString();


            double percentage = ((resultcount * 100) / count);

            //double percentage = resultcount / count

            try
            {
                Class1 obj4 = new Class1();
                DataSet ds4 = new DataSet();
                ds4 = obj4.Assign(8, 0, 0, 0, UserID, "", "", "", 0, "");
                if (ds4.Tables[0].Rows.Count > 0)
                {

                    string Email = ds4.Tables[0].Rows[0]["EmailId"].ToString();
                    string name = Session["Username"].ToString(); ;

                    string TotalQuestions = ViewState["Count"].ToString();

                    string TotalAnswers = ViewState["resultset"].ToString();

                    //Create the msg object to be sent    
                    MailMessage msg = new MailMessage();
                    MailMessage MsgReply = new MailMessage();

                    //Add email address of the recipients
                    msg.To.Add(Email);
                    msg.Subject = "Testing RNH Recruitment Exam Result ..";

                    //MsgReply.To.Add(Textmail.Text);
                    //Configure the address we are sending the mail from 
                    //string Email =;

                    MailAddress Address = new MailAddress("'" + Email + "'");

                    //MsgReply.From = AddressReply;
                    msg.From = Address;

                    MsgReply.IsBodyHtml = true;
                    msg.IsBodyHtml = true;

                    msg.Body = "<html><head></head><body >" +

                               "<br>" +

                                "<center><img src='http://www.RNH.in' style='padding-right:15px;'></center> " +

                               "<div style='Background-color:#6D7B8D'>" +


                               "<p  style='color:whitesmoke;font-family:calibri;font-size:30px;font-weight:bold;text-align:center;'> Result Sheet </p>" +

                               "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Name : " + name + "</p>" +

                               "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Questions : " + TotalQuestions + "</p>" +

                               "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Correct Answers : " + TotalAnswers + "</p>" +

                               "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Grade(%) : " + percentage + " % " + "</p>" +

                               "</div>" +

                               "</body></html>";

                    //MsgReply.Body = "<html><head></head><body>" +
                    //           "<p>Your Registration to Betterfly Consultancy Services is Confirmed !</p>" +

                    //           "</body></html>";

                    //Configure an SmtpClient to send the mail.   
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    //only enable this if your provider requires it   
                    //Setup credentials to login to our sender email address ("UserName", "Password")  

                    NetworkCredential credentials = new NetworkCredential("rupareliyanalin@gmail.com", "n9714650345n");

                    client.Credentials = credentials;
                    //Send the msg   
                    client.Send(msg);

                    Class1 obj3 = new Class1();
                    DataSet ds3 = new DataSet();
                    ds3 = obj3.Assign(7, 0, catID, subcatID, UserID, "", "", "", 1, "");

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Thanks ! Your Examination Paper submitted successfully ..'); window.location='" +
                     "index.aspx';", true);

                    Session.Clear();
                    Session.Abandon();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Unable to Submit your Application ! Please Try again Later ..');</script>");
                //lblreply.Text = "Unable to register please try again";
            }
        }

        else

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                   "alert('uhh !! please choose the answers first..');", true);
        
        }

    }
   

    protected void timeout_submit_click(object sender, EventArgs e)
    {

        int catID = Convert.ToInt32(Session["catID"].ToString());
        int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());
        int UserID = Convert.ToInt32(Session["UID"]);


        Class1 obj2 = new Class1();
        DataSet ds2 = new DataSet();
        ds2 = obj2.Evaluation(4, 0, catID, subcatID, UserID, 0, "", 0, "", "", "", "", "", "");

        if (ds2.Tables[0].Rows.Count > 0)
        {

            //int catID = Convert.ToInt32(Session["catID"].ToString());
            //int subcatID = Convert.ToInt32(Session["Subcatid"].ToString());

            Class1 obj1 = new Class1();
            DataSet ds1 = new DataSet();
            ds1 = obj1.QuestionPaper(11, 0, catID, subcatID, UserID, 0, "", "", "", "", "", "", "", "", "", 0);

            int count = ds1.Tables[0].Rows.Count;
            ViewState["Count"] = count;
            int resultcount = 0;

            for (int i = 0; i < count; i++)
            {
                string resultset;
                resultset = ds1.Tables[0].Rows[i]["MyDesiredResult"].ToString();
                if (resultset == "1")
                {
                    resultcount = resultcount + 1;
                }

                ViewState["resultset"] = resultcount;
            }

            //lblScore.Text = ViewState["resultset"].ToString();


            double percentage = ((resultcount * 100) / count);

            //double percentage = resultcount / count

            try
            {

                string name = Session["Username"].ToString(); ;

                string TotalQuestions = ViewState["Count"].ToString();

                string TotalAnswers = ViewState["resultset"].ToString();

                //Create the msg object to be sent    
                MailMessage msg = new MailMessage();
                MailMessage MsgReply = new MailMessage();
                //Add email address of the recipients
               
                msg.To.Add("sreedhar.wincent@gmail.com");

                //MsgReply.To.Add(Textmail.Text);

                //Configure the address we are sending the mail from 

                string Email = "sreedhar.wincent@gmail.com";
                MailAddress Address = new MailAddress("'" + Email + "'");

                //MailAddress AddressReply = new MailAddress("sachin.wincent@gmail.com");


                //MsgReply.From = AddressReply;
                msg.From = Address;

                MsgReply.IsBodyHtml = true;
                msg.IsBodyHtml = true;

                msg.Body = "<html><head></head><body >" +

                           "<br>" +

                            "<center><img src='http://www.importpotracking.com/images/logo.jpg' style='padding-right:15px;'></center> " +

                           "<div style='Background-color:#6D7B8D'>" +


                           "<p  style='color:whitesmoke;font-family:calibri;font-size:30px;font-weight:bold;text-align:center;'> Result Sheet </p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Name : " + name + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Questions : " + TotalQuestions + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Total No Of Correct Answers : " + TotalAnswers + "</p>" +

                           "<p style='color:whitesmoke;font-family:calibri;font-size:25px;font-weight:bold;text-align:center;'> Grade(%) : " + percentage + " % " + "</p>" +

                           "</div>" +

                           "</body></html>";

                //MsgReply.Body = "<html><head></head><body>" +
                //           "<p>Your Registration to Betterfly Consultancy Services is Confirmed !</p>" +

                //           "</body></html>";

                //Configure an SmtpClient to send the mail.   
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                //only enable this if your provider requires it   
                //Setup credentials to login to our sender email address ("UserName", "Password")  

                NetworkCredential credentials = new NetworkCredential("wincent.wtipl@gmail.com", "1234@wincent");

                client.Credentials = credentials;
                //Send the msg   
                client.Send(msg);
                //client.Send(MsgReply);
                //lblreply.Text = "Your message was sent!";
                //Clear the form   


                //string name = TxtName.Text;

                //string email = Textmail.Text;
                //string mobile = txtmob.Text;
                //string age = txtage.Text;
                //string qualification = txtqual.Text;
                //string experience = txtexp.Text;
                //string stream = txtstream.Text;
                //string explain = txtexplain.Text;


                //Class1 obj = new Class1();
                //DataSet ds = new DataSet();
                //ds = obj.Insert_to_Registration(1, 0, name, email, mobile, age, qualification, experience, stream, explain);



                //    TxtName.Text = "";

                //    Textmail.Text = "";
                //    txtmob.Text = "";
                //    txtage.Text = "";
                //    txtqual.Text = "";
                //    txtexp.Text = "";
                //    txtstream.Text = "";
                //    txtexplain.Text = "";
                //    lblreply.Visible = true;
                //    Response.Write("<script>alert('Registered Successfully');</script>");

                //    lblreply.Text = "Registered Successfully";
                //    lblreply.ForeColor = System.Drawing.Color.Blue;

                //Page.ClientScript.RegisterStartupScript(Page.GetType(), "Count Exceeded", "alert('Thanks ! Your Examination Paper submitted successfully ..');", true);

                Class1 obj3 = new Class1();
                DataSet ds3 = new DataSet();
                ds3 = obj3.Assign(7, 0, catID, subcatID, UserID, "", "", "", 1, "");

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Oops Time Out !!! Your Examination Paper submitted successfully ..'); window.location='" +
                 "index.aspx';", true);

                Session.Clear();
                Session.Abandon();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Unable to Submit your Application ! Please Try again Later ..');</script>");
                //lblreply.Text = "Unable to register please try again";
            }
        }

        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                   "alert('uhh !! please choose the answers first..');", true);

        }


    }

    //protected void Img_StartTest_Click(object sender, ImageClickEventArgs e)
    //{
    //    Conatianer_ID.Visible = true;
    //    Img_StartTest.Visible = false;
    //}
    //protected void Logout_Click1(object sender, EventArgs e)
    //{
    //    Session.Clear();
    //    Session.Abandon();
    //    Response.Redirect("member.aspx");
    //}
}
