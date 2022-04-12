<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Log.aspx.cs" Inherits="BioPluginWebApp_Log" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW ALL REPORT</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        

        .style6
        {
            width: 172px;
        }
        

        .style7
        {
            width: 172px;
            font-weight: bold;
        }
        .style8
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
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                              onclick="LinkButton1_Click">Sign out</asp:LinkButton>
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
                    style="width: 605px; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal;">
                    <tr>
                        <td class="style8">
                            S/N</td>
                        <td class="style8">
                            QUERYDATE</td>
                        <td class="style7">
                            TICKET USED</td>
                        <td class="style39">
                            <b>COST</b> </td>
                
                    </tr>
            <%
                
                SqlCommand scz = new SqlCommand("SELECT  Datename(dw, Time1)+', '+CONVERT(VARCHAR(12), Time1, 107) as Query_Date,(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='" + (Session["C"].ToString()) + "') AS Company, COMPANYTICKETCOST=SUM(CASE WHEN Company='" + (Session["C"].ToString()) + "' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='" + (Session["C"].ToString()) + "' THEN Value ELSE 0 END) FROM MealLog AS clog WHERE Time1  >= '" + (Session["D"].ToString()) + "' and Time1 <= '" + (Session["D1"].ToString()) + "'  GROUP BY Time1  ORDER BY Time1 ASC", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {



                                Response.Write("<tr style><td class='style2'>" + ct + "</td><td class='style2'>" + sdz["Query_Date"].ToString() + "</td><td class='style5'>" + sdz["Company"].ToString() + "</td><td class='style5'>" + sdz["COMPANYTICKETCOST"].ToString() + "</td> </tr>");
                                    
                                    
                        
                                ct++;
                            }

                dbConn.Close();

                          
                 %>
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style6" align="left">
                            <asp:Label ID="Label1" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                                </td>
                        <td class="style40" align="left">
                            &nbsp;&nbsp;&nbsp;<b>₦</b><asp:Label ID="Label2" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                        </td>
                
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


