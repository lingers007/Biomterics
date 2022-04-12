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

public partial class BioPluginWebApp_SubtractMeal : System.Web.UI.Page
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

            if (TextBox1.Text == "")
            {

                Label6.Text = "Operation Not Successful ";
            }
            else
            {
                Session["DD"] = TextBox1.Text;
                int Q = Convert.ToInt32(TextBox1.Text);
                //Response.Write(Q);


                selectSQL = "select id,Company, Meal_Ticket from List_Staff";
                dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
                cmd.Connection = dbConn;
                cmd.CommandText = selectSQL;
                cmd.CommandType = CommandType.Text;

                try
                {
                    dbConn.Open();
                     Response.Write(selectSQL);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        
                        Session["FT"] = dr["Meal_Ticket"].ToString();
                        Session["id"] = dr["id"].ToString();
                        Session["C"] = dr["Company"].ToString();
                        // Response.Write(dr["Rticket"]);
                        int W = Convert.ToInt32(Session["FT"]);
                        int S = W - Q;
                        string P = S.ToString();
                        Session["PP"] = S.ToString();
                        Response.Write(Session["FT"]);

                        updateSQL1 = "update List_Staff set  Meal_Ticket='" + Session["PP"].ToString() + "' where  id='" + Session["id"].ToString() + "'  and  Company='KAGING' OR Company='DELOG'OR Company='CRIMETECH' OR Company='RDELOG' OR Company='AGGREY' OR Company='TUSKEGEE'";
                        Response.Write(updateSQL1);
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
                               Response.Redirect("SubtractMC.aspx");



                            }
                            else
                            {
                                // Response.Write("updated1");
                                Label6.Text = "Meal Ticket Not Subtracted";
                                // TextBox1.Text = "";



                            }



                        }
                        catch (Exception err)
                        {
                            Label6.Text = "Error  Logging in 2 ";
                            Label6.Text += err.ToString();
                        }
                        finally
                        {
                            dbConn1.Close();
                        }




                        
                    }

                    dr.Close();
                }
                catch (Exception err)
                {
                    Label6.Text = "Error  Logging in 2 ";
                    Label6.Text += err.ToString();
                }
                finally
                {
                    dbConn.Close();
                }
               

            }






        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
            // Response.Redirect("AddMeal.aspx");
            Label6.Text = "Meal Ticket Not Subtracted ";
            TextBox1.Text = "";
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
