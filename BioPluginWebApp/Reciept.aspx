<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reciept.aspx.cs" Inherits="Nampak_Reciept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> Meal Reciept </title>
    <style type="text/css">
        .style4
        {
            width: 474px;
        }
        .style6
        {
            width: 302px;
        }
        </style>

 <script type="text/javascript">
window.print();
window.onfocus=function(){ window.close();}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" bordercolor="blue" 
            style="width:40%; height: 100%;">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: medium; color: #006699; font-family: Cambria; font-weight: bold;">
                <img src="Images/16.jpg" style="width: 130px; height: 48px" /><br />
                Meal&nbsp; Ticket<br />
                <br />
                        <table border="4" style="width: 85%;font size:medium;">
                            <tr>
                                <td align="left" class="style6" >
                                    Names</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Names="Agency FB" Width="140px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Dept.</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Names="Agency FB"  Width="108px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Company</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server"  Font-Names="Agency FB" Width="106px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Emp.No</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Names="Agency FB" Width="105px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Tick.No</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Names="Agency FB"  Font-Bold="True" Font-Size="Medium" 
                                        Width="100px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Value</td>
                                <td>
                                    ₦<asp:Label ID="Label8" runat="server"  Font-Names="Agency FB" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="#FF9900" Width="29px"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6" style="font-family: 'Agency FB'">
                                    Date</td>
                                <td>
                                    <asp:Label ID="Label7" Font-Names="Agency FB" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="#FF9900" Width="144px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                
                        <asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
                
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

