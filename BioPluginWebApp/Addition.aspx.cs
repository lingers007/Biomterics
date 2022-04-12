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


public partial class BioPluginWebApp_Addition : System.Web.UI.Page
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
        selectSQL23 = "select * from Temp  WHERE id ='" + Session["id"].ToString() + "' ";
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

                Session["cc"] = dr["Meal_Ticket"].ToString();
                Session["Empp"] = dr["Emp_No"].ToString();
                Session["Com"] = dr["Company"].ToString();
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
        selectSQL = "  Select Meal_Ticket from List_Staff  where  Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'   ";


        dbConn3.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        //dbConn1.ConnectionString = "Data Source=NEW-VITAL\\SCHOOLSERVER; Initial Catalog=emma;Integrated Security=True;";

        cmd1.Connection = dbConn3;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;



        try
        {



            dbConn3.Open();
            dr = cmd1.ExecuteReader();

            if (dr.Read())
            {
                Session["MM"] = dr["Meal_Ticket"].ToString();


            }
            else
            {


                Response.Redirect("AddProb.aspx");

                Label6.Text = "Staff Does Not Exist";



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

        // Session["RT"] = TextBox3.Text.Trim();
        //Session[""] = TextBox4.Text.Trim();

        //  Response.Write(selectSQL);
        int x = Convert.ToInt32(Session["MM"]);
        int z = Convert.ToInt32(Session["cc"]);
        int y = x + z;

      

            string t = y.ToString();
            Session["F"] = y.ToString();


       




        updateSQL1 = "update List_Staff set  Meal_Ticket='" + y + "' where  Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'   ";

        dbConn4.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";

        cmd2.Connection = dbConn4;
        cmd2.CommandText = updateSQL1;
        cmd2.CommandType = CommandType.Text;
        try
        {

            dbConn4.Open();
            // Response.Write(updateSQL1);
            int updated2 = cmd2.ExecuteNonQuery();
            if (updated2 == 1)
            {
                string dt = DateTime.Now.ToString("dd.MM.yyyy HH:mm");
                //DateTime dt = new DateTime(2008, 3, 9, 16, 5, 7, 123);

                String.Format("{0:d/M/yyyy HH:mm}", dt);

                Session["T2"] = dt;

                DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
                dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
                var tt5 = DateTime.Parse(Session["T2"].ToString(), dateFormatProvider);


                DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
                dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
                var tt55 = DateTime.Parse(Session["T2"].ToString(), dateFormatProvider);



                updateSQL2 = "update Temp set  Status='Approved',AdmApp='" + Session["username"] + "',D1='" + tt5 + "' ,DD1='" + tt55 + "' where id='" + Session["id"] + "' and Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'    ";

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

                        Response.Redirect("ShowAdd.aspx");




                    }
                    else
                    {




                        Response.Redirect("AddProb.aspx");



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




                Response.Redirect("AddProb1.aspx");



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
}
