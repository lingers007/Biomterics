using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;


public partial class KAGING_Reciept : System.Web.UI.Page
{

    string selectSQL1, selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    SqlCommand cmd1 = new SqlCommand();
    SqlConnection dbConn1 = new SqlConnection();
    SqlDataReader dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        
               // string today = DateTime.Now.ToString("s");

        Label1.Text = Session["1"].ToString();
        Label2.Text = Session["2"].ToString();
        Label3.Text = Session["3"].ToString(); ;

        Label4.Text = Session["4"].ToString();


        Label8.Text = Session["5"].ToString();
        Label7.Text = Session["6"].ToString();
        Label5.Text = Session["7"].ToString();



       ScriptManager.RegisterClientScriptBlock(this.Page, typeof(string), "print", "window.print();", true);

    }
}
