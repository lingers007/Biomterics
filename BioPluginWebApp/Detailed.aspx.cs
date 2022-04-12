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
public partial class BioPluginWebApp_Detailed : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
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
        //  Response.Write(selectSQL);
        // Session["session"] = RadComboBox2.SelectedItem.Text;
        Session["D"] = RadDatePicker1.SelectedDate.Value.ToShortDateString();
        Session["D1"] = RadDatePicker2.SelectedDate.Value.ToShortDateString();
        Session["C"] = DropDownList1.SelectedItem.Text;
        //DateTime d1 = RadDatePicker1.SelectedDate.Value.ToShortDateString();
        selectSQL = "select * from MealLog where Time1  >=  '" + RadDatePicker1.SelectedDate.Value.ToShortDateString() + "' and  Time1 <= '" + RadDatePicker2.SelectedDate.Value.ToShortDateString() + "' and Company='" + DropDownList1.SelectedItem.Text + "' ";
        dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;





        try
        {
            dbConn.Open();
           // Response.Write(selectSQL);

            // Response.Write(Session["E"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Redirect("LogD.aspx");
            }


            else
            {
                Label6.Text = "No Records For The Selected Dates ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label6.Text = "Error  Logging in  ";
            Label6.Text += err.Message;
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
