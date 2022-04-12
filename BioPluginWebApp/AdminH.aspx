<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminH.aspx.cs" Inherits="BioPluginWebApp_AdminH" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Homepage</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        

        .style8
        {
            font-weight: bold;
        }
        

        .style9
        {
            font-weight: bold;
            width: 271px;
        }
        .style10
        {
            width: 271px;
        }
        .style11
        {
            font-weight: bold;
            width: 55px;
        }
        .style12
        {
            width: 55px;
        }
        

        </style>
   
     <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want To Delete The User")) {
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
    <table align="center" border="1px" bordercolor="blue" style="width: 811px">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                          &nbsp; 
                                                          <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="AdminH.aspx">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                        &nbsp;<br />
                        <br />
                        <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table  border='1' 
                    
                    style="width: 605px; font-family: Cambria; font-size: medium; font-weight: normal;">
                    <tr>
                        <td class="style9">
                            <asp:Button ID="Button1" runat="server" Height="46px" onclick="Button1_Click" 
                                Text="Add Users" Width="194px" />
                        </td>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style8">
                            <asp:Button ID="Button2" runat="server" Height="46px" onclick="Button2_Click" 
                                Text="Delete Users" Width="194px" />
                                </td>
                                                
                    
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style40" align="left">
                            &nbsp;&nbsp;</td>
                
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
                        <br />
                        <br />
                <br />
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


