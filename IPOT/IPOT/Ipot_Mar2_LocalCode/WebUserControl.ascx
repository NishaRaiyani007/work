<%@ Control Language="C#" %>
<%@ Import Namespace="UtChart" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="bal" %>

<script language="C#" runat="server">

    void SubmitBtn_Click(Object sender, EventArgs e)
    {

        try
        {
            string compare = Session["memberchart"].ToString();

            if (compare != "Nil")
            {
                System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["database"].Replace("Provider=SQLOLEDB;", ""));

                con.Open();


                string member = Session["memberchart"].ToString();

                string Criteria = Session["criteria"].ToString();

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select * from tbl_excel where TID='" + member + "'", con);
                System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter(cmd);
                System.Data.DataSet dataset = new System.Data.DataSet();
                da1.Fill(dataset);


                //System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName ", con);
                //System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //System.Data.DataSet ds = new System.Data.DataSet();
                //da.Fill(ds);

                //System.Data.DataSet ds = new System.Data.DataSet();
                //System.Data.SqlClient.SqlDataAdapter adapter = new System.Data.SqlClient.SqlDataAdapter();
                //adapter.SelectCommand = new System.Data.SqlClient.SqlCommand("usp_Applicants", con);
                //adapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                //adapter.Fill(ds);

                //string status = ds.Tables[0].Rows[0]["status"].ToString();
                //string IpAddress = ds.Tables[0].Rows[0]["IPAddress"].ToString();

                //Session["AreaChart"] = null;
                //Session["WardChart"] = null;
                //Session["pollChart"] = null;
                //Session["sortChart"] = null;
                //Session["subcatchart"] = null;


                int Criter = Convert.ToInt32(Criteria);

                if (Criter == 1)
                {

                    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_Chart where TID='" + member + "'", con);
                    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                    System.Data.DataSet ds = new System.Data.DataSet();
                    da.Fill(ds);
                    Session["data1"] = "Utilization";
                    Session["data"] = ds;

                    ViewState["Overall"] = ds.Tables[0].Rows[0]["Utilization"].ToString();
                    ViewState["Total"] = "100";
                    //int tid = Convert.ToInt32(member);
                    //Class1 obj2 = new Class1();
                    //DataSet ds2 = new DataSet();
                    //ds2 = obj2.ExcelCharts(5, 0, tid, "", "", "", "", "");
                    //Session["data1"] = "Utilization";
                    //Session["data"] = ds2;

                }

                else if (Criter == 2)
                {

                    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_Chart where TID='" + member + "'", con);
                    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                    System.Data.DataSet ds = new System.Data.DataSet();
                    da.Fill(ds);
                    Session["data1"] = "Volume";
                    Session["data"] = ds;

                    ViewState["Overall"] = ds.Tables[0].Rows[0]["Volume"].ToString();

                    ViewState["Total"] = Session["OverallPOVolumes"];
                    //int tid = Convert.ToInt32(member);
                    //Class1 obj2 = new Class1();
                    //DataSet ds2 = new DataSet();
                    //ds2 = obj2.ExcelCharts(5, 0, tid, "", "", "", "", "");

                    //Session["data1"] = "Volume";
                    //Session["data"] = ds2;
                }

                else if (Criter == 3)
                {


                    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_Chart where TID='" + member + "'", con);
                    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                    System.Data.DataSet ds = new System.Data.DataSet();
                    da.Fill(ds);
                    Session["data1"] = "Quality";
                    Session["data"] = ds;

                    ViewState["Overall"] = ds.Tables[0].Rows[0]["Quality"].ToString();
                    ViewState["Total"] = "100";
                    //int tid = Convert.ToInt32(member);
                    //Class1 obj2 = new Class1();
                    //DataSet ds2 = new DataSet();
                    //ds2 = obj2.ExcelCharts(5, 0, tid, "", "", "", "", "");

                    //Session["data1"] = "Quality";
                    //Session["data"] = ds2;
                }

                else if (Criter == 4)
                {

                    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_Chart where TID='" + member + "'", con);
                    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                    System.Data.DataSet ds = new System.Data.DataSet();
                    da.Fill(ds);
                    Session["data1"] = "Efficiency";
                    Session["data"] = ds;

                    double eff = Convert.ToDouble(ds.Tables[0].Rows[0]["Efficiency"].ToString());

                    ViewState["Overall"] = eff / 100;

                    ViewState["Total"] = "100";
                    //int tid = Convert.ToInt32(member);
                    //Class1 obj2 = new Class1();
                    //DataSet ds2 = new DataSet();
                    //ds2 = obj2.ExcelCharts(5, 0, tid, "", "", "", "", "");


                    //Session["data1"] = "Efficiency";
                    //Session["data"] = ds2;
                }
                //string ward = Session["WardChart"].ToString();
                //string poll = Session["pollChart"].ToString();
                //string sort = Session["sortChart"].ToString();
                //string subcat = Session["subcatchart"].ToString();

                //if (sort == "Sex (Male)")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Sex='" + "M" + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    Session["data1"] = "No of Male";
                //    Session["data"] = ds;

                //}
                //else if (sort == "Sex (Female)")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Sex='" + "F" + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    Session["data1"] = "No of Female";
                //    Session["data"] = ds;


                //}

                //else if (sort == "Age (&gt;25)")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Age >='" + "25" + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    Session["data1"] = "Age > 25yrs";
                //    Session["data"] = ds;


                //}

                //else if (sort == "Age (&lt; 25)")
                //{

                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Age <='" + "25" + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    Session["data1"] = "Age < 25yrs";
                //    Session["data"] = ds;


                //}

                //else if (sort == "New Added")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Temp1 between '" + "2011-09-14 23:32:01.497" + "' and '" + "2012-09-14 23:32:01.497" + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    Session["data1"] = "Newly Added";
                //    Session["data"] = ds;


                //}

                //else if (sort == "Caste")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where caste= '" + subcat + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    string val = ds.Tables[0].Rows[0]["caste"].ToString();
                //    Session["data1"] = val;
                //    //Session["data1"] = ds.Tables[0].Rows[0]["caste"].ToString();
                //    Session["data"] = ds;


                //}

                //else if (sort == "Profession")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Profession= '" + subcat + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);

                //    Session["data1"] = ds.Tables[0].Rows[0]["Profession"].ToString();
                //    Session["data"] = ds;


                //}

                //else if (sort == "Annual Income")
                //{
                //    if (subcat == "<=11000 rs")
                //    {
                //        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Temp2 <= '" + 11000 + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //        System.Data.DataSet ds = new System.Data.DataSet();
                //        da.Fill(ds);
                //        string val = "Annual Income <=11000 rs";
                //        Session["data1"] = val;
                //        //Session["data1"] = ds.Tables[0].Rows[0]["Temp2"].ToString();
                //        Session["data"] = ds;
                //    }
                //    else if (subcat == "11001 rs - 250000 rs")
                //    {
                //        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where between '" + "11001" + "' and '" + "250000" + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //        System.Data.DataSet ds = new System.Data.DataSet();
                //        da.Fill(ds);
                //        string val = "Annual Income 11001 rs - 250000 rs";
                //        Session["data1"] = val;
                //        //Session["data1"] = ds.Tables[0].Rows[0]["Temp2"].ToString();
                //        Session["data"] = ds;

                //    }

                //    else if (subcat == "250000 rs - 450000 rs")
                //    {
                //        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where between '" + "250001" + "' and '" + "450000" + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //        System.Data.DataSet ds = new System.Data.DataSet();
                //        da.Fill(ds);
                //        string val = "Annual Income 250000 rs - 450000 rs";
                //        Session["data1"] = val;
                //        //Session["data1"] = ds.Tables[0].Rows[0]["Temp2"].ToString();
                //        Session["data"] = ds;

                //    }

                //    else if (subcat == ">=450001 rs")
                //    {
                //        System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Temp2 >= '" + "450001" + "' and Temp= '" + ward + "' and Area= '" + area + "'", con);
                //        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //        System.Data.DataSet ds = new System.Data.DataSet();
                //        da.Fill(ds);
                //        string val = "Annual Income >=450001 rs";
                //        Session["data1"] = val;
                //        //Session["data1"] = ds.Tables[0].Rows[0]["Temp2"].ToString();
                //        Session["data"] = ds;

                //    }


                //}

                //else if (sort == "Problems")
                //{
                //    System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName where Problems= '" + subcat + "' and Temp= '" + ward + "' and Area= '" + area + "' ", con);
                //    System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                //    System.Data.DataSet ds = new System.Data.DataSet();
                //    da.Fill(ds);
                //    string val = ds.Tables[0].Rows[0]["Problems"].ToString();
                //    Session["data1"] = val;
                //    Session["data"] = ds;


                //}




                System.Data.DataSet ds1 = new System.Data.DataSet();
                ds1 = (System.Data.DataSet)Session["data"];





                //System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("select * from tbl_excel where TID='" + member + "'", con);
                //System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
                //System.Data.DataSet ds = new System.Data.DataSet();
                //da.Fill(ds);

                //double POInquiries = Convert.ToDouble(dataset.Tables[0].Rows[0]["PoInquiries"].ToString());
                //double POTracking = Convert.ToDouble(dataset.Tables[0].Rows[0]["PoTracking"].ToString());

                double TotalPO = Convert.ToDouble(ViewState["Total"]);

                //System.Data.DataSet ds2 = new System.Data.DataSet();
                //ds2 = (System.Data.DataSet)Session["data1"];

                //datatable ds_table = new datatable();
                //ds_table = (datatable)session["data1"]; 

                string criteria = ViewState["Overall"].ToString();

                string criteria1 = Session["data1"].ToString();

                //string women = ds1.Tables[0].Rows.Count.ToString();
                //string Age1 = ds1.Tables[0].Rows.Count.ToString();
                //string Age2 = ds1.Tables[0].Rows.Count.ToString();
                //string Newly = ds1.Tables[0].Rows.Count.ToString();
                string remaining = Convert.ToString(TotalPO);


                double dummy = Convert.ToDouble(remaining) - Convert.ToDouble(criteria);

                string strHeading = criteria1 + "," + "others";
                string strValues = criteria + "," + dummy;
                string strLinks = "http://www.importpotracking.com" + "," + "http://www.importpotracking.com";
                string strExpload = E00.Checked.ToString() + "," + E11.Checked.ToString() + "," + E22.Checked.ToString() + "," + E33.Checked.ToString() + "," + E44.Checked.ToString() + "," + E55.Checked.ToString();

                char[] chr = "()".ToCharArray();
                char[] chrsplit = ",".ToCharArray();
                //create array from posted data                                                      
                strHeading = strHeading.Trim(chr);
                strValues = strValues.Trim(chr);
                strLinks = strLinks.Trim(chr);
                strExpload = strExpload.Trim(chr);

                string[] myheadarr = strHeading.Split(chrsplit);
                string[] mystrval = strValues.Split(chrsplit);
                string[] mylinkarr = strLinks.Split(chrsplit);
                //Dim myExpload() As Boolean = strExpload.Split(",")
                bool[] myexpload = { E00.Checked, E11.Checked, E22.Checked, E33.Checked, E44.Checked, E55.Checked };

                float[] myintarr = new float[mystrval.Length];
                // convert array of values to single from string formate                              

                for (int i = 0; i <= mystrval.Length - 1; i++)
                {
                    myintarr[i] = (float)double.Parse((mystrval[i]));
                }
                //create instance of chartdata object                                                
                pieChartData mychartdata = new pieChartData(myintarr, myheadarr, myexpload);
                mychartdata.Links = mylinkarr;
                mychartdata.pieRatio = byte.Parse("70");
                mychartdata.pie3dRatio = byte.Parse("8");
                mychartdata.chartFont = new Font("verdana", int.Parse("8"), FontStyle.Bold);
                mychartdata.leftMargin = ushort.Parse("10");
                mychartdata.topMargin = ushort.Parse("10");
                mychartdata.rightMargin = ushort.Parse("10");
                mychartdata.bottomMargin = ushort.Parse("10");
                mychartdata.pieDia = ushort.Parse("200");
                mychartdata.ExploadOffset = byte.Parse("35");


                Response.Write(mychartdata.getImageMap("imgMap"));

                Response.Write("<img border='0' style='float:right;padding-top: 150px; position:absolute; padding-bottom:0px; padding-left:510px;' usemap='#imgMap' src='pieChartServer.aspx?Legends=(" + strHeading + ")&Vals=(" + strValues +
                ")&Expload=(" + strExpload +
                ")&fontface=" + "verdana" +
                "&fontsize=" + "8" +
                "&LS=" + "10" +
                "&RS=" + "10" +
                "&TS=" + "10" +
                "&BS=" + "10" +
                "&pieRatio=" + "70" +
                "&bar3dratio=" + "8" +
                "&EoffSet=" + "35" +
                "&imgFormat=" + imgFormat.SelectedIndex +
                "&pieDia=" + "200" + "'>");
                con.Close();

                ViewState["Total"] = null;
                //ShowViewers.DataSource = ds;
                //ShowViewers.DataBind();

                //con.Open();
                ////System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand("select * from tbl_AppliCantName ", con);
                ////System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd1);
                ////System.Data.DataSet ds = new System.Data.DataSet();
                ////da.Fill(ds);

                //System.Data.DataSet ds1 = new System.Data.DataSet();
                //System.Data.SqlClient.SqlDataAdapter adapter1 = new System.Data.SqlClient.SqlDataAdapter();
                //adapter.SelectCommand = new System.Data.SqlClient.SqlCommand("usp_Applicants", con);
                //adapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                //adapter.Fill(ds1);

                ////string status = ds.Tables[0].Rows[0]["status"].ToString();
                ////string IpAddress = ds.Tables[0].Rows[0]["IPAddress"].ToString();

                //string men1 = ds1.Tables[5].Rows.Count.ToString();

                //string women1 = ds1.Tables[6].Rows.Count.ToString();
                //string Age11 = ds1.Tables[7].Rows.Count.ToString();
                //string Age21 = ds1.Tables[8].Rows.Count.ToString();
                //string Newly1 = "0";

                //string strHeading1 = "Hindu" + "," + "Muslim" + "," + "Christian" + "," + "Sikh" + "," + "Others";
                //string strValues1 = men1 + "," + women1 + "," + Age11 + "," + Age21 + "," + Newly1;
                //string strLinks1 = "http://www.yahoo.com" + "," + "http://www.msn.com" + "," + "http://www.google.com" + "," + "http://www.wtipl.com" + "," + "http://www.winbilling.com" + "," + "http://www.gmail.com";
                //string strExpload1 = E00.Checked.ToString() + "," + E11.Checked.ToString() + "," + E22.Checked.ToString() + "," + E33.Checked.ToString() + "," + E44.Checked.ToString() + "," + E55.Checked.ToString();

                //char[] chr1 = "()".ToCharArray();
                //char[] chrsplit1 = ",".ToCharArray();
                ////create array from posted data                                                      
                //strHeading = strHeading.Trim(chr);
                //strValues = strValues.Trim(chr);
                //strLinks = strLinks.Trim(chr);
                //strExpload = strExpload.Trim(chr);

                //string[] myheadarr1 = strHeading.Split(chrsplit);
                //string[] mystrval1 = strValues.Split(chrsplit);
                //string[] mylinkarr1 = strLinks.Split(chrsplit);
                ////Dim myExpload() As Boolean = strExpload.Split(",")
                //bool[] myexpload1 = { E00.Checked, E11.Checked, E22.Checked, E33.Checked, E44.Checked, E55.Checked };

                //float[] myintarr1 = new float[mystrval.Length];
                //// convert array of values to single from string formate                              

                //for (int i = 0; i <= mystrval.Length - 1; i++)
                //{
                //    myintarr[i] = (float)double.Parse((mystrval[i]));
                //}
                ////create instance of chartdata object                                                
                //pieChartData mychartdata1 = new pieChartData(myintarr, myheadarr, myexpload);
                //mychartdata.Links = mylinkarr;
                //mychartdata.pieRatio = byte.Parse("70");
                //mychartdata.pie3dRatio = byte.Parse("8");
                //mychartdata.chartFont = new Font("verdana", int.Parse("8"), FontStyle.Bold);
                //mychartdata.leftMargin = ushort.Parse("10");
                //mychartdata.topMargin = ushort.Parse("10");
                //mychartdata.rightMargin = ushort.Parse("10");
                //mychartdata.bottomMargin = ushort.Parse("10");
                //mychartdata.pieDia = ushort.Parse("200");
                //mychartdata.ExploadOffset = byte.Parse("35");


                //Response.Write(mychartdata.getImageMap("imgMap1"));

                //Response.Write("<img border='0' usemap='#imgMap1' src='pieChartServer.aspx?Legends=(" + strHeading + ")&Vals=(" + strValues +
                //")&Expload=(" + strExpload +
                //")&fontface=" + "verdana" +
                //"&fontsize=" + "8" +
                //"&LS=" + "10" +
                //"&RS=" + "10" +
                //"&TS=" + "10" +
                //"&BS=" + "10" +
                //"&pieRatio=" + "70" +
                //"&bar3dratio=" + "8" +
                //"&EoffSet=" + "35" +
                //"&imgFormat=" + imgFormat.SelectedIndex +
                //"&pieDia=" + "200" + "'>");
                //con.Close();

            }

            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Please select the criteria to generate the the graphs ?');", true);

            }

            //Response.Write("<p><font color=red>Click on Pie Or Legends</font></p>");
        }


        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Graph Chart is not available for Zero results !!');", true);


        }

    }
</script>

<asp:CheckBox ID="E00" runat="server" Checked="true" Visible="false"></asp:CheckBox>
<asp:CheckBox ID="E11" runat="server" Visible="false"></asp:CheckBox>
<asp:CheckBox ID="E22" runat="server" Visible="false"></asp:CheckBox>
<asp:CheckBox ID="E33" runat="server" Visible="false"></asp:CheckBox>
<asp:CheckBox ID="E44" runat="server" Visible="false"></asp:CheckBox>
<asp:CheckBox ID="E55" runat="server" Visible="false"></asp:CheckBox>
<asp:DropDownList ID="imgFormat" runat="server" Visible="false">
    <asp:ListItem Value="0" Selected="True">Gif</asp:ListItem>
    <asp:ListItem Value="1">Jpeg</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="SubmitBtn" runat="server" Text="Click to See Chart" OnClick="SubmitBtn_Click"
    Height="30px" Style="cursor: pointer;"></asp:Button>
