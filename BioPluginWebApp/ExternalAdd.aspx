<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExternalAdd.aspx.cs" Inherits="BioPluginWebApp_ExternalAdd" %>

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
            width: 508px;
        }
        .style7
        {
            width: 173px;
        }
        .style8
        {
            width: 340px;
        }
        .style9
        {
            width: 128px;
        }
    </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script >
      $(function () {
          $("#TextBox2").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});

      });
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
                                                          &nbsp;  <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx">Sign out</asp:LinkButton>
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
                ADD EXTERNAL TICKET<br />
                        <table border="2" style="width: 100%;">
                            <tr>
                                <td align="left" class="style6">
                                    Names</td>
                                <td align="center">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                                        Height="36px" Width="99%">
                                        <asp:ListItem>SELECT NAME</asp:ListItem>
                                        <asp:ListItem Value="600">ARPNBULK</asp:ListItem>
                                         <asp:ListItem Value="600">AGGREY</asp:ListItem>
                                        <asp:ListItem Value="400">DELOGBULK</asp:ListItem>
                                         <asp:ListItem Value="400">RDELOG</asp:ListItem>
                                        <asp:ListItem Value="400">TUSKEEGEEBULK</asp:ListItem>
                                        <asp:ListItem Value="400">CRIMETECHBULK</asp:ListItem>
                                        <asp:ListItem Value="600">VISITOR</asp:ListItem>
                                       <asp:ListItem Value="400">MOPOL</asp:ListItem>
                                        
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    Company</td>
                                <td align="center">
                                    <asp:DropDownList ID="DropDownList3" runat="server" Font-Bold="True" 
                                        Height="37px" Width="99%">
                                        <asp:ListItem>SELECT A COMPANY</asp:ListItem>
                                        <asp:ListItem Value="ARPNBULK">ARPNBULK</asp:ListItem>
                                        <asp:ListItem Value="AGGREY">AGGREY</asp:ListItem>
                                        <asp:ListItem Value="DELOGBULK">DELOGBULK</asp:ListItem>

                                           <asp:ListItem Value="RDELOG">RDELOG</asp:ListItem>

                                        <asp:ListItem Value="CRIMETECHBULK">CRIMETECHBULK</asp:ListItem>
                                        <asp:ListItem Value="TUSKEEGEEBULK">TUSKEEGEEBULK</asp:ListItem>
                                  
                                        <asp:ListItem Value="VISITOR">VISITOR</asp:ListItem>
                                       <asp:ListItem Value="MOPOL">MOPOL</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    No of Ticket </td>
                                <td align="center">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="99%" Height="37px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    Date</td>
                                <td align="center">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="99%" Height="37px"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                <br />
                        <table style="width: 100%;" align="right">
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style8">
                                    <asp:Button ID="btnpopup" runat="server" BackColor="#0099FF" Font-Bold="True" 
                                        ForeColor="White" Height="39px" onclick="btnpopup_Click" 
                                         Text="SUBMIT " Width="135px" />
                                        
                                       
                                        
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style8">
                        <asp:Label ID="Label8" runat="server" Enabled="False"></asp:Label>
                                        
                                       
                                        
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
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
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>