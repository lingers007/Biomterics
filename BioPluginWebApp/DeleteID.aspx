<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteID.aspx.cs" Inherits="DeleteID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <OBJECT ID="BioPlugInActX" WIDTH=0 HEIGHT=0 CLASSID="CLSID:05E8280C-D45A-494F-AE42-840A40444AFF">
	<param name="_Version" value="65536">
	<param name="_ExtentX" value="2646">
	<param name="_ExtentY" value="2646">
	<param name="_StockProps" value="0">
</OBJECT>

 


 
          <h1>Delete Fingerprint</h1>

          <table>
            <tr><td>Registration ID<td>
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                <br />
                <asp:TextBox ID="txtRegID_S" Width="150px" runat="server"></asp:TextBox><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                <table>            
                    <tr>
                        <td class="pagetitle"><asp:LinkButton ID="lnlCurrentEngine" runat="server" 
                                PostBackUrl="~/Default.aspx" onclick="lnlCurrentEngine_Click">Current Engine</asp:LinkButton></td>
                        <td>:</td>
                        <td><asp:Label ID="lblEngineType" runat="server" Text="" CssClass="pagetitleValue"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="pagetitle2"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmOperations.aspx">Operation</asp:LinkButton></td>
                        <td>:</td>
                        <td><asp:Label ID="lblOperation" runat="server" CssClass="pagetitleValue2" Text=""></asp:Label></td>
                    </tr>
                    <tr><td colspan="3"><hr /></td></tr> 
                </table>
                
                    <br />
                    <br />
                    <br />
                    </td>

            </table>

                &nbsp;</td></tr></form>
</body>
</html>
