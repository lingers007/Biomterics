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

public partial class BioPluginWebApp_Default2 : System.Web.UI.Page
{
    string selectSQL, selectSQL1, selectSQL5;
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
    SqlDataReader dr, dr1, dr2, dr3, dr5, dr8;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["L"] = "Emma";
        Session["D"] = "6789";
        Session["Cat"] = "Delog";
        Session["J"] = "Engineering";
        Session["E"] = "Delog";
        Session["V1"] = "1004";
        Session["Value"] = "400";
        Session["T"] = "20/12/2012";
        Session["T1"] = "20/12/2012";



        String insertSQL9;


        insertSQL9 = "INSERT INTO MealLog (";
        insertSQL9 += "Name,Emp_No,Meal_Cat,Department,Company,Reciept_No,Value,Time,Time1)";
        insertSQL9 += "VALUES('";


        insertSQL9 += Session["L"].ToString() + "','";

        insertSQL9 += Session["D"].ToString() + "','";
        insertSQL9 += Session["Cat"].ToString() + "','";
        insertSQL9 += Session["J"].ToString() + "','";
        insertSQL9 += Session["E"].ToString() + "','";
        insertSQL9 += Session["V1"].ToString() + "','";
        insertSQL9 += Session["Value"].ToString() + "','";
        insertSQL9 += Session["T"].ToString() + "','";

        insertSQL9 += Session["T1"].ToString() + "')";



        // insertSQL9 += tt 
        // Response.Write(insertSQL9);

        // insertSQL += TextBox5.Text + "@yahoo.com  ')";
        // insertSQL += TextBox5.Text + "@yahoo.com  ')";




        String connectionString = "Data Source=LAPTOP-VOQ43JBA\\SQLEXPRESS; Initial Catalog=KAGING;Integrated Security=True;";
        SqlConnection con9 = new SqlConnection(connectionString);
        SqlCommand cmd9 = new SqlCommand(insertSQL9, con9);
        int added9 = 0;



        try
        {
            Response.Write(insertSQL9);
            con9.Open();
            added9 = cmd9.ExecuteNonQuery();



            Label6.Text = added9.ToString();


            if (added9 == 1)
            {
                Response.Redirect("Home.aspx");

            }
            else
            {
                //   Response.Redirect("No.aspx");
            }
            // Label1.Text = added.ToString() + "records Inserted";
        }



        catch (Exception err)
        {

            Label6.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }







    }
}
