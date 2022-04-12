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

public partial class KAGING_Home : System.Web.UI.Page
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
        if (Session["J"] == "HOME")
        {
            Response.Redirect("BioProb.aspx");
        }
        else
        {
        }
        Response.Write(Session["J"]);
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

        selectSQL = "select * from List_Staff WHERE Emp_No ='" + Session["Emp"].ToString() + "'";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
           // Response.Write(selectSQL);
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {


                Label1.Text = dr["Name"].ToString();
                Session["L"] = dr["Name"].ToString();




                Label2.Text = dr["Emp_No"].ToString();
                Session["D"] = dr["Emp_No"].ToString();
                Label3.Text = dr["Department"].ToString();
                Session["J"] = dr["Department"].ToString();
                Label4.Text = dr["Company"].ToString();
                Session["E"] = dr["Company"].ToString();
                
                Session["Value"] = dr["Value"].ToString();
                Session["Cat"] = dr["Meal_Cat"].ToString();
                Label5.Text = dr["Meal_Ticket"].ToString();
                Session["Cv"] = dr["Meal_Ticket"].ToString();

              

                //Response.Redirect("index.aspx");
                 int C = Convert.ToInt32(Session["Cv"]);

                 if (C < 1)
                 {

                     btnpopup.Enabled = false;
                     Label8.Text = "You don't have any meal ticket";
                 }
                 else
                 {
                 }
            }
            else
            {
                Label6.Text = "No Data  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label6.Text = "Error  Logging in  ";
            Label6.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }


   





    }
   
    protected void btnpopup_Click(object sender, EventArgs e)
    {
        string dt = DateTime.Now.ToString("dd.MM.yyyy HH:mm");
        //DateTime dt = new DateTime(2008, 3, 9, 16, 5, 7, 123);

        String.Format("{0:d/M/yyyy HH:mm}", dt);

        Session["T"] = dt;









        selectSQL1 = "select Meal_Ticket from List_Staff WHERE Emp_No ='" + Session["Emp"].ToString() + "'";
        dbConn1.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL1;
        cmd1.CommandType = CommandType.Text;

        try
        {
            dbConn1.Open();
            Response.Write(selectSQL1);
            dr8 = cmd1.ExecuteReader();
            if (dr8.Read())
            {
                // Response.Write("fffffffffffffff");
                Session["RT"] = dr8["Meal_Ticket"].ToString();
                //Response.Write(Label9.Text);
                int x = Convert.ToInt32(Session["RT"]);
                int y = x - 1;
                string t = y.ToString();
                Session["TR"] = y.ToString();
                //Response.Write(y);


                updateSQL1 = "update List_Staff set  Meal_Ticket='" + y + "' where  Emp_No ='" + Session["Emp"].ToString() + "'";

                dbConn4.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 

                cmd2.Connection = dbConn4;
                cmd2.CommandText = updateSQL1;
                cmd2.CommandType = CommandType.Text;
                try
                {

                    dbConn4.Open();
                    Response.Write(updateSQL1);
                    int updated1 = cmd2.ExecuteNonQuery();
                    if (updated1 == 1)
                    {

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
                                        insertSQL9 += "Name,Emp_No,Meal_Cat,Department,Company,Reciept_No,Value,Exact,Time,Time1)";
                                        insertSQL9 += "VALUES('";


                                        insertSQL9 += Session["L"].ToString() + "','";

                                        insertSQL9 += Session["D"].ToString() + "','";
                                        insertSQL9 += Session["Cat"].ToString() + "','";
                                        insertSQL9 += Session["J"].ToString() + "','";
                                        insertSQL9 += Session["E"].ToString() + "','";
                                        insertSQL9 += Session["V1"].ToString() + "','";
                                        insertSQL9 += Session["Value"].ToString() + "','";
                                        insertSQL9 += 1 + "','";
                                        insertSQL9 += tt + "','";


                                        insertSQL9 += tt1 + "')";



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
                                                
                                           //Response.Write("<script LANGUAGE='JavaScript' >alert('Request Submitted Successfully!');window.location='Default.aspx';</script>");
                                                selectSQL3 = "SELECT TOP 1 * FROM MealLog   where Emp_No='" + Session["Emp"].ToString() + "' ORDER BY ID DESC";
                                                //  selectSQL = "select * from List_Staff WHERE Emp_No ='" + Session["Emp"].ToString() + "'";
                                                dbConn3.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
                                                cmd3.Connection = dbConn3;
                                                cmd3.CommandText = selectSQL3;
                                                cmd3.CommandType = CommandType.Text;

                                                try
                                                {

                                                    dbConn3.Open();
                                                    //Response.Redirect(Session["Logged"].ToString());
                                                    dr3 = cmd3.ExecuteReader();
                                                    if (dr3.Read())
                                                    {

                                                        //Response.Write("<script> alert(\"Warning: you are selecting a PO date earlier than today's date\");</script>");
                                                        
                                                        Session["1"] = dr3["Name"].ToString();
                                                        Session["2"] = dr3["Department"].ToString();
                                                        Session["3"] = dr3["Company"].ToString(); ;

                                                        Session["4"] = dr3["Emp_No"].ToString();


                                                        Session["5"] = dr3["Value"].ToString();
                                                        Session["6"] = dr3["Time"].ToString();
                                                        Session["7"] = dr3["Reciept_No"].ToString();
                                                        Label7.Text = dr3["Reciept_No"].ToString();


                                                   Response.Redirect("Link.aspx");
                                                    }
                                                    else
                                                    {
                                                        Label6.Text = "No Data  ";
                                                    }
                                                   // Label7.Text = dr3["Reciept_No"].ToString(); 
                                                    dr3.Close();
                                                }
                                                catch (Exception err)
                                                {
                                                    Label6.Text = "Error  Logging in  ";
                                                    Label6.Text += err.Message;
                                                }
                                                finally
                                                {
                                                    dbConn3.Close();
                                                }



        
                                                Response.Write(insertSQL9);
                                               // Response.Redirect("ya.aspx");
         
                                             
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
                                    else
                                    {
                                        //   Response.Write("he happen");



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
                            else
                            {



                            }

                            dr5.Close();
                        }
                        catch (Exception err)
                        {
                            Label6.Text = "Error  Logging in 2 ";
                            Label6.Text += err.ToString();
                        }
                        finally
                        {
                            dbConn5.Close();
                        }

                    }


                }
                catch (Exception err)
                {
                    Response.Write(err.ToString());
                }
                finally
                {
                    dbConn4.Close();
                }

            }
            else
            {
                Label6.Text = "sorry you cant view this page  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label6.Text = "Error  Logging in  3";
            Label6.Text += err.ToString();
        }
        finally
        {
            dbConn1.Close();
        }









        Response.Redirect(HttpContext.Current.Request.Path);







       // Response.Write(Session["T"]);
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
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
