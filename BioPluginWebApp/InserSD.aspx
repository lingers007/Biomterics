<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserSD.aspx.cs" Inherits="BioPluginWebApp_InserSD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 215px;
        }
        .style2
        {
            width: 215px;
            height: 23px;
        }
        .style3
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" 
            style="width: 44%; font-family: Calibri; font-size: medium; font-weight: bold;">
            <tr>
                <td class="style1">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="211px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employeee Number</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Department</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Meal Category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="206px">
                        <asp:ListItem>Select a Meal Category</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                        <asp:ListItem>2X</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Company</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="205px">
                        <asp:ListItem>Select a Company</asp:ListItem>
                        <asp:ListItem>ARPN</asp:ListItem>
                        <asp:ListItem>DELOG</asp:ListItem>
                        <asp:ListItem>CRIMETECH</asp:ListItem>
                        <asp:ListItem>TUSKEEGEE</asp:ListItem>
                        <asp:ListItem>AGGREY</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Value</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="32px" Width="206px">
                        <asp:ListItem>Select a Meal Category</asp:ListItem>
                        <asp:ListItem>250</asp:ListItem>
                        <asp:ListItem>300</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Meal Ticket</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register Details" Width="175px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="Label6" runat="server"></asp:Label>
    </form>
</body>
</html>
