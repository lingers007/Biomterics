<%@ Page Language="C#" AutoEventWireup="true" CodeFile="H1.aspx.cs" Inherits="Nampak_H1" %>

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
        .style10
        {
            height: 22px;
            width: 341px;
        }
        .style12
        {
            width: 341px;
        }
        .style13
        {
            width: 180px;
        }
        .style14
        {
            width: 234px;
        }
        </style>
    <script type="text/javascript">

    function openPopup() {

            window.open("Reciept.aspx", "_blank", "WIDTH=350,HEIGHT=400,scrollbars=no, menubar=no,resizable=no,directories=no,location=no");  
              
                }
//<![CDATA[    
//
</script>
    <meta http-equiv="refresh" content="30" />
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
                                                              PostBackUrl="Lgin.aspx" onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                ALERT<br />
                <table style="border-style: none; border-color: inherit; border-width: 1px; width: 62%; " 
                    border="1px">
                    <tr>
                        <td align="left" class="style14">
                            Pending Ticket&nbsp; Addition</td>
                                <td align="left" class="style13">
                                    &nbsp;<asp:Label ID="Label9" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14">
                                    Pending Ticket&nbsp; Subtraction</td>
                                <td align="left" class="style13">
                                    &nbsp;<asp:Label ID="Label10" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style14">
                                    Pending Feeding Status</td>
                                <td align="left" class="style13">
                                    &nbsp;<asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style14">
                                    Pending Staff Registration</td>
                                <td align="left" class="style13">
                                    &nbsp;<asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                <br />
                <br />
                        <fieldset>
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: xx-large;">Functionalities</b></legend>
                            <table style="width: 691px; height: 92px">
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="RegisterButtonk" runat="server" Font-Size="Small" 
                                            OnClick="RegisterButton_click" Text="Add Monthly Meal Ticket" 
                                            Width="218px" Height="40px" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button11" runat="server" Height="41px" onclick="Button11_Click" 
                                            Text="Subtract Monthly Meal Ticket" Width="214px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Extra" runat="server" onclick="Extra_Click" 
                                            Text="Add Extra Meal Ticket" Width="218px" Height="40px" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button2" runat="server" Text="Subtract Meal Ticket" 
                                            Width="218px" onclick="Button2_Click" Height="40px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button17" runat="server" Height="38px" onclick="Button17_Click" 
                                            Text="Update Name" Width="228px" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button5" runat="server" Height="40px" 
                                            Text="Changing Feeding Status" Width="218px" onclick="Button5_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button6" runat="server" Height="40px" 
                                            Text="View Detailed Report" Width="218px" onclick="Button6_Click" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button9" runat="server" Height="40px" 
                                            Text="View Operations Log" Width="217px" onclick="Button9_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button12" runat="server" Height="40px" onclick="Button12_Click" 
                                            Text="View Individual Report" Width="218px" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button13" runat="server" Height="40px" onclick="Button13_Click" 
                                            Text="View Individual Ticket No" Width="218px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button18" runat="server" Height="38px" 
                                            Text="View Individual Operation Report" Width="228px" 
                                            onclick="Button18_Click" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                            Text="View All Report" Width="218px" Height="40px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                            Text="View Individual Company Report" Width="218px" Height="40px" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button14" runat="server" Height="37px" Text="Add New Staff" 
                                            Width="217px" onclick="Button14_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button15" runat="server" Height="37px" Text="Delete New Staff" 
                                            Width="217px" onclick="Button15_Click" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button16" runat="server" Height="40px" onclick="Button16_Click" 
                                            Text="Approve Staff Registration" Width="221px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        <asp:Button ID="Button7" runat="server" Height="40px" 
                                            Text="Approve Pending Addition Ticket" Width="217px" 
                                            onclick="Button7_Click" />
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Button ID="Button8" runat="server" Height="40px" 
                                            Text="Approve Pending Subtraction Ticket" Width="229px" 
                                            onclick="Button8_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        <asp:Button ID="FButton" runat="server" Font-Size="Small" 
                                            OnClick="FButton_Click" Text="Approve Feeding Status" Width="218px" 
                                            Height="40px" />
                                    </td>
                                    <td>
                                        <asp:Button ID="NumberB" runat="server" Font-Size="Small" 
                                            OnClick="NumberB_Click" Text="Get Remaining Ticket" Width="218px" 
                                            Height="40px" />
                                    </td>
                                </tr>
<tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td style="height: 22px">
                                        &nbsp;</td>
                                </tr>
<tr>
                                    <td class="style12">
                                     <asp:Button ID="PasswordButton0" runat="server" Font-Size="Small" 
                                            OnClick="PasswordButton_Click" Text="Change Password" Width="218px" 
                                            Height="40px" />
                                    </td>
                                    <td>
                                         <asp:Button ID="PasswordButton099" runat="server" Font-Size="Small" 
                                            OnClick="PasswordButton1_Click" Text="Add Bulk Ticket" Width="218px" 
                                            Height="40px" />
                                    </td>
                                </tr>
                                </table></fieldset><br />
                &nbsp;<br />
                        <asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Enabled="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Enabled="False"></asp:Label>
                <br />
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

