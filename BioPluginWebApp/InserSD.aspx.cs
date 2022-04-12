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
public partial class BioPluginWebApp_InserSD : System.Web.UI.Page
{
    string selectSQL, selectSQL1, selectSQL5, selectSQL3, selectSQL6;
    string updateSQL, updateSQL1, updateSQL5, updateSQL6, updateSQL2;
    string insertSQL9;
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                                          
        
                                          insertSQL9 = "INSERT INTO List_Staff(";
                                        insertSQL9 += "Name,Emp_No,Department,Meal_Cat,Company,Value,Meal_Ticket)";
                                        insertSQL9 += "VALUES('";


                                        insertSQL9 += TextBox2.Text.Trim() + "','";
                                        insertSQL9 += TextBox3.Text.Trim() + "','";
                                        insertSQL9 += TextBox4.Text.Trim() + "','";
                                        insertSQL9 += DropDownList1.SelectedItem.Text + "','";
                                        insertSQL9 += DropDownList2.SelectedItem.Text + "','";
                                        insertSQL9 += DropDownList3.SelectedItem.Text + "','";
                                        insertSQL9 += TextBox8.Text.Trim() +  "')";
                                     


                                        // insertSQL9 += tt 
                                        // Response.Write(insertSQL9);

                                        // insertSQL += TextBox5.Text + "@yahoo.com  ')";
                                        // insertSQL += TextBox5.Text + "@yahoo.com  ')";




                                        String connectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;"; 
                                        SqlConnection con9 = new SqlConnection(connectionString);
                                        SqlCommand cmd9 = new SqlCommand(insertSQL9, con9);
                                        int added9 = 0;



                                        try
                                        {
                                            
                                            con9.Open();
                                            added9 = cmd9.ExecuteNonQuery();
                                            Response.Write(insertSQL9);


                                            // Label6.Text = added9.ToString();


                                            if (added9 == 1)
                                            {
                                                Response.Redirect("hhhhhhh.aspx");
                                            }
                                            else
                                            {
                                                /// Response.Redirect("No.aspx");
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
