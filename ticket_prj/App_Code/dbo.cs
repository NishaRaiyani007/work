using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for dbo
/// </summary>
public class dbo
{
    static string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\ticket_prj\App_Data\ReservationDb.mdf;Integrated Security=True;User Instance=True";
       
    static SqlConnection con;
    static SqlCommand com;
    static SqlDataAdapter da;
    static DataTable dt;
	public dbo()
	{
        	}
    public static void setdata(string query)
    {
        str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\ticket_prj\App_Data\ReservationDb.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(str);
        con.Open();
        com = new SqlCommand(query, con);
        com.ExecuteNonQuery();
        con.Close();
    }
    public static DataTable getdata(string query)
    {
        str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\ticket_prj\App_Data\ReservationDb.mdf;Integrated Security=True;User Instance=True";
       
        da = new SqlDataAdapter(query, str);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}