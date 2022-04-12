<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Operation.aspx.cs" Inherits="BioPluginWebApp.Operation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Operations</title>
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
                        <br />
                        <br />
                        <br />
             
                       <table cellpadding="0px" cellspacing="0px" align="center">
            <tr>
                <td>                
                    <span class="pagetitle"><asp:LinkButton ID="lnlCurrentEngine" runat="server" PostBackUrl="~/Default.aspx">Current Engine: </asp:LinkButton></span>
                    <asp:Label ID="lblEngineType" runat="server" Text="" CssClass="pagetitleValue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>                
                <div id="mnu">
                <table cellpadding="3px" cellspacing="0" width="400px">
                    <tr><td><hr /></td></tr>     
                    <tr><td><a href="Enrollment.aspx">Enrollment</a></td></tr>        
                     
                    <tr><td><a href="Verification.aspx">Verification</a></td></tr>   
                    <tr><td><a href="Update.aspx">Update</a></td></tr>  
 <tr><td><a href="http://10.138.3.22/BioPlugin/bioplugin.asmx?op=DeleteID"  target="_blank">Delete Fingerprint</a></td></tr>    
                </table>
                </div>
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
                <br />
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

