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


public partial class BioPluginWebApp_Lgin : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["username"] = TextBox1.Text;
        string username = TextBox1.Text;
        selectSQL = "select * from Users WHERE USERNAME ='" + TextBox1.Text.Trim() + "' and PASSWORD ='" + TextBox2.Text.Trim() + "'";
         dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;"; 
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["Role"] = dr["Role"].ToString();
                if (dr["Role"].ToString() == "ADMIN")
                {
                    Response.Redirect("AdminH.aspx");
                }
                else if (dr["Role"].ToString() == "USER")
                {
                    Response.Redirect("H1.aspx");
                }
                else  if(dr["Role"].ToString() == "SUPERUSER")
                {
                    Response.Redirect("H1.aspx");
                }
            else  if(dr["Role"].ToString() == "BIOMETRIC")
                 {
                    Response.Redirect("Lgin.aspx");
                }
                
            }
            else
            {
                Label1.Text = "Sorry You Can't Login  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label1.Text = "Error  Logging in  ";
            Label1.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
    }
}
