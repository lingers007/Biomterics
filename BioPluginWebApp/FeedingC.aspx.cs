using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class BioPluginWebApp_FeedingC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

 try
        {
            if (Session["username"].ToString() == "")
            {
                Response.Redirect("Lgin.aspx");
            }
            else
            {


            }
        }

        catch
        {
            Response.Redirect("Lgin.aspx");
        }
        Label1.Text = Session["3"].ToString();
        Label2.Text = Session["1"].ToString();
        Label3.Text = Session["2"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
