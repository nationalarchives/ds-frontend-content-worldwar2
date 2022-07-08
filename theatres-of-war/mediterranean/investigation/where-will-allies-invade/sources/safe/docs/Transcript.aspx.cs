using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Transcript : System.Web.UI.Page 
{
	private bool loggedIn=false;
    private void Page_Load(object sender, EventArgs e)
    {
		if (Session["loggedIn"] != null)
		{
			loggedIn = bool.Parse(Session["loggedIn"].ToString());
			
		}

		if (!loggedIn)
		{
			Form.Visible = false;
		}
    }
    
}
