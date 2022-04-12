<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Identification.aspx.cs" Inherits="BioPluginWebApp.Identification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <title>Identification</title>
    <object id="BioPlugInActX" style="width:0px; height:0px" classid="CLSID:05E8280C-D45A-494F-AE42-840A40444AFF">
	    <param name="_Version" value="65536" />
	    <param name="_ExtentX" value="2646" />
	    <param name="_ExtentY" value="2646"  />
	    <param name="_StockProps" value="0" />
    </object>
<head runat="server">
    <title></title>
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
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                         <asp:LinkButton ID="LinkButton22" runat="server" ForeColor="White" 
                                                              PostBackUrl="Default.aspx" >Home</asp:LinkButton> &nbsp;| &nbsp;
                            &nbsp;
                            <asp:LinkButton 
                                                              ID="LinkButton44" runat="server" ForeColor="White" 
                                                              PostBackUrl="LginF.aspx" onclick="LinkButton44_Click">Sign out</asp:LinkButton>
                        </td>
                            </tr>
                        </table>
                 <br />
                        <br />

    <table cellpadding="0px" cellspacing="0px" align="center">
            <tr>
                <td>
                
                <table>            
                    <tr>
                        <td class="pagetitle"><asp:LinkButton ID="lnlCurrentEngine" runat="server" PostBackUrl="~/Default.aspx">Current Engine</asp:LinkButton></td>
                        <td>:</td>
                        <td><asp:Label ID="lblEngineType" runat="server" Text="" CssClass="pagetitleValue"></asp:Label></td>
                    </tr>
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
                <br />
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
    </div>
   
    </form>
</body>
</html>




