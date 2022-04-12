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
using System.IO;

public partial class KAGING_View : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //  Response.Write(selectSQL);
        // Session["session"] = RadComboBox2.SelectedItem.Text;
        Session["D"] = RadDatePicker1.SelectedDate.Value.ToShortDateString();
        Session["E"] = RadDatePicker2.SelectedDate.Value.ToShortDateString();
        //Session["U"] = RadComboBox5.SelectedItem.Text;
        //DateTime d1 = RadDatePicker1.SelectedDate.Value.ToShortDateString();
        selectSQL = "select * from CanLog where WW  BETWEEN '" + RadDatePicker1.SelectedDate.Value.ToShortDateString() + "' and '" + RadDatePicker2.SelectedDate.Value.ToShortDateString() + "'  ";
        dbConn.ConnectionString = "Data Source=LAPTOP-VOQ43JBA\\SQLEXPRESS; Initial Catalog=KAGING;Integrated Security=True;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        try
        {
            dbConn.Open();
            //Response.Write(selectSQL);

            //Response.Write(Session["E"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Redirect("Rep.aspx");
            }


            else
            {
                Label1122.Text = "No Records  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label1122.Text = "Error  Logging in  ";
            Label1122.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
    }
}
