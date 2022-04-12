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
using System.Globalization;

public partial class BioPluginWebApp_Reset : System.Web.UI.Page
{
    string selectSQL, selectSQL1, selectSQL5, selectSQL3, selectSQL6;
    string updateSQL, updateSQL1, updateSQL5, updateSQL6, updateSQL2;
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    SqlCommand cmd5 = new SqlCommand();
    SqlCommand cmd6 = new SqlCommand();
    SqlCommand cmd9 = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlConnection dbConn3 = new SqlConnection();
    SqlConnection dbConn4 = new SqlConnection();
    SqlConnection dbConn5 = new SqlConnection();
    SqlConnection dbConn6 = new SqlConnection();
    SqlDataReader dr, dr1, dr2, dr3, dr5, dr6, dr8;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
        updateSQL6 = "update List_Staff set  Meal_Ticket='0' ";

        dbConn6.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;";

        cmd6.Connection = dbConn6;
        cmd6.CommandText = updateSQL6;
        cmd6.CommandType = CommandType.Text;
        try
        {
            dbConn6.Open();

            Response.Write(updateSQL6);
            int updated2 = cmd6.ExecuteNonQuery();
            if (updated2 == 1)
            {

               // Response.Write(updateSQL6);
                Response.Redirect("Reset.aspx");

            }
            else
            {
                Response.Redirect("ResetD.aspx");



            }

        }
        catch (Exception err)
        {
            Label6.Text = "Error  Updating ";
            Label6.Text += err.ToString();
        }
        finally
        {
            dbConn6.Close();
        }
    }
}
