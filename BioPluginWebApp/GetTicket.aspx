<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetTicket.aspx.cs" Inherits="BioPluginWebApp_GetTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Subtract Individual Meal Ticket</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style19
        {
            height: 16px;
            width: 141px;
        }
        .style27
        {
            height: 16px;
            width: 196px;
        }
        .style29
        {
            height: 16px;
            width: 94px;
        }
        .style30
        {
            height: 16px;
            width: 176px;
        }
        </style>
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want to Subtract Ticket?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" bordercolor="blue" style="width: 811px;Height: 100% ;">
        <tr>
            <td align="left" class="style4" 
                
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
             
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                         <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                             ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                             onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                        <fieldset style="width: 771px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            Get Detaails of&nbsp; <b style="font-size: normal;">Meal Ticket </legend>
                            <br />
                            <br />
                        <fieldset style="width: 771px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: normal;">Get Names</b></legend>
                            <table style="width: 738px; height: 29px; margin-bottom: 0px;">
                                <tr>
                                    <td class="style27" align="left">
                                        Enter No of Ticket</td>
                                    <td class="style30" align="left">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="style29">
                                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                            Text="Search" Width="130px" CausesValidation="False" />
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                            Text="Reset" Width="130px" CausesValidation="False" />
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </td>
                                </tr>
                                </table></fieldset></b></fieldset><br />
                <br />
                
                        <br />
                
                        <asp:Label ID="Label7" runat="server" Width="663px" Height="21px"></asp:Label>
                
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

