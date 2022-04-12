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
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class BioPluginWebApp_Feeding : System.Web.UI.Page
{
    string selectSQL, selectSQL1, selectSQL5, selectSQL3, selectSQL6;
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
    SqlDataReader dr, dr1, dr2, dr3, dr5, dr6, dr8;
    public string dbstring = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
    protected SqlConnection MyConnection, MyConnection1;
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
        MyConnection = new SqlConnection(dbstring);
        MyConnection1 = new SqlConnection(dbstring);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session["M"] = TextBox3.Text.Trim();
        if (TextBox6.Text.Trim() == "")
        {
            Label6.Text = "Employment No Field is Empty";
        }
        else
        {

            selectSQL = "  SELECT   *     from List_Staff  where  Emp_No='" + TextBox6.Text.Trim() + "'  ";
            //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";

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
                    TextBox2.Text = dr["Name"].ToString();
                    Session["Meal_Ca"] = dr["Meal_Cat"].ToString();

                    DropDownList1.Items.Add(Session["Meal_Ca"].ToString());
                    TextBox8.Text = dr["Company"].ToString();


                }
                else
                {




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
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
             
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "")
        {

            Label7.Text = "No Record ";
        }
        else
        {
            Session["RT"] = TextBox5.Text.Trim();
            string conn = "SELECT  Name,Emp_No,Company,Meal_Ticket from List_Staff where Name like    '" + '%' + Session["RT"] + '%' + "' ";


            MyConnection.Open();

            SqlCommand MyCommand1 = new SqlCommand(conn, MyConnection);
            SqlDataReader MyReader1 = MyCommand1.ExecuteReader();

            Label7.Text = "<table border='1' bgcolor='#E3FCBE'celspacing='9' width='600px'><tr><td>S/N</td><td>Name</td><td>Emp_Name</td><td>Company</td><td>Meal_Ticket</td></tr>";
            int ct = 1;
            while (MyReader1.Read())
            {
                Label7.Text = Label7.Text + " <tr style><td class='style2'>" + ct + "</td><td class='style2'>" + MyReader1["Name"].ToString() + "</td><td class='style2'>" + MyReader1["Emp_No"].ToString() + "</td><td class='style2'>" + MyReader1["Company"].ToString() + "</td><td class='style2'>" + MyReader1["Meal_Ticket"].ToString() + "</td> </tr>";
                // Label1.Text = Label1.Text + "<tr><td>" + MyReader1["Course"].ToString() + "</td><td>" + MyReader1["Description"].ToString() + "</td><td>" + MyReader1["Credit"].ToString() + "</td><td class='style5'><a href='EditC.aspx?id=" + MyReader1["id"].ToString() + "'>Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='DeleteC.aspx?id=" + MyReader1["id"].ToString() + "'>Delete</a></td></tr>";
                // Session["id"] = MyReader1["id"].ToString();
                ct++;

            }
            MyConnection.Close();
            Label7.Text = Label7.Text + "</table>";
            // Label7.Text = "Staff Does not Exist";
            //  Label3.Text = MyReader1["Sum"].ToString();





        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        TextBox5.Text = "";
        Label7.Text = "";
       
    }
    protected void OnConfirm(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);



            Session["1"] = DropDownList1.SelectedItem.Value;
            Session["2"] = DropDownList2.SelectedItem.Value;
            Session["3"] = TextBox6.Text;

            if (Session["1"].ToString() == Session["2"].ToString())
            {
                Label6.Text = " The Old  and Intending Status Cannot be the same ? ";
            }
            else
            {
                string dt = DateTime.Now.ToString("dd.MM.yyyy HH:mm");
                //DateTime dt = new DateTime(2008, 3, 9, 16, 5, 7, 123);

                String.Format("{0:d/M/yyyy HH:mm}", dt);

                Session["Tv"] = dt;

                DateTimeFormatInfo dateFormatProvider = new DateTimeFormatInfo();
                dateFormatProvider.ShortDatePattern = "0:d/M/yyyy HH:mm";
                var tt = DateTime.Parse(Session["Tv"].ToString(), dateFormatProvider);


                DateTimeFormatInfo dateFormatProvider1 = new DateTimeFormatInfo();
                dateFormatProvider1.ShortDatePattern = "yyyy-MM-dd";
                var tt1 = DateTime.Parse(Session["Tv"].ToString(), dateFormatProvider);




                // string t = y.ToString();
                // Session["F"] = y.ToString();
                String insertSQL;
                insertSQL = "INSERT INTO MealCat(";
                insertSQL += "Emp_No,Company,Name,Old,New,AdmAdd,D,DD,AdmApp,D1,DD1,Meal_ticket,Status)";
                insertSQL += "VALUES('";

                insertSQL += TextBox6.Text.Trim() + "','";
                insertSQL += TextBox8.Text.Trim() + "','";
                insertSQL += TextBox2.Text.Trim() + "','";
                insertSQL += DropDownList1.SelectedItem.Value + "','";
                insertSQL += DropDownList2.SelectedItem.Value + "','";

                insertSQL += Session["username"].ToString() + "','";
                insertSQL += tt + "','";
                insertSQL += tt1 + "','";
                insertSQL += Session["username"].ToString() + "','";
                insertSQL += tt + "','";
                insertSQL += tt1 + "','";
                insertSQL += TextBox7.Text.Trim() + "','";
                insertSQL += "Pending" + "')";



                String connectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con4 = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(insertSQL, con4);
                int added = 0;


                try
                {
                    con4.Open();
                    added = cmd.ExecuteNonQuery();



                    // Label6.Text = added.ToString();


                    if (added == 1)
                    {
                        Response.Redirect("FeedingC.aspx");

                    }
                    else
                    {
                       Label6.Text = "Operation Not Successful";
                    }
                   
                }



                catch (Exception err)
                {

                    Label6.Text += err.ToString();
                }
                finally
                {
                    con4.Close();
                }

            }






        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
            // Response.Redirect("AddMeal.aspx");
            Label6.Text = "Operation Not Successful";
            
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        DropDownList1.Items.Remove(Session["Meal_Ca"].ToString());
        DropDownList2.ClearSelection();
        TextBox2.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label6.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
