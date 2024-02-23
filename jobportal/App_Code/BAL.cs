using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class BAL
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter dap;
    DataTable dt;
    public BAL()
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    }

    public int op_Reg(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_Reg", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@uid", d.Uid);
        cmd.Parameters.AddWithValue("@fnm", d.Fnm);
        cmd.Parameters.AddWithValue("@lnm", d.Lnm);
        cmd.Parameters.AddWithValue("@mobile", d.Mobile);
        cmd.Parameters.AddWithValue("@gender", d.Gender);
        cmd.Parameters.AddWithValue("@dob", d.Dob);
        cmd.Parameters.AddWithValue("@email", d.Email);
        cmd.Parameters.AddWithValue("@pwd", d.Pwd);
        cmd.Parameters.AddWithValue("@country", d.Country);
        cmd.Parameters.AddWithValue("@expe", d.Expe);
        cmd.Parameters.AddWithValue("@education", d.Education);
        cmd.Parameters.AddWithValue("@subject", d.Subject);
        cmd.Parameters.AddWithValue("@status", d.Status);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable disp_Reg(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_Reg", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@uid", d.Uid);
        cmd.Parameters.AddWithValue("@email", d.Email);
        cmd.Parameters.AddWithValue("@pwd", d.Pwd);
        cmd.Parameters.AddWithValue("@status", d.Status);
        dt = new DataTable();
        dap = new SqlDataAdapter(cmd);
        dap.Fill(dt);
        con.Close();
        return dt;

    }
    public int op_contact(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_contact", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid", d.Vid);
        cmd.Parameters.AddWithValue("@vnm", d.Vnm);
        cmd.Parameters.AddWithValue("@vemail", d.Vemail);
        cmd.Parameters.AddWithValue("@phone", d.Phone);
        cmd.Parameters.AddWithValue("@msg", d.Msg);
        cmd.Parameters.AddWithValue("@status", d.Status);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public DataTable disp_contact(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_contact", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid", d.Vid);
        cmd.Parameters.AddWithValue("@status", d.Status);
        dt = new DataTable();
        dap = new SqlDataAdapter(cmd);
        dap.Fill(dt);
        con.Close();
        return dt;
    }

    public int op_admin(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_admin", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid", d.Aid);
        cmd.Parameters.AddWithValue("@emailid", d.Emailid);
        cmd.Parameters.AddWithValue("@pass", d.Pass);
        cmd.Parameters.AddWithValue("@status", d.Status);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public DataTable disp_admin(DAL d)
    {
        con.Open();
        cmd = new SqlCommand("sp_admin", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid", d.Aid);
        cmd.Parameters.AddWithValue("@emailid", d.Emailid);
        cmd.Parameters.AddWithValue("@pass", d.Pass);
        cmd.Parameters.AddWithValue("@status", d.Status);
        dt = new DataTable();
        dap = new SqlDataAdapter(cmd);
        dap.Fill(dt);
        con.Close();
        return dt;
    }
}

