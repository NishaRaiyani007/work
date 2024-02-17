using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using dal;

namespace bal
{
    public class Class1
    {
        public int checklogin(int Uid, string Username, string Password, string Emailid, string Phoneno, int Status, int Usertype, string Registeredon, string Modifiedon)
        {
            clsDataAccess.clsReturnStatus objRetnStatus = new clsDataAccess.clsReturnStatus();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[9];
            //clsDataAccess.AssignValues(ref objParam[0], "@flag", "SqlDbType.Int", "Input", flag);
            clsDataAccess.AssignValues(ref objParam[0], "@Uid", "SqlDbType.Int", "Input", Uid);
            clsDataAccess.AssignValues(ref objParam[1], "@username", "SqlDbType.VarChar", "Input", Username, 50);
            clsDataAccess.AssignValues(ref objParam[2], "@password", "SqlDbType.VarChar", "Input", Password, 50);
            clsDataAccess.AssignValues(ref objParam[3], "@Emailid", "SqlDbType.VarChar", "Input", Emailid, 50);
            clsDataAccess.AssignValues(ref objParam[4], "@Phoneno", "SqlDbType.VarChar", "Input", Phoneno, 50);
            clsDataAccess.AssignValues(ref objParam[5], "@Status", "SqlDbType.Int", "Input", Status);
            clsDataAccess.AssignValues(ref objParam[6], "@Usertype", "SqlDbType.Int", "Input", Usertype);
            clsDataAccess.AssignValues(ref objParam[7], "@Registeredon", "SqlDbType.VarChar", "Input", Registeredon, 50);
            clsDataAccess.AssignValues(ref objParam[8], "@Modifiedon", "SqlDbType.VarChar", "Input", Modifiedon, 50);
            string strSpName = "usp_login";
            int intRtnStatus = 1;
            string[] arrstrRet;
            arrstrRet = objRetnStatus.ExecuteProcedure(strSpName, objParam);
            intRtnStatus = Convert.ToInt32(arrstrRet[0]);
            return intRtnStatus;
        }


        public DataSet checkloginnew(int Uid, string Username, string Password, string Emailid, string Phoneno, int Status, int Usertype, string Registeredon, string Modifiedon)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[9];
            //clsDataAccess.AssignValues(ref objParam[0], "@flag", "SqlDbType.Int", "Input", flag);
            clsDataAccess.AssignValues(ref objParam[0], "@Uid", "SqlDbType.Int", "Input", Uid);
            clsDataAccess.AssignValues(ref objParam[1], "@username", "SqlDbType.VarChar", "Input", Username, 50);
            clsDataAccess.AssignValues(ref objParam[2], "@password", "SqlDbType.VarChar", "Input", Password, 50);
            clsDataAccess.AssignValues(ref objParam[3], "@Emailid", "SqlDbType.VarChar", "Input", Emailid, 50);
            clsDataAccess.AssignValues(ref objParam[4], "@Phoneno", "SqlDbType.VarChar", "Input", Phoneno, 50);
            clsDataAccess.AssignValues(ref objParam[5], "@Status", "SqlDbType.Int", "Input", Status);
            clsDataAccess.AssignValues(ref objParam[6], "@Usertype", "SqlDbType.Int", "Input", Usertype);
            clsDataAccess.AssignValues(ref objParam[7], "@Registeredon", "SqlDbType.VarChar", "Input", Registeredon, 50);
            clsDataAccess.AssignValues(ref objParam[8], "@Modifiedon", "SqlDbType.VarChar", "Input", Modifiedon, 50);

            DataSet ds = new DataSet();
            string strSpName = "usp_login";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }




        public DataSet Insert_to_Registration(int flag, int Uid, string Username, string Password, string EmailId, string PhoneNo, int Status,
            int Usertype, string RegisteredOn, string ModifiedOn)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[10];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);
            clsDataAccess.AssignValues(ref objParam[1], "@Uid ", "SqlDbType.Int", "Input", Uid);
            clsDataAccess.AssignValues(ref objParam[2], "@Username ", "SqlDbType.VarChar", "Input", Username, 50);

            clsDataAccess.AssignValues(ref objParam[3], "@EmailId", "SqlDbType.VarChar", "Input", EmailId, 50);
            clsDataAccess.AssignValues(ref objParam[4], "@Password ", "SqlDbType.VarChar", "Input", Password, 30);
            clsDataAccess.AssignValues(ref objParam[5], "@PhoneNo ", "SqlDbType.VarChar", "Input", PhoneNo, 20);
            clsDataAccess.AssignValues(ref objParam[6], "@Status ", "SqlDbType.Int", "Input", Status);
            clsDataAccess.AssignValues(ref objParam[7], "@Usertype ", "SqlDbType.Int", "Input", Usertype);
            clsDataAccess.AssignValues(ref objParam[8], "@RegisteredOn ", "SqlDbType.VarChar", "Input", RegisteredOn, 50);
            clsDataAccess.AssignValues(ref objParam[9], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);


            DataSet ds = new DataSet();
            string strSpName = "usp_registration";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }



        public DataSet Category(int flag, int @CatgID, string CatgName, string Status, string CreatedBy, string CreatedOn, string ModifiedOn)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[7];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);
            clsDataAccess.AssignValues(ref objParam[1], "@CatgID ", "SqlDbType.Int", "Input", CatgID);
            clsDataAccess.AssignValues(ref objParam[2], "@CatgName", "SqlDbType.VarChar", "Input", CatgName, 150);


            clsDataAccess.AssignValues(ref objParam[3], "@Status", "SqlDbType.VarChar", "Input", Status, 10);

            clsDataAccess.AssignValues(ref objParam[4], "@CreatedBy", "SqlDbType.VarChar", "Input", CreatedBy, 10);
            clsDataAccess.AssignValues(ref objParam[5], "@CreatedOn", "SqlDbType.VarChar", "Input", CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[6], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);


            DataSet ds = new DataSet();
            string strSpName = "usp_category";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }


        // 3, catid, SubCatName, "", "", "", ""
        public DataSet SubCategory(int flag, int SubCatgID, string SubCatgName, string Status, string CreatedBy, string CreatedOn, string ModifiedOn)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[7];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);


            clsDataAccess.AssignValues(ref objParam[1], "@SubCatgID ", "SqlDbType.Int", "Input", SubCatgID);
            clsDataAccess.AssignValues(ref objParam[2], "@SubCatgName", "SqlDbType.VarChar", "Input", SubCatgName, 150);

            clsDataAccess.AssignValues(ref objParam[3], "@Status", "SqlDbType.VarChar", "Input", Status, 10);

            clsDataAccess.AssignValues(ref objParam[4], "@CreatedBy", "SqlDbType.VarChar", "Input", CreatedBy, 10);
            clsDataAccess.AssignValues(ref objParam[5], "@CreatedOn", "SqlDbType.VarChar", "Input", CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[6], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);


            DataSet ds = new DataSet();
            string strSpName = "usp_category";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }



        public DataSet QuestionPaper(int flag, int QuestionID, int CatgID, int SubCatgID, int UserID, int QuestionNo, string Question, string OptionA, string OptionB, string OptionC, string OptionD, string Answer, string CreatedBy, string CreatedOn, string ModifiedOn, int Isdeleted)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[16];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);

            clsDataAccess.AssignValues(ref objParam[1], "@QuestionID ", "SqlDbType.Int", "Input", QuestionID);
            clsDataAccess.AssignValues(ref objParam[2], "@CatgID ", "SqlDbType.Int", "Input", CatgID);

            clsDataAccess.AssignValues(ref objParam[3], "@SubCatgID ", "SqlDbType.Int", "Input", SubCatgID);
            clsDataAccess.AssignValues(ref objParam[4], "@UserID ", "SqlDbType.Int", "Input", UserID);

            clsDataAccess.AssignValues(ref objParam[5], "@QuestionNo ", "SqlDbType.Int", "Input", QuestionNo);
            clsDataAccess.AssignValues(ref objParam[6], "@Question", "SqlDbType.VarChar", "Input", Question, 3000);
            clsDataAccess.AssignValues(ref objParam[7], "@OptionA", "SqlDbType.VarChar", "Input", OptionA, 500);
            clsDataAccess.AssignValues(ref objParam[8], "@OptionB", "SqlDbType.VarChar", "Input", OptionB, 500);
            clsDataAccess.AssignValues(ref objParam[9], "@OptionC", "SqlDbType.VarChar", "Input", OptionC, 500);
            clsDataAccess.AssignValues(ref objParam[10], "@OptionD", "SqlDbType.VarChar", "Input", OptionD, 500);
            clsDataAccess.AssignValues(ref objParam[11], "@Answer", "SqlDbType.VarChar", "Input", Answer, 500);

            clsDataAccess.AssignValues(ref objParam[12], "@CreatedBy", "SqlDbType.VarChar", "Input", CreatedBy, 10);
            clsDataAccess.AssignValues(ref objParam[13], "@CreatedOn", "SqlDbType.VarChar", "Input", CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[14], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);
            clsDataAccess.AssignValues(ref objParam[15], "@Isdeleted ", "SqlDbType.Int", "Input", Isdeleted);

            DataSet ds = new DataSet();
            string strSpName = "usp_QuestionPaper";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }

        public DataSet Users(int flag, int Uid, string Username, string Password, string EmailId, string PhoneNo, int Status, int Usertype, string RegisteredOn, string ModifiedOn)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[10];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);


            clsDataAccess.AssignValues(ref objParam[1], "@Uid", "SqlDbType.Int", "Input", Uid);
            clsDataAccess.AssignValues(ref objParam[2], "@Username", "SqlDbType.VarChar", "Input", Username, 50);
            clsDataAccess.AssignValues(ref objParam[3], "@Password", "SqlDbType.VarChar", "Input", Password, 30);
            clsDataAccess.AssignValues(ref objParam[4], "@EmailId", "SqlDbType.VarChar", "Input", EmailId, 50);

            clsDataAccess.AssignValues(ref objParam[5], "@PhoneNo", "SqlDbType.VarChar", "Input", PhoneNo, 20);

            clsDataAccess.AssignValues(ref objParam[6], "@Status", "SqlDbType.Int", "Input", Status);

            clsDataAccess.AssignValues(ref objParam[7], "@Usertype", "SqlDbType.Int", "Input", Usertype);
            clsDataAccess.AssignValues(ref objParam[8], "@RegisteredOn", "SqlDbType.VarChar", "Input", RegisteredOn, 50);
            clsDataAccess.AssignValues(ref objParam[9], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);


            DataSet ds = new DataSet();
            string strSpName = "usp_user";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }

        public DataSet news(int flag, int EventId, string Events, string Projects, string ParameterValue, string CreatedBy, string CreatedOn, string ModifiedOn)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[8];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);

            clsDataAccess.AssignValues(ref objParam[1], "@EventId ", "SqlDbType.Int", "Input", EventId);
            clsDataAccess.AssignValues(ref objParam[2], "@Events", "SqlDbType.VarChar", "Input", Events, 4000);
            clsDataAccess.AssignValues(ref objParam[3], "@Projects", "SqlDbType.VarChar", "Input", Projects, 4000);
            clsDataAccess.AssignValues(ref objParam[4], "@ParameterValue", "SqlDbType.VarChar", "Input", ParameterValue, 20);

            clsDataAccess.AssignValues(ref objParam[5], "@CreatedBy", "SqlDbType.VarChar", "Input", CreatedBy, 10);
            clsDataAccess.AssignValues(ref objParam[6], "@CreatedOn", "SqlDbType.VarChar", "Input", CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[7], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);


            DataSet ds = new DataSet();
            string strSpName = "usp_events";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }


        public DataSet Assign(int @flag, int @Aid, int @CatgID, int @SubCatgID, int @UserID, string @CreatedBy, string @CreatedOn, string @ModifiedOn, int @Isdeleted, string @SetTimings)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[10];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", @flag);

            clsDataAccess.AssignValues(ref objParam[1], "@Aid ", "SqlDbType.Int", "Input", @Aid);
            clsDataAccess.AssignValues(ref objParam[2], "@CatgID ", "SqlDbType.Int", "Input", @CatgID);
            clsDataAccess.AssignValues(ref objParam[3], "@SubCatgID ", "SqlDbType.Int", "Input", @SubCatgID);
            clsDataAccess.AssignValues(ref objParam[4], "@UserID ", "SqlDbType.Int", "Input", @UserID);

            clsDataAccess.AssignValues(ref objParam[5], "@CreatedBy", "SqlDbType.VarChar", "Input", @CreatedBy, 10);
            clsDataAccess.AssignValues(ref objParam[6], "@CreatedOn", "SqlDbType.VarChar", "Input", @CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[7], "@ModifiedOn", "SqlDbType.VarChar", "Input", @ModifiedOn, 50);
            clsDataAccess.AssignValues(ref objParam[8], "@Isdeleted", "SqlDbType.Int", "Input", @Isdeleted);
            clsDataAccess.AssignValues(ref objParam[9], "@SetTimings", "SqlDbType.VarChar", "Input", @SetTimings, 50);


            DataSet ds = new DataSet();
            string strSpName = "Usp_Assign";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }

        public DataSet Evaluation(int @flag, int EID, int CatID, int SubCatID, int UserID, int QID, string Answers, int Status, string CreatedBy, string CreatedOn, string ModifiedOn, string Temp, string Temp1, string Temp2)
        {
            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[14];

            clsDataAccess.AssignValues(ref objParam[0], "@flag ", "SqlDbType.Int", "Input", flag);
            clsDataAccess.AssignValues(ref objParam[1], "@EID ", "SqlDbType.Int", "Input", EID);

            clsDataAccess.AssignValues(ref objParam[2], "@CatID ", "SqlDbType.Int", "Input", CatID);
            clsDataAccess.AssignValues(ref objParam[3], "@SubCatID ", "SqlDbType.Int", "Input", SubCatID);
            clsDataAccess.AssignValues(ref objParam[4], "@UserID ", "SqlDbType.Int", "Input", UserID);
            clsDataAccess.AssignValues(ref objParam[5], "@QID ", "SqlDbType.Int", "Input", QID);
            clsDataAccess.AssignValues(ref objParam[6], "@Answers", "SqlDbType.VarChar", "Input", Answers, 50);
            clsDataAccess.AssignValues(ref objParam[7], "@Status ", "SqlDbType.Int", "Input", Status);

            clsDataAccess.AssignValues(ref objParam[8], "@CreatedBy", "SqlDbType.VarChar", "Input", CreatedBy, 50);
            clsDataAccess.AssignValues(ref objParam[9], "@CreatedOn", "SqlDbType.VarChar", "Input", CreatedOn, 50);
            clsDataAccess.AssignValues(ref objParam[10], "@ModifiedOn", "SqlDbType.VarChar", "Input", ModifiedOn, 50);
            clsDataAccess.AssignValues(ref objParam[11], "@Temp", "SqlDbType.VarChar", "Input", Temp, 50);
            clsDataAccess.AssignValues(ref objParam[12], "@Temp1", "SqlDbType.VarChar", "Input", Temp1, 50);
            clsDataAccess.AssignValues(ref objParam[13], "@Temp2", "SqlDbType.VarChar", "Input", Temp2, 50);


            DataSet ds = new DataSet();
            string strSpName = "Usp_Evaluation";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }

        public DataSet UploadExcel(int @flag, int @TID, string @TeamMembers, string @Adhoc, string @AtRisk, string @GenMeetings, string @GenTrainings, string @IdleTime, string @Leave, string @OneonOne, string @OperationMeetings, string @PoInquiries, string @PoInqTimetaken, string @PoTracking, string @PoTrackTimetaken, string @PTG, string @QualityAudit, string @GrandTotal)
        {

            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[18];
            clsDataAccess.AssignValues(ref objParam[0], "@flag", "SqlDbType.Int", "Input", @flag);
            clsDataAccess.AssignValues(ref objParam[1], "@TID", "SqlDbType.Int", "Input", @TID);
            clsDataAccess.AssignValues(ref objParam[2], "@TeamMembers", "SqlDbType.VarChar", "Input", @TeamMembers, 50);
            clsDataAccess.AssignValues(ref objParam[3], "@Adhoc", "SqlDbType.VarChar", "Input", @Adhoc, 50);
            clsDataAccess.AssignValues(ref objParam[4], "@AtRisk", "SqlDbType.VarChar", "Input", @AtRisk, 50);
            clsDataAccess.AssignValues(ref objParam[5], "@GenMeetings", "SqlDbType.VarChar", "Input", @GenMeetings, 50);
            clsDataAccess.AssignValues(ref objParam[6], "@GenTrainings", "SqlDbType.VarChar", "Input", @GenTrainings, 50);
            clsDataAccess.AssignValues(ref objParam[7], "@IdleTime", "SqlDbType.VarChar", "Input", @IdleTime, 50);
            clsDataAccess.AssignValues(ref objParam[8], "@Leave", "SqlDbType.VarChar", "Input", @Leave, 50);
            clsDataAccess.AssignValues(ref objParam[9], "@OneonOne", "SqlDbType.VarChar", "Input", @OneonOne, 50);
            clsDataAccess.AssignValues(ref objParam[10], "@OperationMeetings", "SqlDbType.VarChar", "Input", @OperationMeetings, 50);
                        
            clsDataAccess.AssignValues(ref objParam[11], "@PoInquiries", "SqlDbType.VarChar", "Input", @PoInquiries, 50);
            clsDataAccess.AssignValues(ref objParam[12], "@PoInqTimetaken", "SqlDbType.VarChar", "Input", @PoInqTimetaken, 50);
            clsDataAccess.AssignValues(ref objParam[13], "@PoTracking", "SqlDbType.VarChar", "Input", @PoTracking, 50);
            clsDataAccess.AssignValues(ref objParam[14], "@PoTrackTimetaken", "SqlDbType.VarChar", "Input", @PoTrackTimetaken, 50);
            clsDataAccess.AssignValues(ref objParam[15], "@PTG", "SqlDbType.VarChar", "Input", @PTG, 50);
            clsDataAccess.AssignValues(ref objParam[16], "@QualityAudit", "SqlDbType.VarChar", "Input", @QualityAudit, 50);
            clsDataAccess.AssignValues(ref objParam[17], "@GrandTotal", "SqlDbType.VarChar", "Input", @GrandTotal, 50);

            DataSet ds = new DataSet();
            string strSpName = "usp_uploadexcel";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }


        public DataSet ExcelCharts(int @flag, int @CID, int @TID, string @TeamMembers, string @Utilization, string @Volume, string @Quality, string @Efficiency)
        {

            clsDataAccess.clsReturnDataSet objRetDataSet = new clsDataAccess.clsReturnDataSet();
            clsDataAccess.SPParams[] objParam = new clsDataAccess.SPParams[8];
            clsDataAccess.AssignValues(ref objParam[0], "@flag", "SqlDbType.Int", "Input", @flag);
            clsDataAccess.AssignValues(ref objParam[1], "@CID", "SqlDbType.Int", "Input", @CID);
            clsDataAccess.AssignValues(ref objParam[2], "@TID", "SqlDbType.Int", "Input", @TID);
            clsDataAccess.AssignValues(ref objParam[3], "@TeamMembers", "SqlDbType.VarChar", "Input", @TeamMembers, 50);
            clsDataAccess.AssignValues(ref objParam[4], "@Utilization", "SqlDbType.VarChar", "Input", @Utilization, 50);
            clsDataAccess.AssignValues(ref objParam[5], "@Volume", "SqlDbType.VarChar", "Input", @Volume, 50);
            clsDataAccess.AssignValues(ref objParam[6], "@Quality", "SqlDbType.VarChar", "Input", @Quality, 50);
            clsDataAccess.AssignValues(ref objParam[7], "@Efficiency", "SqlDbType.VarChar", "Input", @Efficiency, 50);
           
            
            DataSet ds = new DataSet();
            string strSpName = "Usp_Charts";
            ds = objRetDataSet.ExecuteProcedure(strSpName, objParam);
            return ds;
        }


    }
}
