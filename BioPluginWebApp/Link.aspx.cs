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

public partial class BioPluginWebApp_Link : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 5; 


        try
        {
            if (Session["Emp"] == null)
            {
                Response.Redirect("Client.aspx");
            }
            else
            {


            }
        }

        catch
        {
            Response.Redirect("Client.aspx");
        }

        //Response.Write(Session["7"]);
        ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( 'Reciept.aspx', null, 'height=350,width=400,status=yes,toolbar=yes,scrollbars=yes,menubar=yes,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);
        //Response.Redirect("Home.aspx");
    
    
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("Emp");
        Session["Emp"] = "";

        Session.Remove("RT");

        Session["RT"] = "";

        Session.Remove("L");
        Session["L"] = "";

        Session.Remove("D");
        Session["D"] = "";

        Session.Remove("Cat");
        Session["Cat"] = "";

        Session.Remove("J");
        Session["J"] = "";
        Session.Remove("E");
        Session["E"] = "";
        Session.Remove("V1");
        Session["V1"] = "";
        Session.Remove("Value");
        Session["Value"] = "";

        Session["1"] = "";
        Session.Remove("1");

        Session["2"] = "";
        Session.Remove("2");

        Session["3"] = "";
        Session.Remove("3");

        Session["4"] = "";
        Session.Remove("4");

        Session["5"] = "";
        Session.Remove("5");

        Session["6"] = "";
        Session.Remove("6");

        Session["7"] = "";
        Session.Remove("7");
      


    }
}