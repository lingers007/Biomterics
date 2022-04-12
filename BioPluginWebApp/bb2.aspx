<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bb2.aspx.cs" Inherits="BioPluginWebApp_bb2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<object id="BioPlugInActX" style="width:0px; height:0px" classid="CLSID:05E8280C-D45A-494F-AE42-840A40444AFF">
	    <param name="_Version" value="65536" />
	    <param name="_ExtentX" value="2646" />
	    <param name="_ExtentY" value="2646"  />
	    <param name="_StockProps" value="0" />
    </object>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
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
        document.getElementById("Leftbiodata").value = BioPlugInActX.GetSafeLeftFingerData();
		document.getElementById("Rightbiodata").value = BioPlugInActX.GetSafeRightFingerData();		
		if (document.getElementById("btnCapture_Double").disabled == false) {
                document.getElementById("btnVerify_Double").disabled = false;
            }
        else {
            document.getElementById("btnVerify_Single").disabled = false;
        }	
	</script>
	
	<script type="text/javascript" language="javascript">	   
	
        function StartCapture_Double() {
            // Capture template for double hand/finger for verify
            BioPlugInActX.CaptureVerifyShortFingerData();
        }

        function StartCapture_Single() {
            // Capture template for single hand/finger for verify
            BioPlugInActX.CaptureVerifySingleShortFingerData();
        }
        function onOpClick(bValue) {
            document.getElementById("btnCapture_Double").disabled = !bValue;
            document.getElementById("btnCapture_Single").disabled = bValue;
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
                <table>            
                    <tr>
                        <td class="pagetitle2"><asp:LinkButton ID="LinkButton2" runat="server" 
                                PostBackUrl="~/frmOperations.aspx">Operation</asp:LinkButton></td>
                        <td>:</td>
                        <td><asp:Label ID="lblOperation" runat="server" CssClass="pagetitleValue2" Text=""></asp:Label></td>
                    </tr>
                    <tr><td colspan="3"><hr /></td></tr> 
                </table>
                &nbsp;<fieldset 
                        style="border-style: 3; border-width: 3px; width:297px; height: 136px;">
                        <legend>
                        <input type="radio" name="finger" value="dfinger"  onclick="onOpClick(true)" checked="checked" />
                        
                        
                        
                        <asp:Label ID="lblScanFingerSingle" runat="server" Text="Thumb finger"></asp:Label>
                    </legend>
                    <br />   
                       <table cellpadding="3px" cellspacing="0">
                            <tr>
                                <td width="120px">Employee No</td>   
                                <td>
                                    <asp:TextBox ID="txtRegID_S" Width="150px" runat="server"></asp:TextBox>
                                </td>     
                            </tr>
                            <tr><td colspan="2"></td></td></tr>
                            <tr>
                                <td >
                                    <input id="btnCapture_Single" type="button" value="Capture" onclick="StartCapture_Single();" /> 
                                </td>
                                <td>
                                    <asp:Button ID="btnVerify_Single" runat="server" Text="Verify" Enabled="false" 
                                        onclick="btnVerify_Single_Click" Height="30px" Width="98px" />
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
                        <asp:HiddenField ID="Leftbiodata" runat="server" />
                                    <asp:HiddenField ID="Rightbiodata" runat="server" />
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
