﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminS.aspx.cs" Inherits="BioPluginWebApp_AdminS" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add Users Confirmation</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
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
                                                          &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="AdminH.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                             ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False">Sign out</asp:LinkButton>
                                                          &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                    <br />
                    <br />
                
                        <br />
                    You Have Succesfully Added User with Username&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
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
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

