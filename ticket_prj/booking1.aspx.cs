using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class booking1 : System.Web.UI.Page
{
    static string busid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Write("<script> alert('U are not logged in'); window.location='Login.aspx' </script>");
            return;
        }
       
        busid = Request["t1"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = dbo.getdata("Select * from Busmaster where Busid = '" + busid + "'");
        int capacity = int.Parse ( dt.Rows[0]["Capacity"].ToString ());
        dt = dbo.getdata("select * from reservationticktes where TDate = '" + Calendar1.SelectedDate.Date.ToShortDateString() + "'");
        int lseatno = 0;
        if(dt.Rows.Count > 0)
        {
            lseatno = int.Parse(dt.Rows[dt.Rows.Count - 1]["LastSeatNo"].ToString ());
            int tmp = lseatno + int.Parse (TextBox1.Text);
            if(  tmp > capacity)
            {    
                    Label1.Text = "Bus is full";
                    return;
            }
        }
        lseatno++;
        string strseatnos="";
        for(int i = lseatno; i <lseatno+ int.Parse (TextBox1.Text) ;i++)
        {
            strseatnos+=i.ToString ()+",";
        }
        lseatno += int.Parse(TextBox1.Text)-1;
        dbo.setdata ("insert into reservationmaster values('"+ Session["uid"].ToString ()+"' , '"+ busid +"','"+ Calendar1.SelectedDate.Date.ToShortDateString() +"' , '"+ TextBox1.Text +"','"+ strseatnos +"')");
        dbo.setdata ("update reservationticktes set LastSeatNo = '"+ lseatno +"' where Busid = '"+ busid +"' and TDate = '" + Calendar1.SelectedDate.Date.ToShortDateString() +"'");

    }
}