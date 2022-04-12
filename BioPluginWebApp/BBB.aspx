<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BBB.aspx.cs" Inherits="BioPluginWebApp_BBB" %>

<%@ Register namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">



        .style11
        {
            width: 213px;
        }

        .style10
        {
            width: 234px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 54%;">
            <tr>
                <td class="style11" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal">
                    Start&nbsp; &nbsp;Date</td>
                <td class="style10">
                    End&nbsp; Date</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" 
                        Culture="English (United States)" Skin="WebBlue">
<calendar skin="WebBlue" usecolumnheadersasselectors="False" userowheadersasselectors="False"></calendar>

<datepopupbutton hoverimageurl="" imageurl=""></datepopupbutton>
        </telerik:RadDatePicker>
                </td>
                <td class="style10">
                    <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" 
                        Culture="English (United States)" Skin="WebBlue">
<calendar skin="WebBlue" usecolumnheadersasselectors="False" userowheadersasselectors="False"></calendar>

<datepopupbutton hoverimageurl="" imageurl=""></datepopupbutton>
        </telerik:RadDatePicker>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style9" colspan="3">
                    <asp:Button ID="Button2" runat="server" onclick="Button1_Click1" 
                        Text="Get  Detailed Report" Width="237px" />
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
