<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="BioPluginWebApp_Admin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add Users</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style23
        {
            height: 16px;
            width: 298px;
            font-weight: bold;
        }
        .style20
        {
            height: 16px;
            width: 170px;
        }
        .style19
        {
            height: 16px;
            width: 141px;
        }
        .style24
        {
            height: 30px;
            width: 298px;
        }
        .style21
        {
            height: 30px;
            width: 170px;
        }
        .style13
        {
            height: 30px;
            width: 141px;
        }
        .style25
        {
            width: 298px;
        }
        .style26
        {
            width: 170px;
        }
        .style14
        {
            width: 141px;
        }
        .style27
        {
            height: 30px;
            width: 298px;
            font-weight: bold;
        }
        </style>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" bordercolor="blue" style="width: 811px">
        <tr>
            <td align="center" class="style4" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                <img src="Images/head.jpg" style="width: 811px; height: 120px" /><br />
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #006699" class="style5" align="right">
                                                          &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="AdminH.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                             ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                              onclick="LinkButton1_Click"  >
                                                             Sign out</asp:LinkButton>
                                                          &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                    <br />
                    <br />
                    <br />
                
                        <fieldset style="width: 761px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="font-size: normal;">ADD USER </legend>
                            <table style="width: 737px; height: 92px">
                                <tr>
                                    <td class="style23" align="left">
                                        Role</td>
                                    <td class="style20">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select Role</asp:ListItem>
                                            <asp:ListItem>ADMIN</asp:ListItem>
                                           <asp:ListItem>BIOMETRIC</asp:ListItem>
                                            <asp:ListItem>USER</asp:ListItem>
                                            <asp:ListItem>SUPERUSER</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="Choose Role" 
                                            Operator="NotEqual" ValueToCompare="Select Role" Font-Size="Small" 
                                            Width="145px" Font-Bold="True"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </td>
                                </tr>
                                <tr>
                                    <td class="style27" align="left">
                                        Username</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Enter Username" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        <b style="font-size: normal; ">Password</b></td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox3" ErrorMessage="Enter Password" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                        </b>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style26">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                            Text="Add Users" Width="154px" />
                                    </td>
                                    <td class="style14">
                                        &nbsp;</td>
                                </tr>
                                </table></b>
                    </fieldset><br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
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

