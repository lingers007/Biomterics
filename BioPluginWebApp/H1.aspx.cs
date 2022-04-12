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

public partial class KAGING_H1 : System.Web.UI.Page
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
        selectSQL = "select Status  from Temp WHERE Status ='Pending' and Operation='Addition'";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            // Response.Write(selectSQL);
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

               // Button19.BackColor = System.Drawing.Color.Red;
                Label9.BackColor = System.Drawing.Color.Red;
                Label9.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            else
            {
                Label9.BackColor = System.Drawing.Color.Green;
                Label9.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label9.Text = "Error  Logging in  ";
            Label9.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }
        selectSQL = "select Status  from Temp WHERE Status ='Pending' and Operation='Subtraction'";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            // Response.Write(selectSQL);
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                // Button19.BackColor = System.Drawing.Color.Red;
                Label10.BackColor = System.Drawing.Color.Red;
                Label10.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            else
            {
                Label10.BackColor = System.Drawing.Color.Green;
                Label10.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label10.Text = "Error  Logging in  ";
            Label10.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }

        selectSQL = "select Status  from List_1 WHERE Status ='Pending' ";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            // Response.Write(selectSQL);
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                // Button19.BackColor = System.Drawing.Color.Red;
                Label12.BackColor = System.Drawing.Color.Red;
                Label12.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            else
            {
                Label12.BackColor = System.Drawing.Color.Green;
                Label12.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label12.Text = "Error  Logging in  ";
            Label12.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }

        selectSQL = "select Status  from  MealCat WHERE Status ='Pending' ";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            // Response.Write(selectSQL);
            dbConn.Open();
            //Response.Redirect(Session["Logged"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                // Button19.BackColor = System.Drawing.Color.Red;
                Label11.BackColor = System.Drawing.Color.Red;
                Label11.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            else
            {
                Label11.BackColor = System.Drawing.Color.Green;
                Label11.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label11.Text = "Error  Logging in  ";
            Label11.Text += err.ToString();
        }
        finally
        {
            dbConn.Close();
        }




        //Response.Write(Session["Role"]);
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


        if (Session["Role"].ToString() == "ADMIN" || Session["Role"].ToString() == "USER")
        {
            

            FButton.Enabled = false;
          
            Button7.Enabled = false;
            Button8.Enabled = false;
            Button16.Enabled = false;
          
        }
        else
        {


        }

    }
    protected void RegisterButton_click(object sender, EventArgs e)
    {
        Response.Redirect("AddMeal.aspx");
    }
    protected void PasswordButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExternalAdd.aspx");
    }
    protected void PasswordButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Password.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reset.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportI.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }
    protected void Extra_Click(object sender, EventArgs e)
    {
        Response.Redirect("Extra.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MealSubtract.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Detailed.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feeding.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowAdd.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowSub.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubtractMeal.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("VIR.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("VIRT.aspx");
    }
    protected void FButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowF.aspx");
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewO.aspx");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNew.aspx");
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteNew.aspx");
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowNew.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateName.aspx");
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        Response.Redirect("IO.aspx");
    }
 protected void NumberB_Click(object sender, EventArgs e)
    {
        Response.Redirect("GetTicket.aspx");
    }
}
