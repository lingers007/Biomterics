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

public partial class BioPluginWebApp_MealAddI : System.Web.UI.Page
{
    string selectSQL;

    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlConnection dbConn3 = new SqlConnection();
    SqlConnection dbConn4 = new SqlConnection();
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
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        selectSQL = "  SELECT Emp_No,Company from List_Staff  where  Emp_No='" + TextBox2.Text.Trim() + "' and Company='" + DropDownList1.SelectedItem.Text + "'   ";
        //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";

        dbConn3.ConnectionString = "Data Source=LAPTOP-VOQ43JBA\\SQLEXPRESS; Initial Catalog=KAGING;Integrated Security=True;";
        //dbConn1.ConnectionString = "Data Source=NEW-VITAL\\SCHOOLSERVER; Initial Catalog=emma;Integrated Security=True;";

        cmd1.Connection = dbConn3;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;






        dbConn3.Open();
        dr = cmd1.ExecuteReader();

        if (dr.Read())
        {

            String insertSQL;
            insertSQL = "INSERT INTO Temp(";
            insertSQL += "Company,Emp_No,Operation,Meal_Ticket)";
            insertSQL += "VALUES('";

            insertSQL += DropDownList1.SelectedItem.Text + "','";
            insertSQL += TextBox2.Text.Trim() + "','";
            insertSQL +=  "Addition" + "','";
            insertSQL += TextBox3.Text.Trim() + "')";



            String connectionString = "Data Source=LAPTOP-VOQ43JBA\\SQLEXPRESS; Initial Catalog=KAGING;Integrated Security=True;";
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
                    Response.Redirect("yes.aspx");

                }
                else
                {
                    Response.Redirect("No.aspx");
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




            Label6.Text = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb  the Product";
           


      }
    }
}

    }
}
