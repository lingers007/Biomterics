﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowF.aspx.cs" Inherits="BioPluginWebApp_ShowF" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Update Meal Category</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        	font-size:small;
        }
        


        .style27
        {
            width: 234px;
            height: 26px;
        }
                        
        .style45
        {
            width: 56px;
            height: 26px;
        }
        
        .style43
        {
            height: 26px;
            width: 52px;
        }
        
        .style46
        {
            font-size: small;
            width: 38px;
        }
        
        .style47
        {
            width: 46px;
        }
        
        </style>
   
    
</head>
<body>
   <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" bordercolor="blue" style="width: 811px">
        <tr>
            <td align="left" class="style4" 
                
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                <img src="Images/head.jpg" style="width: 861px; height: 120px" /><br />
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                          &nbsp; 
                                                          <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                              onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PENDING MEAL 
                CATEGORY TO BE UPDATED<br />
                <br />
        <table border="1" style="width: 780px; font-size: 14px;">
            <tr>
                <td class="style27" 
                    
                    style="font-size: medium; font-weight: bold; font-family: candara; background-color: #0099CC;">
                    Name</td>
                <td class="style45" style="font-size: medium; font-weight: bold">
                    Company</td>
                <td class="style45" style="font-size: medium; font-weight: bold">
                    Emp_No</td>
                <td class="style46" style="font-size: medium; font-weight: bold">
                    Old_Sta</td>
                <td class="style43" style="font-size: medium; font-weight: bold">
                    New_Sta</td>
                <td class="style47" style="font-size: medium; font-weight: bold">
                    Tick_No</td>
                <td>
                </td>
            </tr>
            <%
                
                
                SqlCommand scz = new SqlCommand("select id,Company,Name,Emp_No,Old,New,Meal_Ticket from MealCat where  Status='Pending'", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {


                                Response.Write("<tr style><td class='style2'>" + sdz["Name"].ToString() + "</td><td class='style2'>" + sdz["Company"].ToString() + "</td><td class='style2'>" + sdz["Emp_No"].ToString() + "</td><td class='style2'>" + sdz["Old"].ToString() + "</td><td class='style2'>" + sdz["New"].ToString() + "</td><td>" + sdz["Meal_Ticket"].ToString() + "</td><td class='style5'><a href='Feed.aspx?id=" + sdz["id"].ToString() + "'>Approve</a>&nbsp;&nbsp;&nbsp;&nbsp;  <a href='Delete5.aspx?id=" + sdz["id"].ToString() + "'>Decline</a> </td></tr>");
                                ct++;
                               // Session["id"] = Request.QueryString["id"].ToString();
                            }

                dbConn.Close();

                          
                 %>

                    
                </table>
                
                <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                <br />
                <br />
                    <br />
                    <br />
                &nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                <br />
                <br />
                <br />
                        <img src="Images/Leg.jpg" style="width: 860px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>



