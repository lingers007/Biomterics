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

public partial class BioPluginWebApp_ExternalAdd : System.Web.UI.Page
{
   
    string selectSQL, selectSQL1, selectSQL5, selectSQL3,selectSQL6;
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
    SqlDataReader dr, dr1, dr2, dr3, dr5, dr6,dr8;
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

      // Response.Write(Session["Emp"].ToString());

       

   





    }
    protected void btnpopup_Click(object sender, EventArgs e)
    {


        Session["T"] = TextBox2.Text;









       
                        //Response.Write(updateSQL1);
                        selectSQL5 = "select Value1 from Static WHERE id ='1'";
                        dbConn5.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
 
       
                        cmd5.Connection = dbConn5;
                        cmd5.CommandText = selectSQL5;
                        cmd5.CommandType = CommandType.Text;

                        try
                        {
                            dbConn5.Open();

                            dr5 = cmd5.ExecuteReader();
                            if (dr5.Read())
                            {
                                // Response.Write(selectSQL5);
                                Session["Val"] = dr5["Value1"].ToString();
                                //  Response.Write(Session["Val"]);
                                int G = Convert.ToInt32(Session["Val"]);
                                int H = G + 1;
                                string j = H.ToString();
                                Session["V1"] = H.ToString();
                                // Response.Write(Session["V1"]);
                                //Session["T"] = dr["Employ"].ToString();



                                int f = Convert.ToInt32(TextBox1.Text);
                              

                                updateSQL6 = "update Static set  Value1='" + Session["V1"].ToString() + "' where  id ='1'";
                                // Response.Write(updateSQL6);
                                dbConn6.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";

                                cmd6.Connection = dbConn6;
                                cmd6.CommandText = updateSQL6;
                                cmd6.CommandType = CommandType.Text;
                                try
                                {

                                    dbConn6.Open();
                                    int updated2 = cmd6.ExecuteNonQuery();
                                    if (updated2 == 1)
                                    {

                                        String insertSQL9;
                                        DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
                                        dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
                                        var tt = DateTime.Parse(Session["T"].ToString(), dateFormatProvider);


                                        DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
                                        dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
                                        var tt1 = DateTime.Parse(Session["T"].ToString(), dateFormatProvider);




                                        //  var tt = DateTime.Parse(Session["T"].ToString(), dateFormatProvider);
                                        insertSQL9 = "INSERT INTO MealLog (";
                                        insertSQL9 += "Name,Emp_No,Meal_Cat,Department,Company,Reciept_No,Value,Time,Time1,Exact)";
                                        insertSQL9 += "VALUES('";


                                        insertSQL9 +=  DropDownList3.SelectedValue.ToString() + "','";

                                        insertSQL9 +=  DropDownList3.SelectedValue.ToString() + "','";
     
                                        insertSQL9 += 1 + "','";
                                        insertSQL9 +=  DropDownList3.SelectedValue.ToString() + "','";

                                        insertSQL9 += DropDownList3.SelectedValue.ToString() + "','";
                                        insertSQL9 += Session["V1"].ToString() + "','";

                                        insertSQL9 += DropDownList1.SelectedValue.ToString() + "','";
                                        insertSQL9 += tt + "','";
                                        insertSQL9 += tt1 + "','";

                                        insertSQL9 += f  + "')";



                                        // insertSQL9 += tt 
                                        // Response.Write(insertSQL9);

                                        // insertSQL += TextBox5.Text + "@yahoo.com  ')";
                                        // insertSQL += TextBox5.Text + "@yahoo.com  ')";




                                        String connectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
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

                                                Response.Redirect("ExternalAdded.aspx");

                                            }
                                            else
                                            {
                                              //Response.Redirect("No.aspx");
                                            }
                                            // Label1.Text = added.ToString() + "records Inserted";
                                        }



                                        catch (Exception err)
                                        {

                                            Label8.Text += err.ToString();
                                        }
                                        finally
                                        {
                                            dbConn.Close();
                                        }

                                    }
                                    else
                                    {
                                        //   Response.Write("he happen");



                                    }

                                }
                                catch (Exception err)
                                {
                                    Label8.Text = "Error  Updating ";
                                    Label8.Text += err.ToString();
                                }
                                finally
                                {
                                    dbConn6.Close();
                                }

                            }
                            else
                            {



                            }

                            dr5.Close();
                        }
                        catch (Exception err)
                        {
                            Label8.Text = "Error  Logging in 2 ";
                            Label8.Text += err.ToString();
                        }
                        finally
                        {
                            dbConn5.Close();
                        }

                    }


            




    




 







      
       
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}