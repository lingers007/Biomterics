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
public partial class BioPluginWebApp_Extra : System.Web.UI.Page
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
        Session["M"] = TextBox4.Text.Trim();
        selectSQL = "  SELECT Meal_Ticket,Name from List_Staff  where  Emp_No='" + TextBox2.Text.Trim() + "' and Company='" + DropDownList1.SelectedItem.Text + "'   ";
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
             //Response.Write(selectSQL);
            if (dr.Read())
            {
                TextBox3.Text = dr["Meal_Ticket"].ToString();
                Session["Name"] = dr["Name"].ToString();


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
        Label7.Text = "";
        TextBox5.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        CompareValidator1.Enabled = false;
        DropDownList1.ClearSelection();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Label6.Text = "";

    }
    protected void OnConfirm(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);

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


          

            Session["NO"] = TextBox2.Text.Trim();
            Session["RT"] = TextBox3.Text.Trim();
            Session["D"] = TextBox4.Text.Trim();


            int y = Convert.ToInt32(Session["D"]);


            string t = y.ToString();
            Session["F"] = y.ToString();
            String insertSQL;
            insertSQL = "INSERT INTO Temp(";
            insertSQL += "Company,Name,Emp_No,Operation,Status,AdmAdd,D,DD,AdmApp,D1,DD1,Meal_Ticket,Reason)";
            insertSQL += "VALUES('";

            insertSQL += DropDownList1.SelectedItem.Text + "','";
            insertSQL += Session["Name"] + "','";
            insertSQL += TextBox2.Text.Trim() + "','";
            insertSQL += "Addition" + "','";
            insertSQL += "Pending" + "','";
            insertSQL += Session["username"].ToString() + "','";
            insertSQL += tt + "','";
            insertSQL += tt1 + "','";
            insertSQL += Session["username"].ToString() + "','";
            insertSQL += tt + "','";
            insertSQL += tt1 + "','";
            insertSQL += TextBox4.Text.Trim() + "','";
            insertSQL += DropDownList2.SelectedItem.Text + "')";




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
                    Response.Redirect("MealAddC.aspx");

                }
                else
                {
                    Label6.Text = "Operations not Successful ";
                }
                // Label1.Text = added.ToString() + "records Inserted";
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
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
            Label6.Text = "Meal Ticket Not Added ";
            
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
