<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="BioPluginWebApp_Exam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="CompareValidator" 
            Operator="NotEqual" ValueToCompare="Trial"></asp:CompareValidator>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="128px" 
        Width="321px">
        <asp:ListItem>Trial</asp:ListItem>
        <asp:ListItem>Na so</asp:ListItem>
    </asp:DropDownList>
    </form>
</body>
</html>
