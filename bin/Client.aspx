﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="BioPluginWebApp_Client" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<object id="BioPlugInActX" style="width:0px; height:0px" classid="CLSID:05E8280C-D45A-494F-AE42-840A40444AFF">
	    <param name="_Version" value="65536" />
	    <param name="_ExtentX" value="2646" />
	    <param name="_ExtentY" value="2646"  />
	    <param name="_StockProps" value="0" />
    </object>
<head id="Head1" runat="server">
    <title>Nampak Workers Biometric Login Page</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        #btnCapture_Single
        {
            height: 30px;
            width: 97px;
        }
        </style>
    
   <script language="javascript" type="text/javascript" for="BioPlugInActX" event="OnCapture()">
        //	get template data
        document.getElementById("hdnBiodata").value = BioPlugInActX.GetSafeFingerData();//BioPlugInActX.GetSafeLeftCaptureTemplate();
		document.getElementById("btnIdentify").disabled=false;
	</script>
	
	<script type="text/javascript" language="javascript">

	    function StartCapture() 
        {
            // capture single hand/finger for template data.
            BioPlugInActX.CaptureFingerData();
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
                <img src="Images/head.jpg" style="width: 811px; height: 120px" /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                NAMPAK CANTEEN BIOMETRIC SYSTEMS<br />
                <br />
                
                <br />
                
                <br />
                <br />
                <br />
                <img src="Images/16.jpg" style="width: 300px; height: 120px" /><br />
                <br />
                <br />
                
                <br />
    <table cellpadding="0px" cellspacing="0px" align="center" border="3px">
            <tr>
                <td>
                
                &nbsp;<fieldset 
                        style="border-style: 3; border-width: 3px; width:297px; height: 136px;">
                        <legend>
                        <input type="radio" name="finger" value="dfinger"  onclick="onOpClick(true)" checked="checked" />
                        
                        
                        
                        <asp:Label ID="lblScanFingerSingle" runat="server" Text="finger Print  Verification"></asp:Label>
                    </legend>
                    <br />   
                       
    <table cellpadding="0px" cellspacing="0px" align="center">
            <tr>
                <td>
                
                <table>            
                    <tr>
                        <td class="pagetitle2"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Operation.aspx">Operation</asp:LinkButton></td>
                        <td>:</td>
                        <td><asp:Label ID="lblOperation" runat="server" CssClass="pagetitleValue2" Text=""></asp:Label></td>
                    </tr>
                    <tr><td colspan="3"><hr /></td></tr> 
                </table>
       
                </td>
            </tr>
            <tr>
                <td>
                <table cellpadding="3px" cellspacing="0">
                    
                    <tr>
                        <td width="100px">
                            <input id="Button1" type="button" value="Capture" onclick="StartCapture();" /> 
                        </td>
                        <td width="100px">
                            <asp:Button ID="btnIdentify" runat="server" Text="Identify" Enabled="false" 
                                onclick="btnIdentify_Click"  />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:HiddenField ID="hdnBiodata" runat="server" />
                        </td>
                    </tr>        
                </table>
                </td>
            </tr>
        </table>
                       
                   </fieldset>
                </td>
            </tr>
        </table>
    &nbsp;<br />
                        <asp:Label ID="Label18" runat="server" Width="251px"></asp:Label>
                <input id="btnCapture_Double" type="button"  visible="false"   style="outline: 0; background-color: #FFFFFF; visibility: hidden;"          
                 disabled="disabled" onclick="StartCapture_Double();" /><br />
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
