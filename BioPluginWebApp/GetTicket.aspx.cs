﻿using System;
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

public partial class BioPluginWebApp_GetTicket : System.Web.UI.Page
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

        MyConnection = new SqlConnection(dbstring);
        MyConnection1 = new SqlConnection(dbstring);
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
            string conn = "SELECT  Name,Emp_No,Company,Meal_Cat,Meal_Ticket from List_Staff where Meal_Ticket <=  '" + Session["RT"] + "' order by Meal_Ticket ";


            MyConnection.Open();
           // Response.Write(conn);
            SqlCommand MyCommand1 = new SqlCommand(conn, MyConnection);
            SqlDataReader MyReader1 = MyCommand1.ExecuteReader();

            Label7.Text = "<table border='1' bgcolor='#E3FCBE'celspacing='9' width='800px' ><tr><td>S/N</td><td>Name</td><td>Emp_Name</td><td>Company</td><td>Meal_Cat</td><td>Meal_Ticket</td></tr>";
            int ct = 1;
            while (MyReader1.Read())
            {
                Label7.Text = Label7.Text + " <tr style><td class='style2'>" + ct + "</td><td class='style2'>" + MyReader1["Name"].ToString() + "</td><td class='style2'>" + MyReader1["Emp_No"].ToString() + "</td><td class='style2'>" + MyReader1["Company"].ToString() + "</td><td class='style2'>" + MyReader1["Meal_Cat"].ToString() + "</td><td class='style2'>" + MyReader1["Meal_Ticket"].ToString() + "</td> </tr>";
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = "";
        Session.Remove("username");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label7.Text = "";
        TextBox5.Text = "";
    }
}
