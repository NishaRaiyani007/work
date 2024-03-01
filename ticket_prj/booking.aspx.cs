using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = dbo.getdata("select * from Busmaster");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList1.Items.Add(dt.Rows[i]["Fromcity"].ToString());
            DropDownList2.Items.Add(dt.Rows[i]["Tocity"].ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = dbo.getdata("select * from Busmaster where Fromcity = '" + DropDownList1.SelectedItem.ToString() + "' and Tocity = '" + DropDownList2.SelectedItem.ToString() + "'");
        String str="<table width=100%> <tr><td> Image <td>From City <td>To City <td>DepaTime <td>Price <td>Bus Type </tr>";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str+="<tr><td><img src= busimages/"+dt.Rows[i]["photo"].ToString()+" height=100 width=100>";
            str += "<td>" + dt.Rows[i]["Fromcity"].ToString();
            str += "<td>" + dt.Rows[i]["Tocity"].ToString();
            str += "<td>" + dt.Rows[i]["Depatime"].ToString();
            str += "<td>" + dt.Rows[i]["Price"].ToString();
            str += "<td>" + dt.Rows[i]["Typeofbus"].ToString();
            str += "<td><a href = booking1.aspx?t1=" + dt.Rows[i]["Busid"].ToString() + "> BOOK NOW </a>";
            str +="</tr>";
        }
        str += "</table>";
        Literal1.Text = str;
    }
}