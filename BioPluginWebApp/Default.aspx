<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BioPluginWebApp._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<head id="Head1" runat="server">
    <title>Homepage</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        </style>
   
    
</head>

<html xmlns="http://www.w3.org/1999/xhtml"><body><form id="form1" runat="server">
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
                                                           &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="LginF.aspx" onclick="LinkButton1_Click" Font-Bold="True">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                        <br />
               <table cellpadding="3px" cellspacing="0" align="center">
            <tr><td class="pagetitle"><b>NAMPAK CARTONS FINGERPRINT ENROLLMENT ENGINE</b></td></tr>   
            <tr><td><hr /></td></tr>     
            <tr><td align="center"><asp:LinkButton ID="lnkFingerPrint" runat="server" 
                    onclick="lnkFingerPrint_Click" >FINGER PRINT</asp:LinkButton></td></tr>        
           
        </table>
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



