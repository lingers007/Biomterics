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


public partial class BioPluginWebApp_Delete7 : System.Web.UI.Page
{
    string selectSQL;
    string selectSQL3;
    string selectSQL23;
    string deleteSQL;
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
        selectSQL23 = "select * from Users  WHERE id ='" + Session["id"].ToString() + "' ";
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


    
 deleteSQL = "Delete  from Users where id='" + Session["id"].ToString() + "'";

                dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
                cmd.Connection = dbConn;
                cmd.CommandText = deleteSQL;
                cmd.CommandType = CommandType.Text;
                //cmd.Parameters.AddWithValue("@AdmissionNo", TextBox1.Text);
                try
                {
                    dbConn.Open();

                    int deleted = cmd.ExecuteNonQuery();
                    if (deleted == 1)
                    {
                        Label1.Text = "Record Deleted";
                      //  TextBox1.Text = "";

                        Response.Redirect("DeleteU.aspx");

                    }
                    else
                    {
                        // Response.Write("updated1");
                        Label1.Text = "Record Not Deleted";
                        // TextBox1.Text = "";



                    }




                }

                catch (Exception err)
                {
                    Response.Write(err.Message);

                }
                finally
                {
                    dbConn.Close();
                }



    }
}
