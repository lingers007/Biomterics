<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IO.aspx.cs" Inherits="BioPluginWebApp_IO" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW INDIVIDUAL REPORT</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style13
        {
            height: 30px;
            width: 141px;
        }
        .style14
        {
            width: 141px;
        }
        .style19
        {
            height: 16px;
            width: 141px;
        }
        .style21
        {
            height: 30px;
            width: 170px;
        }
        .style24
        {
            height: 30px;
            width: 296px;
        }
        .style25
        {
            width: 296px;
        }
        .style26
        {
            width: 170px;
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
        
.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue
{
	vertical-align:middle;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadPicker_WebBlue .rcInputCell
{
	padding:0 4px 0 0;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px arial,sans-serif;
}

.RadInput_Default
{
	vertical-align:middle;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
}

.RadPicker_WebBlue .rcCalPopup
{
	background-position:0 -200px;
}

.RadPicker_WebBlue .rcCalPopup
{
	width:16px;
	height:16px;
	overflow:hidden;
	background-image:url('mvwres://Telerik.Web.UI, Version=2008.3.1105.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.WebBlue.Calendar.sprite.gif');
	background-repeat:no-repeat;
	text-indent:-4444px;
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
            <b style="font-size: normal;">View Individual&nbsp; Report</legend>
                            <br />
                            <table style="width: 797px; height: 92px">
                                <tr>
                                    <td class="style24" align="left">
                                        Enter Employment No</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Enter Employment No" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        <b style="font-size: normal; ">Choose Start Date</b></td>
                                    <td class="style21">
                                    <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" 
                                        Culture="English (United States)" Skin="WebBlue">
                                        <calendar skin="WebBlue" usecolumnheadersasselectors="False" 
                                            userowheadersasselectors="False">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </telerik:RadDatePicker>
                                    </td>
                                    <td class="style13">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="RadDatePicker1" ErrorMessage="Enter Start Date"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        <b style="font-size: normal;"><b style="font-size: normal; ">Choose End&nbsp; 
                                        Date</b></b></td>
                                    <td class="style21">
                                    <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" 
                                        Culture="English (United States)" Skin="WebBlue">
                                        <calendar skin="WebBlue" usecolumnheadersasselectors="False" 
                                            userowheadersasselectors="False">
                                        </calendar>
                                        <datepopupbutton hoverimageurl="" imageurl="" />
                                    </telerik:RadDatePicker>
                                    </td>
                                    <td class="style13">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="RadDatePicker2" ErrorMessage="Enter End Date"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Choose Operation</td>
                                    <td class="style21">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select Operation</asp:ListItem>
                                            <asp:ListItem Value="Addition">ADDED TICKET</asp:ListItem>
                                            <asp:ListItem Value="Subtraction">SUBTRACTED TICKET</asp:ListItem>
                                            <asp:ListItem>MEAL CATEGORY CHANGE</asp:ListItem>
                                            <asp:ListItem>STAFF REGISTRATION</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal;">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="Please Enter Operation" 
                                            Operator="NotEqual" ValueToCompare="Select Operation" Font-Size="Small" 
                                            Width="145px"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </b>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style26">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                            Text="Get Details" Width="154px" />
                                    </td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                </table></b>
                    </fieldset><br />
                <br />
                
                        <asp:Label ID="Label6" runat="server" Width="425px" Height="21px"></asp:Label>
                        <br />
                
                        <asp:Label ID="Label8" runat="server" Width="425px" Height="21px"></asp:Label>
                    <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<telerik:RadFormDecorator 
                    ID="RadFormDecorator1" Runat="server" DecoratedControls="All" Skin="Web20" />
                        <br />
                        <fieldset style="width: 771px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: normal;">Get Names</b></legend>
                            <table style="width: 738px; height: 29px; margin-bottom: 0px;">
                                <tr>
                                    <td class="style27" align="left">
                                        Enter Name</td>
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
                                </table></fieldset><br />
                
                        <asp:Label ID="Label7" runat="server" Width="663px" Height="21px"></asp:Label>
                
                    <br />
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
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

