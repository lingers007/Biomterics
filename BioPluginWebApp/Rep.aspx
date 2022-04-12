<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rep.aspx.cs" Inherits="Nampak_Rep" %>


<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Homepage</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
                
.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue
{
	vertical-align:middle;
}

        .RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

        .RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

        .style25
        {
            width: 48px;
            height: 22px;
        }
        .style27
        {
            width: 241px;
            height: 22px;
        }
        .style29
        {
            width: 683px;
            height: 22px;
        }
                
        .style42
        {
            width: 596px;
            height: 22px;
        }
        
        .style41
        {
            width: 527px;
            height: 22px;
        }
        
        .style26
        {
            width: 48px;
        }
        .style28
        {
            width: 241px;
        }
        .style30
        {
            width: 683px;
        }
        .style40
        {
            width: 596px;
        }
        .style38
        {
            width: 782px;
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
                <img src="Images/head.jpg" style="width: 811px; height: 120px" /><br />
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                          &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Login.aspx">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                <br />
                <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadFormDecorator 
                    ID="RadFormDecorator1" Runat="server" Skin="Web20" 
                    DecoratedControls="All" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                <br />
                <table  border='1' style="width: 100%">
                    <tr>
                        <td class="style25">
                            S/N</td>
                        <td class="style27">
                            JobID</td>
                        <td class="style29">
                            Names</td>
                        
                        <td class="style42">
                            Reciept No</td>
                        
                
                        <td class="style41">
                            Date</td>
                
                    </tr>
            <%
                
                SqlCommand scz = new SqlCommand("select Employ,Firstname,Value,time  from CanLog  where WW  between '" + (Session["D"].ToString()) + "' and '" + (Session["E"].ToString()) + "'  ", dbConn);
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {



                                Response.Write("<tr style><td class='style2'>" + ct + "</td><td class='style2'>" + sdz["Employ"].ToString() + "</td><td class='style2'>" + sdz["Firstname"].ToString() + "</td><td class='style2'>" + sdz["Value"].ToString() + "</td><td class='style5'>" + sdz["Time"].ToString() + "</td></tr>");
                                ct++;
                            }

                dbConn.Close();

                          
                 %>
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                        <td class="style26">
                            &nbsp;</td>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style30" align="left">
                            Total&nbsp; Reciept Printed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  
                            <asp:Label ID="Label110" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC" Font-Size="Medium" 
                                Width="30px"></asp:Label>
                        </td>
                        <td class="style40">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="Label109" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True" Enabled="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style38">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                       
                        
                
                    </tr>

                    
                </table>
                <br />
                <asp:Label ID="Label101" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;<br />
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Enabled="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Enabled="False"></asp:Label>
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


