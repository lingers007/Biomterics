<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indexz.aspx.cs" Inherits="BioPluginWebApp_indexz" %>

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
        .style5
        {
            width: 174px;
        }
    </style>
    
    
    <script type="text/javascript" language="javascript">
     function StartCapture_Single() {
            // Capture template for single hand/finger for verify
            BioPlugInActX.CaptureVerifySingleShortFingerData();
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
                <br />
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
                   <fieldset style="width: 231px; height: 114px" >
                
        <legend style="font-size: large">
            Employee&nbsp; Login</legend>
               
                
                       <table cellpadding="3px" cellspacing="0" style="width: 318px">
                            <tr>
                                <td class="style5">Employee&nbsp; Id</td>   
                                <td>
                                    <asp:TextBox ID="txtRegID_S" Width="192px" runat="server" Height="23px"></asp:TextBox>
                                </td>     
                            </tr>
                            <tr>
                                <td class="style5" >
                                    <input id="btnCapture_Single" type="button" value="Capture" disabled="disabled" onclick="StartCapture_Single();" /> 
                                </td>
                                <td>
                                    <asp:Button ID="btnVerify_Single" runat="server" Text="Verify" Enabled="false" 
                                        onclick="btnVerify_Single_Click" />
                                </td>
                            </tr>
                        </table>
                 </fieldset>
                        <br />
                        <asp:Label ID="Label18" runat="server" Width="251px"></asp:Label>
                        <br />
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
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>
