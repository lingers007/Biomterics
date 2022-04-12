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
using System.Data.OleDb;

public partial class Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        
        
        
        
        
      OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=C:\\Program Files (x86)\\BioPlugin\\Database.mdb;Jet OLEDB:Database Password=b10w";

    
        string strDelete = "delete from Person where RegistrationNo='" + TextBox1.Text + "' ";

        OleDbCommand cmd = new OleDbCommand(strDelete, conn);

        //cmd.ExecuteNonQuery();


        cmd.Connection = conn;
        cmd.CommandText = strDelete;
        cmd.CommandType = CommandType.Text;
        try
        {


            conn.Open();
            Response.Write(strDelete);
            int updated2 = cmd.ExecuteNonQuery();
            if (updated2 == 1)
            {

                Response.Write("he happen");

            }
            else
            {
                 Response.Write("For where");



            }

        }
        catch (Exception err)
        {
            Label6.Text = "Error  Updating ";
            Label6.Text += err.ToString();
        }
        finally
        {
           conn.Close();
        }

    }
}
