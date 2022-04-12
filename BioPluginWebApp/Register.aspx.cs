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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Globalization;


public partial class BioPluginWebApp_Register : System.Web.UI.Page
{
    string selectSQL;
    string selectSQL3;
    string selectSQL23;

    string selectSQL1;


    string updateSQL;

    string updateSQL1;

    string updateSQL2;


    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    public SqlConnection dbConn = new SqlConnection();
    public SqlConnection dbConn1 = new SqlConnection();
    public SqlConnection dbConn3 = new SqlConnection();
    public SqlConnection dbConn4 = new SqlConnection();
    public SqlConnection dbConn5 = new SqlConnection();
    SqlDataReader dr;
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
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";

        Session["id"] = Request.QueryString["id"].ToString();
        //Response.Write();
        selectSQL23 = "select * from List_1  WHERE id ='" + Session["id"].ToString() + "' ";
        //Response.Write(selectSQL23);
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";


        //TextBox130.Text = Session["AdmissionNo"].ToString();

        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL23;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["N"] = dr["Name"].ToString();
                Session["Empp"] = dr["Emp_No"].ToString();
                Session["Com"] = dr["Company"].ToString();
                Session["D"] = dr["Department"].ToString();
                Session["cat"] = dr["Meal_Cat"].ToString();
                Session["V"] = dr["Value"].ToString();
                Session["cc"] = dr["Meal_Ticket"].ToString();
                Session["id"] = dr["id"].ToString();
                               
               
                




            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label1.Text = "Error  Getting record";
            Label1.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
        // Session["M"] = TextBox3.Text.Trim();

        string insertSQL9;
        insertSQL9 = "INSERT INTO List_Staff(";
        insertSQL9 += "Name,Emp_No,Department,Meal_Cat,Company,Value,Meal_Ticket)";
        insertSQL9 += "VALUES('";

       

        insertSQL9 += Session["N"].ToString() + "','";
        insertSQL9 += Session["Empp"].ToString() + "','";
        insertSQL9 += Session["D"].ToString() + "','";
        insertSQL9 += Session["cat"].ToString() + "','";
        insertSQL9 += Session["Com"].ToString() + "','";

        insertSQL9 += Session["V"].ToString() + "','";
        insertSQL9 += Session["cc"].ToString() + "')";
        

 
     



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


                string dt = DateTime.Now.ToString("dd.MM.yyyy HH:mm");
                //DateTime dt = new DateTime(2008, 3, 9, 16, 5, 7, 123);

                String.Format("{0:d/M/yyyy HH:mm}", dt);

                Session["TT"] = dt;

                DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
                dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
                var tc = DateTime.Parse(Session["TT"].ToString(), dateFormatProvider);


                DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
                dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
                var tc1 = DateTime.Parse(Session["TT"].ToString(), dateFormatProvider);

                updateSQL2 = "update List_1 set  Status='Approved',AdmApp='" + Session["username"] + "',DD='" + tc + "',DD1='" + tc1 + "'  where id='" + Session["id"] + "' and Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'    ";

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

                        Response.Redirect("ShowNew.aspx");




                    }
                    else
                    {




                      //  Response.Redirect("AddProb1.aspx");



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
               // Label6.Text = "Operations Not Successful";
            }

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
