<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubtractMeal.aspx.cs" Inherits="BioPluginWebApp_SubtractMeal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Subtract Monthly Meal Ticket</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        .style11
        {
            height: 30px;
            width: 341px;
        }
        .style12
        {
            width: 341px;
        }
        </style>
        
        <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are You Sure You Want To Subract Meal Ticket from the Monthly Allocation?")) {
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
                        <fieldset>
        <legend style="font-family: Arial; font-size: small; font-weight: normal; font-style: normal">
            <b style="color: #006699; font-size: xx-large;">Subtract Monthly Meal Ticket</b></legend>
                           <br /> <br /> 
                            <table style="width: 584px; height: 92px">
                                <tr>
                                    <td align="left" class="style11">
                                        Number of Meal Ticket To Deduct</td>
                                    <td style="height: 30px">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="Please Enter No of Meal Ticket" 
                                            Font-Size="Medium"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnConfirm" runat="server" OnClick="OnConfirm" 
                                            Text="Subtract from Monthly Ticket" OnClientClick="Confirm()" Width="209px"/>
                                    </td>
                                </tr>
                            </table>
                        </fieldset><br />
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

