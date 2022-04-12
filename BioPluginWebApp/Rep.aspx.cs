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

public partial class KAGING_Rep : System.Web.UI.Page
{
    string selectSQL;
    SqlCommand cmd = new SqlCommand();
    public SqlConnection dbConn = new SqlConnection();
    public SqlConnection dbConn1 = new SqlConnection();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //String selectSQL;
        //String emmg;
        // String selectSQL = emmg.ToString();


        dbConn.ConnectionString = "Data Source=LAPTOP-VOQ43JBA\\SQLEXPRESS; Initial Catalog=KAGING;Integrated Security=True;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;

        //dbConn1.ConnectionString = "Data Source=HP-55A070CC0320\\SQLEXPRESS; Initial Catalog=emma;Integrated Security=True;";
        selectSQL = "select Value,'Count'=(select count(value)from CanLog  where WW  between '" + (Session["D"].ToString()) + "' and '" + (Session["E"].ToString()) + "' ) from CanLog ";
        //yimak.Src = "passport/" + Session["AdmissionNo"].ToString() + ".jpg";


        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            //dbConn1.Open();
            // Response.Write(selectSQL);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Label109.Text = dr["Sum"].ToString() + ".00";
                Label110.Text = dr["Count"].ToString();
                //  Response.Write(selectSQL);
            }
            dr.Close();
        }


        catch (Exception err)
        {

        }
        finally
        {
            dbConn.Close();
        }

    }
}
