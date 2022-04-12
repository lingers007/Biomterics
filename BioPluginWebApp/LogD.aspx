<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogD.aspx.cs" Inherits="BioPluginWebApp_LogD" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Added Meal</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        

        .style8
        {
            font-weight: bold;
            width: 45px;
        }
        

        .style9
        {
            font-weight: bold;
            width: 218px;
        }
        .style10
        {
            width: 218px;
            height: 22px;
        }
        .style11
        {
            height: 22px;
        }
        

        .style14
        {
            height: 22px;
            width: 45px;
        }
        .style15
        {
            font-weight: bold;
            width: 130px;
        }
        .style16
        {
            width: 130px;
            height: 22px;
        }
        

        .style17
        {
            font-weight: bold;
            width: 221px;
        }
        .style18
        {
            width: 221px;
            height: 22px;
        }
        

        .style19
        {
            width: 114px;
        }
        .style20
        {
            width: 114px;
            height: 22px;
        }
        

        .style21
        {
            font-weight: bold;
        }
        

        </style>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" bordercolor="blue" style="width: 811px">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                
                
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
                
                <br />
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                        REPORT FOR&nbsp;&nbsp;
                <asp:Label ID="Label111" runat="server"></asp:Label>
&nbsp; MEAL TICKET&nbsp; FROM&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label112" runat="server"></asp:Label>
&nbsp;&nbsp; TO&nbsp;&nbsp;
                <asp:Label ID="Label113" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    <br />
                    <br />
                    <table  border='1' 
                    
                    
                    style="width: 962px; font-family: Cambria; font-size: 13px; font-weight: normal;">
                    <tr>
                        <td class="style8">
                            S/N</td>
                        <td class="style17">
                            QUERYDATE</td>
                        <td class="style9">
                            NAMES</td>
                        <td class="style15">
                            Ticket No.</td>
                        <td class="style19">
                            <b>COST</b> </td>
                
                        <td class="style21">
                            Date</td>
                
                    </tr>
            <%
                
                SqlCommand scz = new SqlCommand("SELECT  Datename(dw, Time1)+', '+CONVERT(VARCHAR(12), Time1, 107) as Query_Date,Name,Reciept_No,Value,Time FROM MealLog WHERE Time1  >= '" + (Session["D"].ToString()) + "' and Time1 <= '" + (Session["D1"].ToString()) + "' and  Company='" + (Session["C"].ToString()) + "'  ORDER BY Time ASC", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {



                                Response.Write("<tr style><td class='style2'>" + ct + "</td><td class='style2'>" + sdz["Query_Date"].ToString() + "</td><td class='style5'>" + sdz["Name"].ToString() + "</td><td class='style5'>" + sdz["Reciept_No"].ToString() + "</td><td class='style5'>" + sdz["Value"].ToString() + "</td><td class='style2'>" + sdz["Time"].ToString() + "</td> </tr>");
                                    
                                    
                        
                                ct++;
                            }

                dbConn.Close();

                          
                 %>
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                        <td class="style14">
                            </td>
                        <td class="style18">
                            </td>
                        <td class="style10">
                            </td>
                        <td class="style16">
                            &nbsp;</td>
                        <td class="style20">
                            <b>₦</b><asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                Font-Size="Medium"></asp:Label>
                        </td>
                
                        <td class="style11">
                            &nbsp;</td>
                
                    </tr>

                    
                </table>
                <br />
                <asp:Label ID="Label109" 
                                runat="server" ForeColor="#3366CC"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                <br />
                <br />
                <br />
                        <br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>


