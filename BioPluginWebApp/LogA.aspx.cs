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

public partial class BioPluginWebApp_LogA : System.Web.UI.Page
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


       // Label111.Text = Session["C"].ToString();
        Label112.Text = Session["D"].ToString();
        Label113.Text = Session["D1"].ToString();

       // String selectSQL;
        //String emmg;
       // String selectSQL = emmg.ToString();


        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        //dbConn1.ConnectionString = "Data Source=HP-55A070CC0320\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
        selectSQL = "select 'Nam'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='ARPN'),  'Nam1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='ARPN'),'AGY'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='AGGREY'),  'AGY1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='AGGREY'),'CRMT'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='CRIMETECH'), 'CRMT1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='CRIMETECH'),'DLG'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='DELOG'),  'DLG1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='DELOG'),'RDLG'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='RDELOG'),  'RDLG1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='RDELOG'),'TUSK'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='TUSKEEGEE'),  'TUSK1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='TUSKEEGEE'),'VIST'=(select Count(Company) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='VISITOR'), 'VIST1'=(select Sum(Value) from MealLog where Time1  >= '" + Session["D"].ToString() + "' and Time1 <= '" + Session["D1"].ToString() + "' and Company='VISITOR') from MealLog ";
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
               Label2.Text = dr["Nam"].ToString();
                  Label1.Text = "₦" + dr["Nam1"].ToString();
                  Session["1"] = dr["Nam1"].ToString();

                  Label3.Text = dr["AGY"].ToString();
                  Label4.Text = "₦" + dr["AGY1"].ToString();
                  Session["2"] = dr["AGY1"].ToString();
                  Label5.Text = dr["CRMT"].ToString();
                  Label6.Text = "₦" + dr["CRMT1"].ToString();
                  Session["3"] = dr["CRMT1"].ToString();
                  Label7.Text = dr["DLG"].ToString();
                  Label8.Text = "₦" + dr["DLG1"].ToString();
                  Session["4"] = dr["DLG1"].ToString();
                  Label9.Text = dr["RDLG"].ToString();
                  Label10.Text = "₦" + dr["RDLG1"].ToString();
                  Session["5"] = dr["RDLG1"].ToString();
                  Label11.Text = dr["TUSK"].ToString();
                  Label12.Text = "₦" + dr["TUSK1"].ToString();
                  Session["6"] = dr["TUSK1"].ToString();

                  Label13.Text = dr["VIST"].ToString();
                  Label14.Text = "₦" + dr["VIST1"].ToString();
                     Session["7"] = dr["VIST1"].ToString();
         
                  if (Session["1"]=="")
                {
                    Label1.Text = "0";
                }
                else
                {
                     
                    Label1.Text = Session["1"].ToString();
                }

                int A = Convert.ToInt32(Label1.Text );
                 if (Session["2"]=="")
                {
                    Label4.Text = "0";
                }
                else
                {
                     
                    Label4.Text = Session["2"].ToString();
                }
                int B = Convert.ToInt32(Label4.Text);

                   if (Session["3"]=="")
                {
                    Label6.Text = "0";
                }
                else
                {
                     
                    Label6.Text = Session["3"].ToString();
                }
                  
                int C = Convert.ToInt32(Label6.Text);
                    if (Session["4"]=="")
                {
                    Label8.Text = "0";
                }
                else
                {
                     
                    Label8.Text = Session["4"].ToString();
                }
                int D = Convert.ToInt32(Label8.Text);
                    if (Session["5"]=="")
                {
                    Label10.Text = "0";
                }
                else
                {
                     
                    Label10.Text = Session["5"].ToString();
                }

              
                int E = Convert.ToInt32(Label10.Text);
                   if (Session["6"]=="")
                {
                    Label12.Text = "0";
                }
                else
                {
                     
                    Label12.Text = Session["6"].ToString();
                }

                int F = Convert.ToInt32(Label12.Text);
               // Response.Write(Session["6"]);
 
                if (Session["7"]=="")
                {
                    Label14.Text = "0";
                }
                else
                {
                     
                    Label14.Text = Session["7"].ToString();
                }
                int G = Convert.ToInt32(Label14.Text);
                
              
               
               int X = A + B + C + D + E + F +G;
                int W = A + B + E ;
               // Response.Write(X);
                LabelF.Text = X.ToString();
                Label114.Text = W.ToString();
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
