using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
using bal;


public partial class Admin_AdminSettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //imgchange.Attributes.Add("onclick", "return ValidatePassword();");

    }


    protected void imgchange_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            //int UserId = (int)Session["Uid"];
            int uid = Convert.ToInt32(Session["Uid"]);
            string Passwords = txtConfirmPassword.Text;

            Class1 obj = new Class1();
            DataSet ds = new DataSet();
            ds = obj.Users(5, uid, "", Passwords, "", "", 0, 1, "", "");
         
                Label1.Visible = true;
                Label1.Attributes.Add("class", "success");
                Label1.Text = "Password Changed Successfully";
          
      

        }
        catch (Exception )
        {
           
           
        }
       
    }
}
