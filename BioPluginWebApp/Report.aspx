<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="BioPluginWebApp_Report" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW ALL REPORT</title>
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
            width: 488px;
        }

        .style12
        {
            width: 488px;
            height: 20px;
        }
        .style15
        {
            width: 351px;
        }
        .style16
        {
            width: 351px;
            height: 20px;
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
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                              onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadFormDecorator 
                    ID="RadFormDecorator1" Runat="server" DecoratedControls="All" Skin="Web20" />
                <br />
                <br />
                <br />
                <table style="width: 92%;" align="center">
                    <tr>
                        <td class="style11" 
                            
                            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant: normal">
                            Start&nbsp; &nbsp;Date</td>
                        <td class="style15">
                            End&nbsp; Date</td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" 
                                        Culture="English (United States)" Skin="WebBlue">
                                        <calendar skin="WebBlue" usecolumnheadersasselectors="False" 
                                            userowheadersasselectors="False">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </telerik:RadDatePicker>
                                </td>
                                <td class="style15">
                                    <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" 
                                        Culture="English (United States)" Skin="WebBlue">
                                        <calendar skin="WebBlue" usecolumnheadersasselectors="False" 
                                            userowheadersasselectors="False">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </telerik:RadDatePicker>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="RadDatePicker1" ErrorMessage="Enter Start Date"></asp:RequiredFieldValidator>
                                    </td>
                                <td class="style16">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="RadDatePicker2" ErrorMessage="Enter End Date"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td align="center" class="style9" colspan="2">
                                    <asp:Button ID="Button2" runat="server" onclick="Button1_Click1" 
                                        Text="Get All Report" Width="237px" style="margin-bottom: 0px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
                                <td class="style15">
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
                    <asp:Label ID="Label6" runat="server"></asp:Label>
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


