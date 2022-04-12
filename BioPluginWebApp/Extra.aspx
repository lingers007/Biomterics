﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Extra.aspx.cs" Inherits="BioPluginWebApp_Extra" %>

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
            width: 296px;
        }
        .style24
        {
            height: 30px;
            width: 296px;
        }
        .style25
        {
            width: 296px;
        }
        .style26
        {
            width: 170px;
        }
        .style27
        {
            height: 16px;
            width: 196px;
        }
        .style29
        {
            height: 16px;
            width: 94px;
        }
        .style30
        {
            height: 16px;
            width: 176px;
        }
        </style>
   <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want To Add Extra Ticket?")) {
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
            <td align="left" class="style4" 
                
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
             
                
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
                
                        <fieldset style="width: 771px">
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="font-size: normal;">Add Individual Meal Ticket </legend>
                            <table style="width: 776px; height: 92px">
                                <tr>
                                    <td class="style23" align="left">
                                        Company</td>
                                    <td class="style20">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select Company</asp:ListItem>
                                            <asp:ListItem>AGGREY</asp:ListItem>
                                            <asp:ListItem>CRIMETECH</asp:ListItem>
                                            <asp:ListItem>DELOG</asp:ListItem>
                                            <asp:ListItem>ARPN</asp:ListItem>
                                           <asp:ListItem>TUSKEEGEE</asp:ListItem>
                                            <asp:ListItem>RDELOG</asp:ListItem>
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
                                        Enter Employment No</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Enter Employment No" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
            <b style="font-size: normal; ">Number of Meal Ticket</b></td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="187px"></asp:TextBox>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal; ">
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                            Text="Get Meal Ticket" Width="141px" CausesValidation="False" />
                                        </b></td>                                      
                                </tr>
                                <tr>
                                    <td class="style24" align="left">
                                        Enter Number of Ticket To Add</td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="187px" 
                                            ></asp:TextBox>
                                    </td>
                                    <td class="style13">
            <b style="font-size: normal; ">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox4" ErrorMessage="Enter No of Ticket To Deduct" 
                                            Font-Size="Small"></asp:RequiredFieldValidator>
                                        </b>
                                    </td>                                      
                                </tr>
                                <tr>
                                    <td class="style25">
                                        Reason For Adition</td>
                                    <td class="style26">
            <b style="font-size: normal;">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="191px">
                                            <asp:ListItem>Select A Reason</asp:ListItem>
                                           
                                            <asp:ListItem>AWOL</asp:ListItem>
                                            <asp:ListItem>EXTRA HOUR</asp:ListItem>
                                            <asp:ListItem>LEAVE</asp:ListItem>
                                            <asp:ListItem>PH</asp:ListItem>
                                           <asp:ListItem>SICK</asp:ListItem>
                                            <asp:ListItem>OTHERS</asp:ListItem>
                                        </asp:DropDownList>
                                        </b>
                                            
                                            
                                    </td>
                                    <td class="style14">
            <b style="font-size: normal;">
            
            
                                       <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                            ControlToValidate="DropDownList2" ErrorMessage="Select A Reason" 
                                            Operator="NotEqual" ValueToCompare="Select A Reason" Font-Size="Small" 
                                            Width="145px"></asp:CompareValidator>
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style26">
                                        <asp:Button ID="Button1" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()"
                                            Text="Add Meal Ticket" Width="154px" />
                                            
                                            
                                    </td>
                                    <td class="style14">
            <b style="font-size: normal; ">
                                        <asp:Button ID="Button5" runat="server" 
                                            Text="Reset" Width="154px" onclick="Button5_Click" 
                                            CausesValidation="False" />
                                        </b>
                                    </td>
                                </tr>
                                </table></b>
                    </fieldset><br />
                <br />
                
                        <asp:Label ID="Label6" runat="server" Width="425px" Height="21px"></asp:Label>
                        <br />
                
                        <asp:Label ID="Label8" runat="server" Width="425px" Height="21px"></asp:Label>
                
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
                        <img src="Images/Leg.jpg" style="width: 811px; height: 120px" /><br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>

