<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="BioPluginWebApp_Reset" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reset Meal icket</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style11
        {
            height: 30px;
            width: 216px;
        }
        .style12
        {
            width: 216px;
        }
        </style>
    <script type="text/javascript">

    function openPopup() {

            window.open("Reciept.aspx", "_blank", "WIDTH=350,HEIGHT=400,scrollbars=no, menubar=no,resizable=no,directories=no,location=no");  
              
                }
//<![CDATA[    
//
</script>
    
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
                                                         <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx">Home</asp:LinkButton>  &nbsp;| <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Login.aspx">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                <br />
                <br />
                        <fieldset>
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: xx-large;">Reset All&nbsp; Meal Ticket</b></legend>
                           <br /> <br /> <br /> <table style="width: 431px; height: 92px">
                                <tr>
                                    <td class="style11" align="left">
                                        Reset All Meal Ticket</td>
                                    <td style="height: 30px">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                            Text="Reset Meal Ticket" Width="218px" Height="40px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                </table></fieldset><br />
                &nbsp;<br />
                        <br />
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
                <br />
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

