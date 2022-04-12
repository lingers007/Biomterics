<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feeding.aspx.cs" Inherits="BioPluginWebApp_Feeding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Feeding Status</title>
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
            width: 296px;
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
            width: 296px;
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
            width: 296px;
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
            height: 16px;
            width: 196px;
        }
        .style30
        {
            height: 16px;
            width: 176px;
        }
        .style29
        {
            height: 16px;
            width: 94px;
        }
        </style>
      <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want To Change Feeding Status?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
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
                                                         <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx" CausesValidation="False">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                             ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" CausesValidation="False" 
                                                             onclick="LinkButton1_Click">Sign out</asp:LinkButton>
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
            <b style="font-size: normal;">Change Feeding Status</legend>
                            <table style="width: 747px; height: 92px">
                                <tr>
                                    <td class="style23" align="left">
            <b style="font-size: normal;">Enter Employment No<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox6" ErrorMessage="Enter Employment No" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                        </b></td>
                                    <td class="style20">
            <b style="font-size: normal;">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="196px"></asp:TextBox>
                                        </b>
                                    </td>
                                    <td class="style19">
            <b style="font-size: normal;">
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                            Text="Get Feeding Status" Width="141px" CausesValidation="False" 
                                            Height="25px" />
                                        </b>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style23" align="left">
                                        Company</td>
                                    <td class="style20">
            <b style="font-size: normal;">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="196px"></asp:TextBox>
                                        </b>
                                    </td>
                                    <td class="style19">
            <b style="font-size: normal;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBox8" ErrorMessage="Enter Company" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                        </b>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Name</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Enter Name" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style25" align="left">
            <b style="font-size: normal; ">Old Status</b></td>
                                    <td class="style26">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="206px">
                    </asp:DropDownList>
                                    </td>
                                    <td class="style14">
                                        &nbsp;</td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Intending Status</td>
                                    <td class="style21">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="206px">
                        <asp:ListItem>Select a Meal Category</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                        <asp:ListItem>2X</asp:ListItem>
                    </asp:DropDownList>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal;">
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList2" ErrorMessage=" Choose Meal Category" 
                                            Operator="NotEqual" ValueToCompare="Select a Meal Category" Font-Size="Small" 
                                            Width="169px"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </b>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Number of Meal_Ticket</td>
                                    <td class="style21">
            <b style="font-size: normal;">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="196px"></asp:TextBox>
                                        </b>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox7" ErrorMessage="Enter   No  of Meal Ticket" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                        </b>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style26">
                                        <asp:Button ID="Button1" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()" 
                                            Text="Change Feeding Status" Width="154px" Height="25px" />
                                    </td>
                                    <td class="style14">
                                        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                                            Text="Reset" Width="130px" CausesValidation="False" />
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </td>
                                </tr>
                                </table></b>
                    </fieldset><br />
                &nbsp;<asp:Label ID="Label6" runat="server" Width="318px"></asp:Label>
                        <br />
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

