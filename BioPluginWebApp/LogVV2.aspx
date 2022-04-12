<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogVV2.aspx.cs" Inherits="BioPluginWebApp_LogVV2" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Globalization" %>

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
        

        .style7
        {
            width: 73px;
            font-weight: bold;
            height: 25px;
        }
        .style8
        {
            font-weight: bold;
            width: 197px;
            height: 25px;
        }
        

        .style9
        {
            width: 67px;
            font-weight: bold;
            height: 25px;
        }
        .style13
        {
            width: 176px;
            font-weight: bold;
            height: 25px;
        }
        .style16
        {
            width: 64px;
            font-weight: bold;
            height: 25px;
        }
        .style17
        {
            width: 40px;
            font-weight: bold;
            height: 25px;
        }
        .style18
        {
            width: 46px;
            font-weight: bold;
            height: 25px;
        }
        .style19
        {
            width: 29px;
            font-weight: bold;
            height: 25px;
        }
        .style21
        {
            width: 186px;
            font-weight: bold;
            height: 25px;
        }
        .style22
        {
            width: 78px;
            font-weight: bold;
            height: 25px;
        }
        .style23
        {
            width: 71px;
            font-weight: bold;
            height: 25px;
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
                        LOG&nbsp; REPORT FOR&nbsp;&nbsp; CATEGORY CHANGE&nbsp; OPERATION &nbsp;&nbsp; FROM&nbsp;&nbsp;<asp:Label ID="Label112" runat="server"></asp:Label>
&nbsp;&nbsp; TO&nbsp;&nbsp;
                <asp:Label ID="Label113" runat="server"></asp:Label>
                        &nbsp;<br />
                        <br />
                    <br />
                    <br />
                    <table  border='1' 
                    
                    
                    
                    
                    style="width: 1165px; font-family: Cambria; font-size: 13px; font-weight: normal;">
                    <tr>
                        <td class="style8">
                            Name</td>
                        <td class="style9">
                            Emp_No</td>
                             <td class="style16">
                            Company</td>
                             <td class="style17">
                            Ticket</td>
                        <td class="style18">
                            Old_Cat</td>
                
                        <td class="style19">
                            New_Cat</td>
                
                        <td class="style23">
                            Added By</td>
                
                        <td class="style13">
                            Date Added</td>
                
                        <td class="style22">
                            Apvd. By</td>
                
                        <td class="style21">
                            Date Approved</td>
                
                        <td class="style7">
                            Status</td>
                
                    </tr>
            <%
                
                SqlCommand scz = new SqlCommand("SELECT  Name,Emp_No,Company,Meal_Ticket,Old,New,AdmAdd,D,AdmApp,D1,Status FROM MealCat where DD  >= '" + Session["DD"].ToString() + "' and DD1 <= '" + Session["DD1"].ToString() + "' and Emp_No='" + Session["C"].ToString() + "'  ORDER BY D,Company,Name ASC", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {

                               // var tt = sdz["D"].ToString();

                              //  var y = DateTime.Parse(tt).ToShortDateString();





                                Response.Write("<tr style><td class='style2'>" + sdz["Name"].ToString() + "</td><td class='style2'>" + sdz["Emp_No"].ToString() + "</td><td class='style5'>" + sdz["Company"].ToString() + "</td><td class='style5'>" + sdz["Meal_Ticket"].ToString() + "</td><td class='style5'>" + sdz["Old"].ToString() + "</td><td class='style5'>" + sdz["New"].ToString() + "</td><td class='style2'>" + sdz["AdmAdd"].ToString() + "</td><td class='style2'>" + sdz["D"].ToString() + "</td><td class='style2'>" + sdz["AdmAPP"].ToString() + "</td> <td class='style2'>" + sdz["D1"].ToString() + "</td><td class='style2'>" + sdz["Status"].ToString() + "</td></tr>");
                                    
                                    
                        
                                ct++;
                            }

                dbConn.Close();

                          
                 %>

                    
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


