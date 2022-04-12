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

public partial class BioPluginWebApp_LogD : System.Web.UI.Page
{
    string selectSQL;
    SqlCommand cmd = new SqlCommand();
    public SqlConnection dbConn = new SqlConnection();
    public SqlConnection dbConn1 = new SqlConnection();
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


        Label111.Text = Session["C"].ToString();
        Label112.Text = Session["D"].ToString();
        Label113.Text = Session["D1"].ToString();


        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        //dbConn1.ConnectionString = "Data Source=HP-55A070CC0320\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
        selectSQL = "select 'Nam'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='" + Session["C"].ToString() + "'),  'Nam1'=(select Sum(Value) from MealLog where Time1  >= '" + (Session["D"].ToString()) + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='" + Session["C"].ToString() + "') from MealLog ";
        //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";


        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;
        try
        {


            dbConn.Open();
            //dbConn1.Open();
            // Response.Write(selectSQL);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               // Label1.Text = dr["Nam"].ToString();
                Label1.Text = dr["Nam1"].ToString();

            }
            dr.Close();
        }


        catch (Exception err)
        {

        }
        finally
        {
            dbConn.Close();
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["username"] = "";
        Session.Remove("username");
    }
}
