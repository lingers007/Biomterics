<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogA3.aspx.cs" Inherits="BioPluginWebApp_LogA3" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW ALL REPORT</title>
    <style type="text/css">
        .style4
        {
            width: 709px;
        }
        .style5
        {
        }
        

        .style8
        {
            font-weight: bold;
        }
        

        .style9
        {
            font-weight: bold;
            width: 1302px;
        }
                

        .style15
        {
            height: 33px;
            width: 561px;
        }
        .style16
        {
            height: 33px;
            width: 601px;
        }
        
        .style19
        {
            width: 169px;
            font-weight: bold;
        }
        .style20
        {
            width: 147px;
            font-weight: bold;
        }
                
        </style>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px" style="width: 1111px">
        <tr>
            <td align="center" class="style4" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                <table style="width: 100%; height: 7px; color: #FFFFFF; background-color: #000099;" bgcolor="#0066CC">
                    <tr>
                        <td style="background-color: #336699" class="style5" align="right">&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White"
                        PostBackUrl="H1.aspx">Home</asp:LinkButton>
                            &nbsp;| &nbsp;<asp:LinkButton
                                ID="LinkButton1" runat="server" ForeColor="White"
                                PostBackUrl="Lgin.aspx">Sign out</asp:LinkButton>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                REPORT FOR&nbsp;&nbsp;ALL&nbsp;
        MEAL&nbsp; TICKET&nbsp; CATEGORY FROM&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1121" runat="server"></asp:Label>
                &nbsp;&nbsp; TO&nbsp;&nbsp;
        <asp:Label ID="Label1131" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <table id='tblDetails' border='1' style="width: 1350px; font-family: Cambria; font-size: 15px; font-size: small; font-weight: normal;">
                    <tr>
                        <td class="style8" style="font-size: x-small">S/N</td>
                        <td class="style9" style="font-size: x-small">QUERYDATE</td>
                        <td class="style19" style="font-size: x-small">ARPN</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td style="font-size: x-small">
                            <b>ARPN BULK</td>
                        <td style="font-size: x-small" class="style21"><strong>ARPNBULKCOST</strong>
                            </b>
                        </td>
                        <td class="style19" style="font-size: x-small">AGY</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
 
                        <td class="style19" style="font-size: x-small">CRMT</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>

                        <td class="style19" style="font-size: x-small">CRMTBULK</td>
                        <td class="style22" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td class="style19" style="font-size: x-small">DLG</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td style="font-size: x-small"><b>DELOG BULK
                        </b>
                        </td>
                        <td style="font-size: x-small"><strong>DELOGBULKCOS</strong>T
                        </td>
                        <td class="style19" style="font-size: x-small">RDLG</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td class="style19" style="font-size: x-small">TUSKG</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td class="style20" style="font-size: x-small">TUSKG BULK</td>
                        <td style="font-size: x-small"><b>TUSKGBULKCOST
                        </b>
                        </td>
                        <td class="style19" style="font-size: x-small">VIST</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                        <td class="style19" style="font-size: x-small">MOPOL</td>
                        <td class="style20" style="font-size: x-small"><b>COST&nbsp;</b> </td>
                    </tr>
                    <%
                        SqlCommand scz = new SqlCommand("Total_MealLog", dbConn);
                        scz.CommandType = CommandType.StoredProcedure;
                        scz.Parameters.AddWithValue("@Start", Session["D"]);
                        scz.Parameters.AddWithValue("@End", Session["D1"]);
                        dbConn.Open();
                        SqlDataReader sdz = scz.ExecuteReader();
                        while (sdz.Read())
                        {
                            if (!string.IsNullOrEmpty(sdz["QUERYDATE"].ToString()))
                            {
                                Response.Write(@"<tr>" +
                                    "<td class='style2'>" + sdz["S/N"].ToString() + "</td>" +
                                    "<td class='style2'>" + sdz["QUERYDATE"].ToString() + "</td>" +
                                    "<td class='style5'>" + sdz["ARPN"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["ARPNCOST"].ToString() + "</td> " +
                                        "<td class='style5'>" + sdz["ARPNBULK"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["ARPNBULKCOST"].ToString() + "</td> " +
                                    "<td class='style5'>" + sdz["AGGREY"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["AGGREYCOST"].ToString() + "</td>" +
                                    "<td class='style5'>" + sdz["CRIMETECH"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["CRIMETECHCOST"].ToString() + "</td>" +

                                      "<td class='style5'>" + sdz["CRIMETECHBULK"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["CRIMETECHBULKCOST"].ToString() + "</td>" +






                                    "<td class='style5'>" + sdz["DELOG"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["DELOGCOST"].ToString() + "</td> " +
                                        "<td class='style5'>" + sdz["DELOGBULK"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["DELOGBULKCOST"].ToString() + "</td> " +
                                    "<td class='style5'>" + sdz["RDELOG"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["RDELOGCOST"].ToString() + "</td>" +
                                    "<td class='style5'>" + sdz["TUSKEEGEE"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["TUSKEEGEECOST"].ToString() + "</td>" +
                                        "<td class='style5'>" + sdz["TUSKEEGEEBULK"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["TUSKEEGEEBULKCOST"].ToString() + "</td>" +
                                    "<td class='style5'>" + sdz["VISITOR"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["VISITORCOST"].ToString() + "</td>" +
                                    "<td class='style5'>" + sdz["MOPOL"].ToString() + "</td>" +
                                    "<td class='style5'>" + "₦" + sdz["MOPOLCOST"].ToString() + "</td>" +
                                "</tr>"
                                
                                
                                
                                );
                            }
                            else
                            {
                                Response.Write(@"<tr style='font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif'>" +
                                    "<td class='style22'></td>" +
                                    "<td class='style23'>Total</td>" +
                                    "<td class='style6'><span style='font-weight:bold;color:#3366CC;' id='Label2'>" + sdz["ARPN"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label1'>" + "₦" + sdz["ARPNCOST"].ToString() + "</span></td>" +
                                    "<td class='style6'><span style='font-weight:bold;color:#3366CC;'  id='Label200'>" + sdz["ARPNBULK"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label201'>" + "₦" + sdz["ARPNBULKCOST"].ToString() + "</span></td>" +
                                    "<td class='style13'><span style='font-weight:bold;color:#3366CC;' id='Label3'>" + sdz["AGGREY"].ToString() + "</span></td>" +
                                    "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label4'>" + "₦" + sdz["AGGREYCOST"].ToString() + "</span></td>" +
                                    "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label7'>" + sdz["CRIMETECH"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label8'>" + "₦" + sdz["CRIMETECHCOST"].ToString() + "</span></td>" +
                                   
                                      "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label1007'>" + sdz["CRIMETECHBULK"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label1008'>" + "₦" + sdz["CRIMETECHBULKCOST"].ToString() + "</span></td>" +
                                   





                                       "<td class='style6'><span style='font-weight:bold;color:#3366CC;' id='Label9'>" + sdz["DELOG"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label10'>" + "₦" + sdz["DELOGCOST"].ToString() + "</span></td>" +
                                        "<td class='style6'><span style='font-weight:bold;color:#3366CC;' id='Label202'>" + sdz["DELOGBULK"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label203'>" + "₦" + sdz["DELOGBULKCOST"].ToString() + "</span></td>" +
                                    "<td class='style13'><span style='font-weight:bold;color:#3366CC;' id='Label11'>" + sdz["RDELOG"].ToString() + "</span></td>" +
                                    "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label12'>" + "₦" + sdz["RDELOGCOST"].ToString() + "</span></td>" +
                                    "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label13'>" + sdz["TUSKEEGEE"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label14'>" + "₦" + sdz["TUSKEEGEECOST"].ToString() + "</span></td>" +
                                        "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label204'>" + sdz["TUSKEEGEEBULK"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label205'>" + "₦" + sdz["TUSKEEGEEBULKCOST"].ToString() + "</span></td>" +
                                    "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label15'>" + sdz["VISITOR"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label16'>" + "₦" + sdz["VISITORCOST"].ToString() + "</span></td>" +
                                        "<td class='style22'><span style='font-weight:bold;color:#3366CC;' id='Label206'>" + sdz["MOPOL"].ToString() + "</span></td>" +
                                    "<td class='style21'><span style='font-weight:bold;color:#3366CC;' id='Label207'>" + "₦" + sdz["MOPOLCOST"].ToString() + "</span></td>" +
                                "</tr>");
                            }
                        }
                        dbConn.Close();%>
                </table>
                <asp:Label ID="LabelF" runat="server" ForeColor="#3366CC"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <table border="1" style="width: 100%;">
                    <tr>
                        <td class="style16">SUB TOTAL FOR ARPN+AGGREY+RDELOG</td>
                        <td class="style15">₦<asp:Label ID="Label114" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table border="1" style="width: 100%;">
                    <tr>
                        <td class="style16">GRAND TOTAL </td>
                        <td class="style15">₦<asp:Label ID="Label60" runat="server" Font-Bold="True"
                            Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
 
</div>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var ARPNCost = $("[id*=tblDetails] tr:last-child").find('td').eq(3).text().replace('₦', '');
        var ARPNBULKCost = $("[id*=tblDetails] tr:last-child").find('td').eq(5).text().replace('₦', '');
        var AGGREYCost = $("[id*=tblDetails] tr:last-child").find('td').eq(7).text().replace('₦', '');
        var CRIMETECHCost = $("[id*=tblDetails] tr:last-child").find('td').eq(9).text().replace('₦', '');
        var CRIMETECHBULKCost = $("[id*=tblDetails] tr:last-child").find('td').eq(11).text().replace('₦', '');
        var DELOGCost = $("[id*=tblDetails] tr:last-child").find('td').eq(13).text().replace('₦', '');
        var DELOGBULKCost = $("[id*=tblDetails] tr:last-child").find('td').eq(15).text().replace('₦', '');
        var RDELOGCost = $("[id*=tblDetails] tr:last-child").find('td').eq(17).text().replace('₦', '');
        var TUSKEEGEECost = $("[id*=tblDetails] tr:last-child").find('td').eq(19).text().replace('₦', '');
        var TUSKEEGEEBULKCost = $("[id*=tblDetails] tr:last-child").find('td').eq(21).text().replace('₦', '');
        var VISITORCost = $("[id*=tblDetails] tr:last-child").find('td').eq(23).text().replace('₦', '');
        var MOPOLCost = $("[id*=tblDetails] tr:last-child").find('td').eq(25).text().replace('₦', '');
        if (MOPOLCost == "") {
            MOPOLCost = "0";
        }

        if (ARPNCost == "") {
            ARPNCost = "0"
        }

        if (ARPNBULKCost == "") {
            ARPNBULKCost = "0"
        }

        if (AGGREYCost == "") {
            AGGREYCost = "0"
        }

        if (CRIMETECHCost == "") {
            CRIMETECHCost = "0"
        }


         if (CRIMETECHBULKCost == "") {
            CRIMETECHBULKCost = "0"
        }




        if (DELOGCost == "") {
            DELOGCost = "0"
        }

        if (DELOGBULKCost == "") {
            DELOGBULKCost = "0"
        }

        if (RDELOGCost == "") {
            RDELOGCost = "0"
        }

        if (TUSKEEGEECost == "") {
            TUSKEEGEECost = "0"
        }

        if (TUSKEEGEEBULKCost == "") {
            TUSKEEGEEBULKCost = "0"
        }

        if (VISITORCost == "") {
            VISITORCost = "0"
        }
        $('[id*=Label60]').html(parseInt(ARPNCost) + parseInt(ARPNBULKCost) + parseInt(AGGREYCost) + parseInt(CRIMETECHCost) + parseInt(CRIMETECHBULKCost) + parseInt(DELOGCost) + parseInt(DELOGBULKCost) + parseInt(RDELOGCost) + parseInt(TUSKEEGEECost) + parseInt(TUSKEEGEEBULKCost) + parseInt(VISITORCost) + parseInt(MOPOLCost));
        $('[id*=Label114]').html(parseInt(ARPNCost) + parseInt(ARPNBULKCost) + parseInt(AGGREYCost) +  parseInt(RDELOGCost));
    });
</script>
    </form>
</body>
</html>





                