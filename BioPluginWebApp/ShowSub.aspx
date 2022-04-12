<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowSub.aspx.cs" Inherits="BioPluginWebApp_ShowSub" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Pending Ticket To Be Subtracted</title>
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
            width: 278px;
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
        }
        
        .style46
        {
            font-size: small;
            width: 38px;
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
                <img src="Images/head.jpg" style="width: 811px; height: 120px" /><br />
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                          &nbsp; <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PENDING TICKET TO 
                BE SUBTRACTED<br />
                <br />
        <table border="1" style="width: 710px; font-size: 14px;">
            <tr>
                <td class="style27" 
                    
                    style="font-size: medium; font-weight: bold; font-family: candara; background-color: #0099CC;">
                    Name</td>
                <td class="style45" style="font-size: medium; font-weight: bold">
                    Company</td>
                <td class="style45" style="font-size: medium; font-weight: bold">
                    Emp_No</td>
                <td class="style46" style="font-size: medium; font-weight: bold">
                    Meal_Ticket</td>
                <td class="style43" style="font-size: small; font-weight: lighter">
                    </td>
            </tr>
            <%
                
                
                SqlCommand scz = new SqlCommand("select id,Company,Name,Emp_No,Operation,Meal_Ticket from Temp where Operation='Subtraction' and Status='Pending'", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {


                                Response.Write("<tr style><td class='style2'>" + sdz["Name"].ToString() + "</td><td class='style2'>" + sdz["Company"].ToString() + "</td><td class='style2'>" + sdz["Emp_No"].ToString() + "</td><td>" + sdz["Meal_Ticket"].ToString() + "</td><td class='style5'><a href='Subtract.aspx?id=" + sdz["id"].ToString() + "'>Approve</a>&nbsp;&nbsp;&nbsp;&nbsp;  <a href='Delete1.aspx?id=" + sdz["id"].ToString() + "'>Decline</a> </td></tr>");
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
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>



