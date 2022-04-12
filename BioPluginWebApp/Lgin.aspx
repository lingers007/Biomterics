<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lgin.aspx.cs" Inherits="BioPluginWebApp_Lgin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style63
        {
            text-align: left;
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
                                                          &nbsp;&nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    ADMIN LOGIN<br />
                <br />
                <br />
                        <table align="center" border="1" style="width: 24%">
                    <tr>
                        <td class="style63">
                            <b style="font-weight: bold">Username</b></td>
                        <td class="style63">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style63">
                            <b style="font-weight: bold">Password</b></td>
                        <td class="style63">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style63">
                            &nbsp;</td>
                        <td class="style63">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="31px" 
                                ImageUrl="Images/vb.png" onclick="ImageButton2_Click" style="margin-top: 3px" 
                                Width="82px" />
                        </td>
                    </tr>
                </table>
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
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

