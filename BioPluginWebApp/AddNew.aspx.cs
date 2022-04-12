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
public partial class BioPluginWebApp_AddNew : System.Web.UI.Page
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
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {

      
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
       
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox8.Text = "";
        Label6.Text = "";
    }
    protected void OnConfirm(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);

            int c = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            int G = 0;



            if (c == 1)
            {
                G = 600;
            }
            else if (c == 2)
            {
                G = 600;
            }
            else if (c == 3)
            {
                G = 400;
            }
            else if (c == 4)
            {
                G = 400;
            }
            else if (c == 5)
            {
                G = 400;
            }
            else if (c == 6)
            {
                G = 600;
            }
            string dt = DateTime.Now.ToString("dd.MM.yyyy HH:mm");
            //DateTime dt = new DateTime(2008, 3, 9, 16, 5, 7, 123);

            String.Format("{0:d/M/yyyy HH:mm}", dt);

            Session["TK"] = dt;

            DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
            dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
            var tp = DateTime.Parse(Session["TK"].ToString(), dateFormatProvider);


            DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
            dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
            var tp1 = DateTime.Parse(Session["TK"].ToString(), dateFormatProvider);


            Session["N"] = TextBox2.Text.Trim();

            Session["E"] = TextBox3.Text.Trim();

            insertSQL9 = "INSERT INTO List_1(";
            insertSQL9 += "Name,Emp_No,Department,Meal_Cat,Company,Value,Status,AdmAdd,D,DD,AdmApp,D1,DD1,Meal_Ticket)";
            insertSQL9 += "VALUES('";


            insertSQL9 += TextBox2.Text.Trim() + "','";
            insertSQL9 += TextBox3.Text.Trim() + "','";
            insertSQL9 += TextBox4.Text.Trim() + "','";
            insertSQL9 += DropDownList1.SelectedItem.Text + "','";
            insertSQL9 += DropDownList2.SelectedItem.Text + "','";
            insertSQL9 += G + "','";
            insertSQL9 += "Pending" + "','";
            insertSQL9 += Session["username"].ToString() + "','";
            insertSQL9 += tp + "','";
            insertSQL9 += tp1 + "','";
            insertSQL9 += Session["username"].ToString() + "','";
            insertSQL9 += tp + "','";
            insertSQL9 += tp1 + "','";
            insertSQL9 += TextBox8.Text.Trim() + "')";



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



                    Response.Redirect("NewAddC.aspx");
                }
                else
                {
                    Label6.Text = "Operations Not Successful";
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
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
            // Response.Redirect("AddMeal.aspx");
            Label6.Text = "Meal Ticket Not Added  ";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
