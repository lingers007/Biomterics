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


public partial class BioPluginWebApp_AddMeal : System.Web.UI.Page
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
        
    }
   

   
    protected void OnConfirm(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);

            updateSQL2 = "update List_Staff set  Meal_Ticket='0' ";
            dbConn5.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";

            cmd3.Connection = dbConn5;
            cmd3.CommandText = updateSQL2;
            cmd3.CommandType = CommandType.Text;
            try
            {

                dbConn5.Open();
                // Response.Write(updateSQL1);
                int updated3 = cmd3.ExecuteNonQuery();
                if (updated3 == 1)
                {

                   // Response.Redirect("Work.aspx");




                }
                else
                {

                    Session["Ticket"] = TextBox1.Text;
                    int SMM = Int32.Parse(TextBox1.Text);
                    //   Response.Write(Session["YY"]);

                    updateSQL1 = "UPDATE List_Staff SET Meal_Ticket  = CASE WHEN Meal_Cat = 'x' THEN  '" + SMM + "'  WHEN Meal_Cat = '2x' THEN   '" + SMM + "' *2 END WHERE Meal_Cat IN ('x', '2x') ";


                  //  Response.Write(updateSQL1);
                    dbConn1.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";

                    cmd1.Connection = dbConn1;
                    cmd1.CommandText = updateSQL1;
                    cmd1.CommandType = CommandType.Text;
                    try
                    {

                        dbConn1.Open();
                        int updated1 = cmd1.ExecuteNonQuery();
                        if (updated1 == 1)
                        {

                            Label6.Text = "Meal Ticket Not Added  ";


                        }
                        else
                        {



                            TextBox1.Text = "";
                        Response.Redirect("MealAdded.aspx");




                        }



                    }
                    catch (Exception err)
                    {
                        Label6.Text = "Error  Logging in 2 ";
                        Label6.Text += err.Message;
                    }
                    finally
                    {
                        dbConn1.Close();
                    }




                }
            }

            catch (Exception err)
            {

                Label6.Text += err.ToString();
            }
            finally
            {
                dbConn3.Close();
            }



            
           

        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
           // Response.Redirect("AddMeal.aspx");
            Label6.Text = "Meal Ticket Not Added  ";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
