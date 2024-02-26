using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for EducationPro
/// </summary>
public class Dataclass
{
    public Dataclass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string connectionString()
    {
        return ConfigurationManager.ConnectionStrings["edudb"].ToString();
    }
    public DataSet For_pass(string UserID)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindFor_Pass]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("UserName", UserID);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);

        return ds;
    }
    public DataSet SearchProperty(string Search)
    {

        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[SearchProperty]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Search", Search);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public void InsertEdu(string SchoolName, string SSCPercentage, string HSCPercentage, string HSCPassingYear, string CollegeNameUG, string UniversityNameUG, string DegreeUG, string CPIUG, string PassingYearUG, string CollegeNamePG, string UniversityNamePG, string DegreePG, string CPIPG, string PassingYearPG, string ExtraCurricular, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[InsertEdu]", con);
        cmd.Parameters.AddWithValue("@schoolname", SchoolName);
        cmd.Parameters.AddWithValue("@SSCPercentage", SSCPercentage);
        cmd.Parameters.AddWithValue("@HSCPercentage", HSCPercentage);
        cmd.Parameters.AddWithValue("@HSCPassingYear", HSCPassingYear);
        cmd.Parameters.AddWithValue("@CollegeNameUG", CollegeNameUG);
        cmd.Parameters.AddWithValue("@UniversityNameUG", UniversityNameUG);
        cmd.Parameters.AddWithValue("@DegreeUG", DegreeUG);
        cmd.Parameters.AddWithValue("@CPIUG", CPIUG);
        cmd.Parameters.AddWithValue("@PassingYearUG", PassingYearUG);
        cmd.Parameters.AddWithValue("@CollegeNamePG", CollegeNamePG);
        cmd.Parameters.AddWithValue("@UniversityNamePG",UniversityNamePG);
        cmd.Parameters.AddWithValue("@DegreePG",DegreePG);
        cmd.Parameters.AddWithValue("@CPIPG",CPIPG);
        cmd.Parameters.AddWithValue("@PassingYearPG",PassingYearPG);
        cmd.Parameters.AddWithValue("@ExtraCurricular", ExtraCurricular);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }
    public DataSet BindEdu(string User_Id)
    {
         SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindEdu]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteEdu(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteCampus]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id",Id);
        cmd.ExecuteNonQuery();

    }

    public void UpdateEdu(string SchoolName, string SSCPercentage, string HSCPercentage, string HSCPassingYear, string CollegeNameUG, string UniversityNameUG, string DegreeUG, string CPIUG, string PassingYearUG, string CollegeNamePG, string UniversityNamePG, string DegreePG, string CPIPG, string PassingYearPG, string ExtraCurricular,string User_Id,string ID)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[UpdateEdu]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@schoolname", SchoolName);
        cmd.Parameters.AddWithValue("@SSCPercentage", SSCPercentage);
        cmd.Parameters.AddWithValue("@HSCPercentage", HSCPercentage);
        cmd.Parameters.AddWithValue("@HSCPassingYear", HSCPassingYear);
        cmd.Parameters.AddWithValue("@CollegeNameUG", CollegeNameUG);
        cmd.Parameters.AddWithValue("@UniversityNameUG", UniversityNameUG);
        cmd.Parameters.AddWithValue("@DegreeUG", DegreeUG);
        cmd.Parameters.AddWithValue("@CPIUG", CPIUG);
        cmd.Parameters.AddWithValue("@PassingYearUG", PassingYearUG);
        cmd.Parameters.AddWithValue("@CollegeNamePG", CollegeNamePG);
        cmd.Parameters.AddWithValue("@UniversityNamePG",UniversityNamePG);
        cmd.Parameters.AddWithValue("@DegreePG",DegreePG);
        cmd.Parameters.AddWithValue("@CPIPG",CPIPG);
        cmd.Parameters.AddWithValue("@PassingYearPG",PassingYearPG);
        cmd.Parameters.AddWithValue("@ExtraCurricular", ExtraCurricular);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@ID",ID);
        cmd.ExecuteNonQuery();
       
   }

    public DataSet BindPersonal(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindPersonal]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void Personalinsert(string FirstName, string MiddleName, string LastName, string Age, string Gender, string DateOfBirth, string Address1, string Address2, string City, string State, string Country, string Nationality, string Hobby, string ContactNo, string MobileNo, string Email, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[Personalinsert]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@MiddleName", MiddleName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@Age", Age);
        cmd.Parameters.AddWithValue("@Gender", Gender);
        cmd.Parameters.AddWithValue("@DateOfBirth",DateOfBirth);
        cmd.Parameters.AddWithValue("@Address1",Address1);
        cmd.Parameters.AddWithValue("@Address2", Address2);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@Country",Country);
        cmd.Parameters.AddWithValue("@Nationality",Nationality);
        cmd.Parameters.AddWithValue("@Hobby", Hobby);
        cmd.Parameters.AddWithValue("@ContactNo",ContactNo);
        cmd.Parameters.AddWithValue("@MobileNo",MobileNo);
        cmd.Parameters.AddWithValue("@EmailID", Email);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.ExecuteNonQuery();
    }
    public void PerUpdate(string FirstName, string MiddleName, string LastName, string Age, string Gender, string DateOfBirth, string Address1, string Address2, string City, string State, string Country, string Nationality, string Hobby, string ContactNo, string MobileNo, string Email,string ID)
    {
         SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[PerUpdate]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@MiddleName", MiddleName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@Age", Age);
        cmd.Parameters.AddWithValue("@Gender", Gender);
        cmd.Parameters.AddWithValue("@DateOfBirth",DateOfBirth);
        cmd.Parameters.AddWithValue("@Address1",Address1);
        cmd.Parameters.AddWithValue("@Address2", Address2);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@Country",Country);
        cmd.Parameters.AddWithValue("@Nationality",Nationality);
        cmd.Parameters.AddWithValue("@Hobby", Hobby);
        cmd.Parameters.AddWithValue("@ContactNo",ContactNo);
        cmd.Parameters.AddWithValue("@MobileNo",MobileNo);
        cmd.Parameters.AddWithValue("@EmailID", Email);
        cmd.Parameters.AddWithValue("@ID",ID);
        cmd.ExecuteNonQuery();
    }

    public void DeletePer(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeletePer]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }
    public DataSet BindEmp(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindEmp]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteEmp(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteEmp]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id",Id);
        cmd.ExecuteNonQuery();
    }

    public void EmpInsert(string EmployeeName, string CompanyName, string Deparment, string Status, string DateOfJoining, string Skill, string CurrentSalary,string User_Id  ,string Category, string Achievement, string LanguageKnown, string PreviousCompany, string Designation, string PreviousSalary, string Experiance, string Reason, string CompanyEmailId, string CompanyContactNo)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("EmpInsert",con);
        cmd.Parameters.AddWithValue("@EmployeeName", EmployeeName);
        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        cmd.Parameters.AddWithValue("@Department", Deparment);
        cmd.Parameters.AddWithValue("@Status",Status);
        cmd.Parameters.AddWithValue("@DateOfJoining",DateOfJoining);
        cmd.Parameters.AddWithValue("@Skill",Skill);
        cmd.Parameters.AddWithValue("@CurrentSalary",CurrentSalary);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@Category",Category);
        cmd.Parameters.AddWithValue("@Achievement", Achievement);
        cmd.Parameters.AddWithValue("@LanguageKnown",LanguageKnown);
        cmd.Parameters.AddWithValue("@PreviousCompany",PreviousCompany);
        cmd.Parameters.AddWithValue("@Designation",Designation);
        cmd.Parameters.AddWithValue("@PreviousSalary", PreviousSalary);
        cmd.Parameters.AddWithValue("@Experiance",Experiance);
        cmd.Parameters.AddWithValue("@Reason",Reason);
        cmd.Parameters.AddWithValue("@CompanyEmailId",CompanyEmailId);
        cmd.Parameters.AddWithValue("@CompanyContactNo", CompanyContactNo);
        //cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateEmp(string EmployeeName, string CompanyName, string Deparment, string Status, string DateOfJoining, string Skill, string CurrentSalary,string User_Id, string Category, string Achievement, string LanguageKnown, string PreviousCompany, string Designation, string PreviousSalary, string Experiance, string Reason, string CompanyEmailId, string CompanyContactNo, string ID)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateEmp", con);
        cmd.Parameters.AddWithValue("@EmployeeName", EmployeeName);
        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        cmd.Parameters.AddWithValue("@Department", Deparment);
        cmd.Parameters.AddWithValue("@Status", Status);
        cmd.Parameters.AddWithValue("@DateOfJoining", DateOfJoining);
        cmd.Parameters.AddWithValue("@Skill", Skill);
        cmd.Parameters.AddWithValue("@CurrentSalary", CurrentSalary);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Category", Category);
        cmd.Parameters.AddWithValue("@Achievement", Achievement);
        cmd.Parameters.AddWithValue("@LanguageKnown", LanguageKnown);
        cmd.Parameters.AddWithValue("@PreviousCompany", PreviousCompany);
        cmd.Parameters.AddWithValue("@Designation", Designation);
        cmd.Parameters.AddWithValue("@PreviousSalary", PreviousSalary);
        cmd.Parameters.AddWithValue("@Experiance", Experiance);
        cmd.Parameters.AddWithValue("@Reason", Reason);
        cmd.Parameters.AddWithValue("@CompanyEmailId", CompanyEmailId);
        cmd.Parameters.AddWithValue("@CompanyContactNo", CompanyContactNo);
        cmd.Parameters.AddWithValue("@ID", ID);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindBus(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindBus]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public void BusinessInsert(string CompanyName, string BranchName, string BranchCode, string Address, string City, string State, string ZipCode, string OfficeContactNo, string EmergencyContactNo, string CompanyWebsite, string CompanyEmailId, string Discription, string DepartmentOfCompany, string StrengthOfEmployee, string TotalEmployeeProfit, string CompanyProfit, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("BusinessInsert", con);
        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        cmd.Parameters.AddWithValue("@BranchName", BranchName);
        cmd.Parameters.AddWithValue("@BranchCode", BranchCode);
        cmd.Parameters.AddWithValue("@Address",Address);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@ZipCode",ZipCode);
        cmd.Parameters.AddWithValue("@OfficeContactNo",OfficeContactNo);
        cmd.Parameters.AddWithValue("@EmergencyContactNo",EmergencyContactNo);
        cmd.Parameters.AddWithValue("@CompanyWebsite",CompanyWebsite);
        cmd.Parameters.AddWithValue("@CompanyEmailId",CompanyEmailId);
        cmd.Parameters.AddWithValue("@Discription",Discription);
        cmd.Parameters.AddWithValue("@DepartmentOfCompany",DepartmentOfCompany);
        cmd.Parameters.AddWithValue("@StrengthOfEmployee",StrengthOfEmployee);
        cmd.Parameters.AddWithValue("@TotalEmployeeProfit",TotalEmployeeProfit);
        cmd.Parameters.AddWithValue("@CompanyProfit",CompanyProfit);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }
    public void BusinessUpdate(string CompanyName, string BranchName, string BranchCode, string Address, string City, string State, string ZipCode, string OfficeContactNo, string EmergencyContactNo, string CompanyWebsite, string CompanyEmailId, string Discription, string DepartmentOfCompany, string StrengthOfEmployee, string TotalEmployeeProfit, string CompanyProfit, string ID)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("BusinessUpdate", con);
        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        cmd.Parameters.AddWithValue("@BranchName", BranchName);
        cmd.Parameters.AddWithValue("@BranchCode", BranchCode);
        cmd.Parameters.AddWithValue("@Address", Address);
        cmd.Parameters.AddWithValue("@City", City);
        cmd.Parameters.AddWithValue("@State", State);
        cmd.Parameters.AddWithValue("@ZipCode", ZipCode);
        cmd.Parameters.AddWithValue("@OfficeContactNo", OfficeContactNo);
        cmd.Parameters.AddWithValue("@EmergencyContactNo", EmergencyContactNo);
        cmd.Parameters.AddWithValue("@CompanyWebsite", CompanyWebsite);
        cmd.Parameters.AddWithValue("@CompanyEmailId", CompanyEmailId);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@DepartmentOfCompany", DepartmentOfCompany);
        cmd.Parameters.AddWithValue("@StrengthOfEmployee", StrengthOfEmployee);
        cmd.Parameters.AddWithValue("@TotalEmployeeProfit", TotalEmployeeProfit);
        cmd.Parameters.AddWithValue("@CompanyProfit", CompanyProfit);
        cmd.Parameters.AddWithValue("@ID",ID);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void DeleteBus(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteBus]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void ResumeInsert(string User_Id, string FullName, string CurrentLocation, string Nationality, string Gender, string MobileNo)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("ResumeInsert",con);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@FullName",FullName);
        cmd.Parameters.AddWithValue("@CurrentLocation",CurrentLocation);
        cmd.Parameters.AddWithValue("@Nationality",Nationality);
        cmd.Parameters.AddWithValue("@Gender",Gender);
        cmd.Parameters.AddWithValue("@MobileNo",MobileNo);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }

    public void ResumeUpdate(string User_Id, string FullName, string CurrentLocation, string Nationality, string Gender, string MobileNo, string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("ResumeUpdate", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@FullName", FullName);
        cmd.Parameters.AddWithValue("@CurrentLocation", CurrentLocation);
        cmd.Parameters.AddWithValue("@Nationality", Nationality);
        cmd.Parameters.AddWithValue("@Gender", Gender);
        cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }
    public DataSet BindResume(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindResume]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteResume(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteResume]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void SocialInsert(string Twitter, string Facebook, string LinkedIn, string Quiker, string FlipKart, string Tagged, string Pinterest, string WikiPedia, string Myspace, string Badoo, string IndiaTimes, string MeetUp, string Websites, string Location, string Job, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("SocialInsert",con);
        cmd.Parameters.AddWithValue("@Twitter", Twitter);
        cmd.Parameters.AddWithValue("@Facebook",Facebook);
        cmd.Parameters.AddWithValue("@LinkedIn",LinkedIn);
        cmd.Parameters.AddWithValue("@Quiker",Quiker);
        cmd.Parameters.AddWithValue("@FlipKart",FlipKart);
        cmd.Parameters.AddWithValue("@Tagged",Tagged);
        cmd.Parameters.AddWithValue("@Pinterest",Pinterest);
        cmd.Parameters.AddWithValue("@WikiPedia",WikiPedia);
        cmd.Parameters.AddWithValue("@Myspace",Myspace);
        cmd.Parameters.AddWithValue("@Badoo",Badoo);
        cmd.Parameters.AddWithValue("@IndiaTimes",IndiaTimes);
        cmd.Parameters.AddWithValue("@MeetUp",MeetUp);
        cmd.Parameters.AddWithValue("@Websites",Websites);
        cmd.Parameters.AddWithValue("@Location",Location);
        cmd.Parameters.AddWithValue("@Job",Job);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void SocialUpdate(string Twitter, string Facebook, string LinkedIn, string Quiker, string FlipKart, string Tagged, string Pinterest, string WikiPedia, string Myspace, string Badoo, string IndiaTimes, string MeetUp, string Websites, string Location, string Job,string User_Id, string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("SocialUpdate", con);
        cmd.Parameters.AddWithValue("@Twitter", Twitter);
        cmd.Parameters.AddWithValue("@Facebook", Facebook);
        cmd.Parameters.AddWithValue("@LinkedIn", LinkedIn);
        cmd.Parameters.AddWithValue("@Quiker", Quiker);
        cmd.Parameters.AddWithValue("@FlipKart", FlipKart);
        cmd.Parameters.AddWithValue("@Tagged", Tagged);
        cmd.Parameters.AddWithValue("@Pinterest", Pinterest);
        cmd.Parameters.AddWithValue("@WikiPedia", WikiPedia);
        cmd.Parameters.AddWithValue("@Myspace", Myspace);
        cmd.Parameters.AddWithValue("@Badoo", Badoo);
        cmd.Parameters.AddWithValue("@IndiaTimes", IndiaTimes);
        cmd.Parameters.AddWithValue("@MeetUp", MeetUp);
        cmd.Parameters.AddWithValue("@Websites", Websites);
        cmd.Parameters.AddWithValue("@Location", Location);
        cmd.Parameters.AddWithValue("@Job", Job);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindSocial(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindSocial]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteSocial(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteSocial]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertJob_Des(string User_Id, string Discription, string Timing, string Skill, string Reference, string Job_Status, string Job_Name, string Job_StartDate, string ApplicationName)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertJob_Des", con);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@Discription",Discription);
        cmd.Parameters.AddWithValue("@Timing",Timing);
        cmd.Parameters.AddWithValue("@Skill",Skill);
        cmd.Parameters.AddWithValue("@Reference",Reference);
        cmd.Parameters.AddWithValue("@Job_Status",Job_Status);
        cmd.Parameters.AddWithValue("@Job_Name",Job_Name);
        cmd.Parameters.AddWithValue("@Job_StartDate",Job_StartDate);
        cmd.Parameters.AddWithValue("@ApplicationName",ApplicationName);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateJob_Des(string User_Id, string Discription, string Timing, string Skill, string Reference, string Job_Status, string Job_Name, string Job_StartDate, string ApplicationName,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateJob_Des", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@Timing", Timing);
        cmd.Parameters.AddWithValue("@Skill", Skill);
        cmd.Parameters.AddWithValue("@Reference", Reference);
        cmd.Parameters.AddWithValue("@Job_Status", Job_Status);
        cmd.Parameters.AddWithValue("@Job_Name", Job_Name);
        cmd.Parameters.AddWithValue("@Job_StartDate", Job_StartDate);
        cmd.Parameters.AddWithValue("@ApplicationName", ApplicationName);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindJob_Des(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindJob_Des]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteJob_Des(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteJob_Des]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }


    public void InsertFeedback(string User_Id, string Title, string Discription, string Date, string Responce, string Responce_Date)
    {
          SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertFeedback", con);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@Title",Title);
        cmd.Parameters.AddWithValue("@Discription",Discription);
        cmd.Parameters.AddWithValue("@Date",Date);
        cmd.Parameters.AddWithValue("@Responce",Responce);
        cmd.Parameters.AddWithValue("@Responce_Date",Responce_Date);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }

    public void UpdateFeedback(string User_Id, string Title, string Discription, string Date, string Responce, string Responce_Date,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateFeedback", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Title", Title);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@Date", Date);
        cmd.Parameters.AddWithValue("@Responce", Responce);
        cmd.Parameters.AddWithValue("@Responce_Date", Responce_Date);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }

    public DataSet BindFeedback(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindFeedback]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteFeedback(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteFeedback]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertApplication(string User_Id, string Company_Id, string Status, string ApplicationDate, string Review)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertApplication", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Company_Id",Company_Id);
        cmd.Parameters.AddWithValue("@Status",Status);
        cmd.Parameters.AddWithValue("@ApplicationDate",ApplicationDate);
        cmd.Parameters.AddWithValue("@Review",Review);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateApplication(string User_Id, string Company_Id, string Status, string ApplicationDate, string Review,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateApplication", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Company_Id", Company_Id);
        cmd.Parameters.AddWithValue("@Status", Status);
        cmd.Parameters.AddWithValue("@ApplicationDate", ApplicationDate);
        cmd.Parameters.AddWithValue("@Review", Review);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindApplication(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindApplication]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteApplication(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteApplication]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertProfessional_Detail(string Job_Type, string Experiance, string CurrentIndustry, string Function, string KeySkill, string ProfileHeadline, string Education, string Certificate, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertProfessional_Detail", con);
        cmd.Parameters.AddWithValue("@Job_Type", Job_Type);
        cmd.Parameters.AddWithValue("@Experiance",Experiance);
        cmd.Parameters.AddWithValue("@CurrentIndustry",CurrentIndustry);
        cmd.Parameters.AddWithValue("@Function",Function);
        cmd.Parameters.AddWithValue("@KeySkill",KeySkill);
        cmd.Parameters.AddWithValue("@ProfileHeadline",ProfileHeadline);
        cmd.Parameters.AddWithValue("@Education",Education);
        cmd.Parameters.AddWithValue("@Certificate",Certificate);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateProfessional_Detail(string Job_Type, string Experiance, string CurrentIndustry, string Function, string KeySkill, string ProfileHeadline, string Education, string Certificate,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateProfessional_Detail", con);
        cmd.Parameters.AddWithValue("@Job_Type", Job_Type);
        cmd.Parameters.AddWithValue("@Experiance", Experiance);
        cmd.Parameters.AddWithValue("@CurrentIndustry", CurrentIndustry);
        cmd.Parameters.AddWithValue("@Function", Function);
        cmd.Parameters.AddWithValue("@KeySkill", KeySkill);
        cmd.Parameters.AddWithValue("@ProfileHeadline", ProfileHeadline);
        cmd.Parameters.AddWithValue("@Education", Education);
        cmd.Parameters.AddWithValue("@Certificate", Certificate);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindProfessional_Detail(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindProfessional_Detail]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteProfessional_Detail(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteProfessional_Detail]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertRequired_Job(string User_Id, string CompanyName, string Branch, string Location, string Experiance, string Salary, string Requirement, string Skill, string Job_type, string NoOfVacancy, string EndDate)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertRequired_Job", con);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@CompanyName",CompanyName);
        cmd.Parameters.AddWithValue("@Branch",Branch);
        cmd.Parameters.AddWithValue("@Location",Location);
        cmd.Parameters.AddWithValue("@Experiance",Experiance);
        cmd.Parameters.AddWithValue("@Salary",Salary);
        cmd.Parameters.AddWithValue("@Requirement",Requirement);
        cmd.Parameters.AddWithValue("@Skill",Skill);
        cmd.Parameters.AddWithValue("@Job_type",Job_type);
        cmd.Parameters.AddWithValue("@NoOfVacancy",NoOfVacancy);
        cmd.Parameters.AddWithValue("@EndDate",EndDate);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateRequired_Job(string User_Id, string CompanyName, string Branch, string Location, string Experiance, string Salary, string Requirement, string Skill, string Job_type, string NoOfVacancy, string EndDate,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateRequired_Job", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
        cmd.Parameters.AddWithValue("@Branch", Branch);
        cmd.Parameters.AddWithValue("@Location", Location);
        cmd.Parameters.AddWithValue("@Experiance", Experiance);
        cmd.Parameters.AddWithValue("@Salary", Salary);
        cmd.Parameters.AddWithValue("@Requirement", Requirement);
        cmd.Parameters.AddWithValue("@Skill", Skill);
        cmd.Parameters.AddWithValue("@Job_type", Job_type);
        cmd.Parameters.AddWithValue("@NoOfVacancy", NoOfVacancy);
        cmd.Parameters.AddWithValue("@EndDate", EndDate);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindRequired_Job(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindRequired_Job]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public void DeleteRequired_Job(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteRequired_Job]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }
    public void InsertContactUs(string User_Id, string Name, string Email, string Message)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertContactUs", con);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@Name",Name);
        cmd.Parameters.AddWithValue("@Email",Email);
        cmd.Parameters.AddWithValue("@Message",Message);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateContactUs(string User_Id, string Name, string Email, string Message,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateContactUs", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Name", Name);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Message", Message);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindContactUs()
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindContactUs]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteContactUs(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteContactUs]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertCampus(string CompanyName, string Title, string Messages, string City, string State, string Place, string Date, string Days, string Qualification, string AggregatePercentage, string NoOfVacancy, string Type, string Status, string Exam, string OtherReqirement, string ApplicationDate, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertCampus", con);
        cmd.CommandType = CommandType.StoredProcedure;
       
        cmd.Parameters.AddWithValue("@CompanyName",CompanyName);
        cmd.Parameters.AddWithValue("@Title",Title);
        cmd.Parameters.AddWithValue("@Messages",Messages);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@Place",Place);
        cmd.Parameters.AddWithValue("@Date",Date);
        cmd.Parameters.AddWithValue("@Days",Days);
        cmd.Parameters.AddWithValue("@Qualification",Qualification);
        cmd.Parameters.AddWithValue("@AggregatePercentage",AggregatePercentage);
        cmd.Parameters.AddWithValue("@NoOfVacancy",NoOfVacancy);
        cmd.Parameters.AddWithValue("@Type", Type);
        cmd.Parameters.AddWithValue("@Status",Status);
        cmd.Parameters.AddWithValue("@Exam",Exam);
        cmd.Parameters.AddWithValue("@OtherReqirement",OtherReqirement);
        cmd.Parameters.AddWithValue("@ApplicationDate",ApplicationDate);
        cmd.Parameters.AddWithValue("@User_Id", User_Id); 
        cmd.ExecuteNonQuery();
    }

    
    public void UpdateCampus(string CompanyName, string Title, string Messages, string City, string State, string Place, string Date, string Days, string Qualification, string AggregatePercentage, string NoOfVacancy, string Type, string Status, string Exam, string OtherReqirement, string ApplicationDate,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateCampus", con);
        //cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@CompanyName",CompanyName);
        cmd.Parameters.AddWithValue("@Title",Title);
        cmd.Parameters.AddWithValue("@Messages",Messages);
        cmd.Parameters.AddWithValue("@City",City);
        cmd.Parameters.AddWithValue("@State",State);
        cmd.Parameters.AddWithValue("@Place",Place);
        cmd.Parameters.AddWithValue("@Date",Date);
        cmd.Parameters.AddWithValue("@Days",Days);
        cmd.Parameters.AddWithValue("@Qualification",Qualification);
        cmd.Parameters.AddWithValue("@AggregatePercentage",AggregatePercentage);
        cmd.Parameters.AddWithValue("@NoOfVacancy",NoOfVacancy);
        cmd.Parameters.AddWithValue("@Type",Type);
        cmd.Parameters.AddWithValue("@Status",Status);
        cmd.Parameters.AddWithValue("@Exam",Exam);
        cmd.Parameters.AddWithValue("@OtherReqirement",OtherReqirement);
        cmd.Parameters.AddWithValue("@ApplicationDate",ApplicationDate);
        cmd.Parameters.AddWithValue("@Id",Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindCampus(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindCampus]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteCampus(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteCampus]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertMail(string Receiver_Id, string Sender_Id, string Subject, string Discription, string SenderUser_Id, string ReceiverUser_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertMail", con);
        cmd.Parameters.AddWithValue("@Receiver_Id", Receiver_Id);
        cmd.Parameters.AddWithValue("@Sender_Id", Sender_Id);
        cmd.Parameters.AddWithValue("@Subject",Subject);
        cmd.Parameters.AddWithValue("@Discription",Discription);
        cmd.Parameters.AddWithValue("@SenderUser_Id",SenderUser_Id);
        cmd.Parameters.AddWithValue("@ReceiverUser_Id",ReceiverUser_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateMail(string Receiver_Id, string Sender_Id, string Subject, string Discription, string SenderUser_Id, string ReceiverUser_Id,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateMail", con);
        cmd.Parameters.AddWithValue("@Receiver_Id", Receiver_Id);
        cmd.Parameters.AddWithValue("@Sender_Id", Sender_Id);
        cmd.Parameters.AddWithValue("@Subject", Subject);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@SenderUser_Id", SenderUser_Id);
        cmd.Parameters.AddWithValue("@ReceiverUser_Id", ReceiverUser_Id);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindMail(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindMail]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteMail(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteMail]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertLogIn(string LogIn_Id, string User_Id, string Password, string Type, string App_Date)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertLogIn", con);
        cmd.Parameters.AddWithValue("@LogIn_Id",LogIn_Id);
        cmd.Parameters.AddWithValue("@User_Id",User_Id);
        cmd.Parameters.AddWithValue("@Password",Password);
        cmd.Parameters.AddWithValue("@Type",Type);
        cmd.Parameters.AddWithValue("@App_Date",App_Date);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateLogIn(string LogIn_Id, string User_Id, string Password, string Type, string App_Date,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateLogIn", con);
        cmd.Parameters.AddWithValue("@LogIn_Id", LogIn_Id);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Password", Password);
        cmd.Parameters.AddWithValue("@Type", Type);
        cmd.Parameters.AddWithValue("@App_Date", App_Date);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindLogIn(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindLogIn]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteLogIn(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteLogIn]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }

    public void InsertSports(string SchoolSports1, string SchoolSports2, string SchoolSports3, string SchoolLevelAwards, string OtherAwardsAtSchoolLevel, string CollegeSports1, string CollegeSports2, string CollegeSports3, string CollegeLevelAwards, string OtherAwardsAtCollegeLevel, string OtherSports1, string OtherSports2, string OtherSports3, string OtherAwards, string ExtraAwards, string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertSports", con);
        cmd.Parameters.AddWithValue("@SchoolSports1",SchoolSports1);
        cmd.Parameters.AddWithValue("@SchoolSports2",SchoolSports2);
        cmd.Parameters.AddWithValue("@SchoolSports3",SchoolSports3);
        cmd.Parameters.AddWithValue("@SchoolLevelAwards",SchoolLevelAwards);
        cmd.Parameters.AddWithValue("@OtherAwardsAtSchoolLevel",OtherAwardsAtSchoolLevel);
        cmd.Parameters.AddWithValue("@CollegeSports1",CollegeSports1);
        cmd.Parameters.AddWithValue("@CollegeSports2",CollegeSports2);
        cmd.Parameters.AddWithValue("@CollegeSports3",CollegeSports3);
        cmd.Parameters.AddWithValue("@CollegeLevelAwards",CollegeLevelAwards);
        cmd.Parameters.AddWithValue("@OtherAwardsAtCollegeLevel",OtherAwardsAtCollegeLevel);
        cmd.Parameters.AddWithValue("@OtherSports1",OtherSports1);
        cmd.Parameters.AddWithValue("@OtherSports2",OtherSports2);
        cmd.Parameters.AddWithValue("@OtherSports3",OtherSports3);
        cmd.Parameters.AddWithValue("@OtherAwards",OtherAwards);
        cmd.Parameters.AddWithValue("@ExtraAwards",ExtraAwards);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public void UpdateSports(string SchoolSports1, string SchoolSports2, string SchoolSports3, string SchoolLevelAwards, string OtherAwardsAtSchoolLevel, string CollegeSports1, string CollegeSports2, string CollegeSports3, string CollegeLevelAwards, string OtherAwardsAtCollegeLevel, string OtherSports1, string OtherSports2, string OtherSports3, string OtherAwards, string ExtraAwards,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateSports", con);
        cmd.Parameters.AddWithValue("@SchoolSports1", SchoolSports1);
        cmd.Parameters.AddWithValue("@SchoolSports2", SchoolSports2);
        cmd.Parameters.AddWithValue("@SchoolSports3", SchoolSports3);
        cmd.Parameters.AddWithValue("@SchoolLevelAwards", SchoolLevelAwards);
        cmd.Parameters.AddWithValue("@OtherAwardsAtSchoolLevel", OtherAwardsAtSchoolLevel);
        cmd.Parameters.AddWithValue("@CollegeSports1", CollegeSports1);
        cmd.Parameters.AddWithValue("@CollegeSports2", CollegeSports2);
        cmd.Parameters.AddWithValue("@CollegeSports3", CollegeSports3);
        cmd.Parameters.AddWithValue("@CollegeLevelAwards", CollegeLevelAwards);
        cmd.Parameters.AddWithValue("@OtherAwardsAtCollegeLevel", OtherAwardsAtCollegeLevel);
        cmd.Parameters.AddWithValue("@OtherSports1", OtherSports1);
        cmd.Parameters.AddWithValue("@OtherSports2", OtherSports2);
        cmd.Parameters.AddWithValue("@OtherSports3", OtherSports3);
        cmd.Parameters.AddWithValue("@OtherAwards", OtherAwards);
        cmd.Parameters.AddWithValue("@ExtraAwards", ExtraAwards);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindSports(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindSports]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteSports(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteSports]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }


    public void InsertSuggetion(string User_Id, string Title, string Discription, string Date, string Responce, string Responce_Date)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertSuggetion", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Title", Title);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@Date", Date);
        cmd.Parameters.AddWithValue("@Responce", Responce);
        cmd.Parameters.AddWithValue("@Responce_Date", Responce_Date);
       
        cmd.ExecuteNonQuery();

    }

    public void UpdateSuggetion(string User_Id, string Title, string Discription, string Date, string Responce, string Responce_Date, string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateSuggetion", con);
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        cmd.Parameters.AddWithValue("@Title", Title);
        cmd.Parameters.AddWithValue("@Discription", Discription);
        cmd.Parameters.AddWithValue("@Date", Date);
        cmd.Parameters.AddWithValue("@Responce", Responce);
        cmd.Parameters.AddWithValue("@Responce_Date", Responce_Date);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();

    }

    public DataSet BindSuggetion(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindSuggetion]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteSuggetion(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteSuggetion]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }
    public DataSet BindLogInPage(string UserName, string Password)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindLogInPage]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@Password", Password);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public void InsertLogInPage(string UserName, string Password, string Type, string Authentications)
    {
 
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertLogInPage", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@Password",Password);
        cmd.Parameters.AddWithValue("@Type",Type);
        cmd.Parameters.AddWithValue("@Authentications",Authentications);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet SelectEmail(string UserName)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("ChkUserID", con);
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void InsertFor_Pass(string EmailAddress, string User_Id)
    {
  SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("InsertFor_Pass",con);
         cmd.CommandType = CommandType.StoredProcedure;
         cmd.Parameters.AddWithValue("@EmailAddress", @EmailAddress);
         cmd.Parameters.AddWithValue("@User_Id", User_Id);
         cmd.CommandType = CommandType.StoredProcedure;
         cmd.ExecuteNonQuery();
    }

    public void UpdateFor_Pas(string EmailAddress,string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateFor_Pas", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@EmailAddress", @EmailAddress);
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.ExecuteNonQuery();
    }

    public DataSet BindFor_Pass(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[BindFor_Pass]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void DeleteFor_Pas(string Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[DeleteFor_Pas]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        cmd.ExecuteNonQuery();

    }
    public DataSet companyDetail(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[companyDetail]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet CampusDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[CampusDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

   

    public DataSet StudentDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[StudentDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet EmpPersonalDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[PersonalDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet EmpEducationDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[EducationDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet EmployeeDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[EmployeeDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet PersonalDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[PersonalDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet EducationDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[EducationDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    public DataSet JobDiscriptionDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[JobDiscriptionDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
    public DataSet EmpProfessionalDetails1Data(string User_Id)
    {
        SqlConnection con = new SqlConnection(connectionString());
        con.Open();
        SqlCommand cmd = new SqlCommand("[EmpProfessionalDetails]", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@User_Id", User_Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
   
}