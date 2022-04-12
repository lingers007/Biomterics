﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportI.aspx.cs" Inherits="BioPluginWebApp_ReportI" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW REPORT</title>
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
            width: 213px;
        }

        .style10
        {
            width: 234px;
        }

        .style12
        {
            width: 213px;
            height: 23px;
        }
        .style14
        {
            height: 23px;
        }

        .style15
        {
            width: 234px;
            height: 23px;
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
                <table style="width: 92%;">
                    <tr>
                        <td class="style11" 
                            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal">
                            Start&nbsp; &nbsp;Date</td>
                        <td class="style10">
                            End&nbsp; Date</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
          &nbsp;</td>
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
                                <td class="style10">
                                    <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" 
                                        Culture="English (United States)" Skin="WebBlue">
                                        <calendar skin="WebBlue" usecolumnheadersasselectors="False" 
                                            userowheadersasselectors="False">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </telerik:RadDatePicker>
                                </td>
                                <td class="style10">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select Company</asp:ListItem>
                                            <asp:ListItem>AGGREY</asp:ListItem>
                                            <asp:ListItem>CRIMETECH</asp:ListItem>
                                            <asp:ListItem>DELOG</asp:ListItem>
                                            <asp:ListItem>ARPN</asp:ListItem>
                                            <asp:ListItem>RDELOG</asp:ListItem>
                                            <asp:ListItem>TUSKEEGEE</asp:ListItem>
                                            <asp:ListItem>VISITORS</asp:ListItem>
                                        </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="RadDatePicker1" ErrorMessage="Enter Start Date"></asp:RequiredFieldValidator>
                                    </td>
                                <td class="style15">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="RadDatePicker2" ErrorMessage="Enter End Date"></asp:RequiredFieldValidator>
                                    </td>
                                <td class="style15">
            <b style="font-size: normal;"><asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="Please Enter  Company" 
                                            Operator="NotEqual" ValueToCompare="Select Company" Font-Size="Small" 
                                            Width="145px"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </b>
                                    </td>
                                <td class="style14">
                                    </td>
                            </tr>
                            <tr>
                                <td align="center" class="style9" colspan="4">
                                    <asp:Button ID="Button2" runat="server" onclick="Button1_Click1" 
                                        Text="Get  Detailed Report" Width="237px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td>
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


