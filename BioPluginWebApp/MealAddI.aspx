<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MealAddI.aspx.cs" Inherits="BioPluginWebApp_MealAddI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add Individual Meal Ticket</title>
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
        .style20
        {
            height: 16px;
            width: 170px;
        }
        .style21
        {
            height: 30px;
            width: 170px;
        }
        .style23
        {
            height: 16px;
            width: 204px;
        }
        .style24
        {
            height: 30px;
            width: 204px;
        }
        .style25
        {
            width: 204px;
        }
        .style26
        {
            width: 170px;
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
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                <img src="Images/head.jpg" style="width: 811px; height: 120px" /><br />
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                         <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Login.aspx">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                <br />
                <br />
                        <fieldset style="width: 771px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: xx-large;">Add Individual Meal Ticket</b></legend>
                           <br /> <br /> <br /> <table style="width: 720px; height: 92px">
                                <tr>
                                    <td class="style23" align="left">
                                        Number of Meal Ticket</td>
                                    <td class="style20">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select Company</asp:ListItem>
                                            <asp:ListItem>AGGREY</asp:ListItem>
                                            <asp:ListItem>CRIMETECH</asp:ListItem>
                                            <asp:ListItem>DELOG</asp:ListItem>
                                            <asp:ListItem>ARPN</asp:ListItem>
                                            <asp:ListItem>NIG PO</asp:ListItem>
                                            <asp:ListItem>TUSKEEGEE</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="Please Enter  Company" 
                                            Operator="NotEqual" ValueToCompare="Select Company" Font-Size="Small" 
                                            Width="145px"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </td>
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Enter Employment ID</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        &nbsp;</td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Enter Number of Ticket</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        &nbsp;</td>                                      
                                </tr>
                                <tr>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style26">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                            Text="Button" Width="194px" />
                                    </td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                </table></fieldset><br />
                &nbsp;<br />
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
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

