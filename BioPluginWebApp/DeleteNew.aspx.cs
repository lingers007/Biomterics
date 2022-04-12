using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class BioPluginWebApp_DeleteNew : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    string deleteSQL;
    SqlCommand cmd;
    SqlConnection dbConn;
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
        cmd = new SqlCommand();
        dbConn = new SqlConnection();
    }

    protected void OnConfirm(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);

            if (TextBox1.Text == "")
            {

                Label1.Text = "Operation Not Successful ";
            }
            else
            {
                deleteSQL = "Delete  from List_Staff where Emp_No='" + TextBox1.Text.Trim() + "'";

                dbConn.ConnectionString = "Data Source=GROKL\\MEALTICKET; Initial Catalog=KAGING;User ID=Mticket;password=Meal2&#*@2%;Integrated Security=False;Max Pool Size=200;";
                cmd.Connection = dbConn;
                cmd.CommandText = deleteSQL;
                cmd.CommandType = CommandType.Text;
                //cmd.Parameters.AddWithValue("@AdmissionNo", TextBox1.Text);
                try
                {
                    dbConn.Open();
                    
                    int deleted = cmd.ExecuteNonQuery();
                    if (deleted == 1)
                    {
                        Label1.Text = "Record Deleted";
                        TextBox1.Text = "";



                    }
                    else
                    {
                        // Response.Write("updated1");
                      Label1.Text = "Record Not Deleted";
                        // TextBox1.Text = "";

                        

                    }


                   

                }

                catch (Exception err)
                {
                    Response.Write(err.Message);
                    
                }
                finally
                {
                    dbConn.Close();
                }
            }






        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert", true);
            // Response.Redirect("AddMeal.aspx");
            Label1.Text = "Operation Aborted ";
            TextBox1.Text = "";
        }

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
}
