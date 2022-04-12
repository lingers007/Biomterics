<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="BioPluginWebApp_Password" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Password</title>
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
            width: 76%;
        }
        .style8
        {
            width: 202px;
        }

        .style9
        {
            width: 134px;
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
                                                          &nbsp; 
                                                          <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False">Sign out</asp:LinkButton>
                                                          &nbsp;</td>
                            </tr>
                        </table>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                    <br />
                <br />
                    CHANGE PASSWORD<br />
                <table class="style7" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal" 
                    border="1">
                    <tr>
                        <td class="style8" 
                            style="font-family: Cambria; font-size: medium; font-weight: bold;">
                            Enter New Password</td>
                                <td class="style9">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8" 
                                    style="font-family: Cambria; font-size: medium; font-weight: bold;">
                                    Enter your Password again</td>
                                <td class="style9">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                                        ErrorMessage="The password did not match" Font-Bold="True" 
                                        Font-Size="Small"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                        Text="Change Password" Width="147px" />
                                </td>
                                <td class="style9">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
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


