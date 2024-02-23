using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAL
{
    #region reg
    public int Uid { get; set; }
    public string Fnm { get; set; }
    public string Lnm { get; set; }
    public string Mobile { get; set; }
    public string Gender { get; set; }
    public string Dob { get; set; }
    public string Email { get; set; }
    public string Pwd { get; set; }
    public string Country { get; set; }
    public string Expe { get; set; }
    public string Education { get; set; }
    public string Subject { get; set; }
    public string Status { get; set; }
    #endregion

    #region visitor
    public int Vid { get; set; }
    public string Vnm { get; set; }
    public string Vemail { get; set; }
    public string Phone { get; set; }
    public string Msg { get; set; }
    #endregion

    #region admin
    public int Aid { get; set; }
    public string Emailid { get; set; }
    public string Pass { get; set; }
    #endregion

    #region
    public int Jid { get; set; }
    public string Comp_nm { get; set; }
    public string Contact_nm { get; set; }
    public string Emailjob { get; set; }
    public string Password { get; set; }
    public string Mobilenum { get; set; }
    public string Location { get; set; }
    public string Category { get; set; }
    #endregion

    public DAL()
	{
		
	}
}