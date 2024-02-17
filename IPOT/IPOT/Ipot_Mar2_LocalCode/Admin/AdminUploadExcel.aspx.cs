using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Excel;
using System.Data;
using bal;

public partial class Admin_AdminUploadExcel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void upload_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                //string UPLOADPATH = (ConfigManager.GetConfigurationAttribute("value", ConfigurationManager.AppSettings["ApplicationConfigPath"], "/ApplicationSettings/PennyPOSUploads/File")).ToString();
                String UPLOADPATH = HttpContext.Current.Request.PhysicalApplicationPath + "Uploads\\";


                string strFilePath = GetFilePath();
                //FileStream stream = File.Open("C:\\inetpub\\wwwroot\\Uploads\\" + strFilePath, FileMode.Open, FileAccess.Read);
                FileStream stream = File.Open(UPLOADPATH + strFilePath, FileMode.Open, FileAccess.Read);
                IExcelDataReader excelReader = ExcelReaderFactory.CreateBinaryReader(stream);

                //Upload Excel File

                // string strFilePath = GetFilePath();
                //FileStream stream = File.Open(strFilePath, FileMode.Open, FileAccess.Read);

                ////FileStream stream = File.Open(Server.MapPath(UPLOADPATH + "\\Files\\" + strFilePath), FileMode.Open, FileAccess.Read);
                //IExcelDataReader excelReader = ExcelReaderFactory.CreateBinaryReader(stream);
                DataSet ds = new DataSet();
                ds = excelReader.AsDataSet();

                for (int i = 1; i < 65536; i++)
                {

                    try
                    {
                        if (ds.Tables[0].Rows[i][1].ToString() == "")
                        {

                        }

                    }

                    catch (Exception ex)
                    {
                        break;
                    }
                    if (ds.Tables[0].Rows[i][0].ToString() != "")
                    {

                        for (int m = i; m < i + 7; m++)
                        {

                            if (ds.Tables[0].Rows[m][i].ToString() != "")
                            {

                                //if (ds.Tables[0].Rows[m][1].ToString() != "")
                                //{


                                //}
                                //For First Time Schedule On A Day
                                //strInputXml = strInputXml + "<AddressFoodTruckEntity>";
                                //strInputXml = strInputXml + "<TruckAddressID>0</TruckAddressID>";
                                ////strInputXml = strInputXml + "<LocationId>" + locationID.ToString() + "</LocationId>";
                                //string ExcelAddress = ds.Tables[0].Rows[m][i].ToString();

                                string TeamMembers = ds.Tables[0].Rows[m][0].ToString();
                                string Adhoc = ds.Tables[0].Rows[m][1].ToString();

                                //Session["subcategory"] = subcategory;
                                string AtRisk = ds.Tables[0].Rows[m][2].ToString();
                                string GenMeetings = ds.Tables[0].Rows[m][3].ToString();
                                string IdleTime = ds.Tables[0].Rows[m][4].ToString();
                                string ItemSetup = ds.Tables[0].Rows[m][5].ToString();
                                string ItemSetup1 = ds.Tables[0].Rows[m][6].ToString();
                                string Leave = ds.Tables[0].Rows[m][7].ToString();
                                string OneonOne = ds.Tables[0].Rows[m][8].ToString();
                                string PoInquiries = ds.Tables[0].Rows[m][9].ToString();
                                string PoTracking = ds.Tables[0].Rows[m][10].ToString();
                                string ProcessTraining = ds.Tables[0].Rows[m][11].ToString();

                                 string PTG = ds.Tables[0].Rows[m][12].ToString();
                                string QualityAudit = ds.Tables[0].Rows[m][13].ToString();
                                string Quality2 = ds.Tables[0].Rows[m][14].ToString();
                                 string GrandTotal  = ds.Tables[0].Rows[m][15].ToString();

                                Class1 obj1 = new Class1();
                                DataSet ds1 = new DataSet();
                                ds1 = obj1.UploadExcel(1, 0, TeamMembers, Adhoc, AtRisk, GenMeetings, IdleTime, ItemSetup, ItemSetup1, Leave, OneonOne, PoInquiries, PoTracking, ProcessTraining, PTG, QualityAudit, Quality2, GrandTotal);
      
                                //Class1 obj = new Class1();
                                //DataSet ds1 = new DataSet();
                                //ds1 = obj.Products(35, 0, 0, 0, 0, "", "", "", "", "", "", "", "", "", "", "", "", "", "", category, "", "", 0,0);

                                //int catid = Convert.ToInt32(ds1.Tables[0].Rows[0]["CatgID"].ToString());
                                //Session["catid"] = catid;

                                //Class1 obj1 = new Class1();
                                //DataSet ds11 = new DataSet();
                                //ds11 = obj1.Products(36, 0, catid, 0, 0, "", subcategory, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 0, 0);

                                //int Subcat = Convert.ToInt32(ds11.Tables[0].Rows[0]["SubCatgID"].ToString());

                                //Class1 obj11 = new Class1();
                                //DataSet ds111 = new DataSet();
                                //ds111 = obj11.Products(37, 0, catid, Subcat, 0, productName, productDesc, "", "", "", "", Contact, Email, "", keyword1, keyword2, keyword3, keyword4, keyword5, "", "", "", 0, 0);


                                //i++;
                            }
                            else
                            {
                                break;
                            }
                        }

                    }

                    //if ((ds.Tables[0].Rows[i][1].ToString()) != "")
                    //{
                    //    //int k= Convert.ToInt32(ds.Tables[0].Rows[i][1].ToString());

                    //    for (int j = 1; j < 65536; j++)
                    //    {


                    //        for (int n = j; n < j + 7; n++)
                    //        {
                    //            string subcategory = ds.Tables[0].Rows[i][j].ToString();
                    //            Session["subcat"] = subcategory;
                    //            break;
                    //        }

                    //        string subcat = Session["subcat"].ToString();
                    //        int catid = Convert.ToInt32(Session["catid"].ToString());

                    //        Class1 obj1 = new Class1();
                    //        DataSet ds11 = new DataSet();
                    //        ds11 = obj1.Products(36, 0, catid, 0, 0, "", subcat, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 0, 0);

                    //        Session["subcat"] = null;
                    //        break;


                    //    }

                    //}

                    break;
                }


                //Delete Excel File After Reading Value's
                //if (File.Exists(Server.MapPath(UPLOADPATH + "\\Files\\" + strFilePath)))
                //{
                //    File.Delete(Server.MapPath(UPLOADPATH + "\\Files\\" + strFilePath));
                //}
                // Response.Write(strInputXml);
                //wlblMessage.Visible = true;
                //wlblMessage.Text = "Uploaded Successfully";
                //wlblMessage.Visible = true;



            }

            wlblMessage.Text = "Uploaded Successfully !!!";

        }
        catch (Exception e1)
        {
            wlblMessage.Text = "Uploaded Successfully !!!";
        }
    }

    //Code To Get File Path And Save
    public string GetFilePath()
    {

        string filename = "";
        String UPLOADPATH = HttpContext.Current.Request.PhysicalApplicationPath + "Uploads\\";
        //string UPLOADPATH = ;
        //Server.MapPath(UPLOADPATH + "\\ProductImage\\" + fileName)
        //FileStream stream = File.Open("C:\\inetpub\\wwwroot\\Uploads\\" + strFilePath, FileMode.Open, FileAccess.Read);
        if (FileUpload1.HasFile)
        {
            try
            {
                // if (FileUpload1.PostedFile.ContentType == "application/octet-stream")
                {
                    if (FileUpload1.PostedFile.ContentLength < 102400)
                    {



                        filename = FileUpload1.PostedFile.FileName;
                        //FileUpload1.SaveAs("C:\\Projects\\PennyPos\\ConfigSettings\\Uploads\\" + "\\" + FileUpload1.PostedFile.FileName);
                        //FileUpload1.SaveAs(UPLOADPATH + "ProductImage\\" + FileUpload1.PostedFile.FileName);
                        //FileUpload1.PostedFile.SaveAs(Server.MapPath(UPLOADPATH + filename));
                        FileUpload1.PostedFile.SaveAs(UPLOADPATH + filename);
                    }
                }

            }
            catch (Exception ex)
            {
            }
        }
        return filename;
    }
}
