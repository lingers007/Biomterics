<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Nampak_Home" %>

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
        .style6
        {
            width: 217px;
        }
        .style7
        {
            width: 173px;
        }
        .style8
        {
            width: 168px;
        }
        .style9
        {
            width: 128px;
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
                                                              PostBackUrl="Client.aspx" onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                <br />
                <br />
                        <br />
                        <br />
                        <br />
                <br />
                <br />
                        <table border="2" style="width: 85%;">
                            <tr>
                                <td align="left" class="style6">
                                    Names</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Width="318px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    Employment Number</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Width="229px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    Department</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Width="229px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    Company</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Width="229px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    No of Ticket Remaining</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="#FF9900" Width="229px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                <br />
                        <table style="width: 100%;" align="right">
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style7">
                                    Print Meal Ticket</td>
                                <td class="style8">
                                    <asp:Button ID="btnpopup" runat="server" BackColor="#0099FF" Font-Bold="True" 
                                        ForeColor="White" Height="39px" onclick="btnpopup_Click" 
                                         Text="Print Now" Width="135px" />
                                        
                                       
                                        
                                </td>
                                <td>
                        <asp:Label ID="Label8" runat="server" Enabled="False"></asp:Label>
                                        
                                       
                                        
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                &nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Enabled="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
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

