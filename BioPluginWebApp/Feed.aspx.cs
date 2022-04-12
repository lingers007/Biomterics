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


public partial class BioPluginWebApp_Feed : System.Web.UI.Page
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
        selectSQL23 = "select * from MealCat WHERE id ='" + Session["id"].ToString() + "' ";
        //Response.Write(selectSQL23);
     


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
             
               Session["New"] = dr["New"].ToString();
               // Session["id"] = dr["id"].ToString();





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






        updateSQL1 = "update List_Staff set  Meal_Ticket='" + Session["cc"] + "',Meal_Cat='" + Session["New"] + "' where  Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'   ";

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

                Session["Ty"] = dt;

                DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
                dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
                var tt = DateTime.Parse(Session["Ty"].ToString(), dateFormatProvider);


                DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
                dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
                var tt1 = DateTime.Parse(Session["Ty"].ToString(), dateFormatProvider);



                updateSQL2 = "update MealCat set  Status='Approved',AdmApp='" + Session["username"] + "',D1='" + tt + "',DD1='" + tt1 + "'  where id='" + Session["id"] + "' and Emp_No='" + Session["Empp"] + "' and Company='" + Session["Com"] + "'    ";

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

                        Response.Redirect("ShowF.aspx");




                    }
                    else
                    {




                        Response.Redirect("FProb1.aspx");



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
