<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNew.aspx.cs" Inherits="BioPluginWebApp_AddNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add New Staff's Deatils</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style6
        {
            width: 296px;
        }
        .style7
        {
            width: 261px;
        }
        .style8
        {
            width: 170px;
        }
        </style>
   
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want To Add New Staff?")) {
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
                                                          &nbsp; 
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
                    ADD A NEW STAFF&#39;S DETAILS<br />
                    <table align="center" 
            style="width: 100%; font-family: Calibri; font-size: medium; font-weight: bold;" 
                    border="1">
            <tr>
                <td class="style8">
                    Name</td>
                <td class="style6" align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="211px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Employeee Number</td>
                <td class="style6" align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Employee No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Department</td>
                <td class="style6" align="center">
                    <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Department"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Meal Category</td>
                <td class="style6" align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="209px">
                        <asp:ListItem>Select a Meal Category</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                        <asp:ListItem>2X</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Choose Meal Category" Operator="NotEqual" 
                        ValueToCompare="Select a Meal Category" ControlToValidate="DropDownList1"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Company</td>
                <td class="style6" align="center">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="209px">
                        <asp:ListItem >Select a Company</asp:ListItem>
                        <asp:ListItem Value="1">AGGREY</asp:ListItem>
                        <asp:ListItem Value="2">ARPN</asp:ListItem>
                        <asp:ListItem Value="3">DELOG</asp:ListItem>
                        <asp:ListItem Value="4">TUSKEEGEE</asp:ListItem>
                        <asp:ListItem Value="5">CRIMETECH</asp:ListItem>
                        <asp:ListItem Value="6">RDELOG</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
            <b style="font-size: normal;">
                     <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                            ControlToValidate="DropDownList2" ErrorMessage="Please Select Company" 
                                            Operator="NotEqual" ValueToCompare="Select a Company" Font-Size="Small" 
                                            Width="145px"></asp:CompareValidator>
                                       
                                        
                                        
                                      
                                           
                                           
                                           
                                           
                                           
                                           </b>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Meal Ticket</td>
                <td class="style6" align="center">
                    <asp:TextBox ID="TextBox8" runat="server" Width="208px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Meal Ticket" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td align="center" class="style6">
                
                
                <asp:Button ID="btnConfirm" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()"
                                            Text="Register Details"  Width="209px"/>
                  
                </td>
                <td align="center" class="style7">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                        Width="153px" CausesValidation="False" />
                                </td>
            </tr>
        </table>
    
                        <asp:Label ID="Label6" runat="server"></asp:Label>
    
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


