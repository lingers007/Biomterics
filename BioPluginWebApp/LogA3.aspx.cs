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

public partial class BioPluginWebApp_LogA3 : System.Web.UI.Page
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
       
        //dbConn.ConnectionString = "Data Source=DESKTOP-M89P3JQ\\NEROSIGBENU; Initial Catalog=KAGINGqqq;Integrated Security=True;";

     

        Label1121.Text = Session["D"].ToString();
        Label1131.Text = Session["D1"].ToString();


        // String selectSQL;
        //String emmg;
        // String selectSQL = emmg.ToString();

        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
       
       // dbConn.ConnectionString = "Data Source=DESKTOP-M89P3JQ\\NEROSIGBENU; Initial Catalog=KAGINGqqq;Integrated Security=True;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        //dbConn1.ConnectionString = "Data Source=HP-55A070CC0320\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
        // selectSQL = "select 'Nam'=(select sum(exact) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='NAND'),  'Nam1'=(select Sum(exact) * MAX(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='NAND'),select 'LOG'=(select sum(exact) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='LOGGER'),  'LOG1'=(select Sum(exact) * MAX(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='LOGGER'),select 'SEC'=(select sum(exact) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='SECURITY'),  'SEC1'=(select Sum(exact) * MAX(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='SECURITY') from MealLog ";




        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;
        try
        {


            dbConn.Open();
            //dbConn1.Open();
            // Response.Write(selectSQL);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {









                int A = Convert.ToInt32(Session["1"]);

                int B = Convert.ToInt32(Session["2"]);


                int D = Convert.ToInt32(Session["4"]);


                int X = A + B + D;

                int W = A + B + D;
                Label114.Text = W.ToString();

                //    Response.Write(A);

                LabelF.Text = X.ToString();

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
