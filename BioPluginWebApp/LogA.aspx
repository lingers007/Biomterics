<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogA.aspx.cs" Inherits="BioPluginWebApp_LogA" %>

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
        

        .style6
        {
            width: 172px;
        }
        

        .style7
        {
            width: 172px;
            font-weight: bold;
        }
        .style8
        {
            font-weight: bold;
        }
        

        .style9
        {
            font-weight: bold;
            width: 1174px;
        }
                

        .style11
        {
            width: 37px;
        }
        .style12
        {
            width: 405px;
            font-weight: bold;
        }
        .style13
        {
            width: 405px;
        }
        
        </style>
   
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1px"  style="width: 801px">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                
                
                <table style="width: 100%; height: 7px; color: #FFFFFF; background-color: #000099;" 
                    bgcolor="#0066CC">
                    <tr>
                        <td style="background-color: #336699" class="style5" align="right">
                                                          &nbsp; 
                                                          <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" 
                                                              PostBackUrl="H1.aspx">Home</asp:LinkButton> &nbsp;| &nbsp;<asp:LinkButton 
                                                              ID="LinkButton1" runat="server" ForeColor="White" 
                                                              PostBackUrl="Lgin.aspx" onclick="LinkButton1_Click">Sign out</asp:LinkButton>
                            &nbsp;</td>
                            </tr>
                        </table>
                
                <br />
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                        REPORT FOR&nbsp;&nbsp;ALL&nbsp; MEAL TICKET&nbsp; CATEGORY FROM&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label112" runat="server"></asp:Label>
&nbsp;&nbsp; TO&nbsp;&nbsp;
                <asp:Label ID="Label113" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    <br />
                    <br />
                    <table   border='1' 
                    
                    
                    
                    
                    style="width: 1080px; font-family: Cambria; font-size:14px; font-size: smal1; font-weight: normal;">
                    <tr>
                        <td class="style8">
                            S/N</td>
                        <td class="style9">
                            QUERYDATE</td>
                        <td class="style7">
                            ARPN</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                            <td class="style12">
                            AGY&nbsp;&nbsp;</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                            <td class="style7">
                            CRMT&nbsp;</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                             <td class="style7">
                            DLG&nbsp;&nbsp;</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                             <td class="style12">
                            RDLG</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                             <td class="style7">
                            TUSKG</td>
                        <td class="style7">
                            <b>COST&nbsp;</b> </td>
                               <td class="style7">
                            VIST&nbsp;</td>
                        <td class="style11">
                            <b>COST&nbsp;</b> </td>
                            
                            
                            
                            
                            
                            
                            
                
                    </tr>
            <%
                
                SqlCommand scz = new SqlCommand(" SELECT  Datename(dw, Time1)+', '+CONVERT(VARCHAR(12), Time1, 107) as Query_Date, (SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='ARPN') AS ARPN,N_MCOST=SUM(CASE WHEN Company='ARPN' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='ARPN' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='AGGREY') AS AGGREY,A_MCOST=SUM(CASE WHEN Company='AGGREY' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='AGGREY' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='CRIMETECH') AS CRIMETECH,C_MCOST=SUM(CASE WHEN Company='CRIMETECH' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='CRIMETECH' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='DELOG') AS DELOG,D_MCOST=SUM(CASE WHEN Company='DELOG' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='DELOG' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='RDELOG') AS RDLG, RDLG_CST=SUM(CASE WHEN Company='RDELOG' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='RDELOG' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='TUSKEEGEE') AS TUSKEEGEE,T_MCOST=SUM(CASE WHEN Company='TUSKEEGEE' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='TUSKEEGEE' THEN Value ELSE 0 END),(SELECT COUNT(*) FROM MealLog as c WHERE c.Time1= clog.Time1 AND Company='VISITOR') AS VISITORS,V_MCOST=SUM(CASE WHEN Company='VISITOR' THEN 1 ELSE 0 END)* MAX(CASE WHEN Company='VISITOR' THEN Value ELSE 0 END)FROM MealLog AS clog WHERE Time1  >= '" + (Session["D"].ToString()) + "' and Time1 <= '" + (Session["D1"].ToString()) + "'  GROUP BY Time1 ORDER BY Time1 ASC   ", dbConn);
                
               
                            scz.CommandType = CommandType.Text;
                            dbConn.Open();
                               

                            SqlDataReader sdz = scz.ExecuteReader();
                            int ct = 1;
                            while (sdz.Read())
                            {



                                Response.Write("<tr style><td class='style2'>" + ct + "</td><td class='style2'>" + sdz["Query_Date"].ToString() + "</td><td class='style5'>" + sdz["ARPN"].ToString() + "</td><td class='style5'>" + "₦" + sdz["N_MCOST"].ToString() + "</td> <td class='style5'>" + sdz["AGGREY"].ToString() + "</td><td class='style5'>" + "₦" + sdz["A_MCOST"].ToString() + "</td><td class='style5'>" + sdz["CRIMETECH"].ToString() + "</td><td class='style5'>" + "₦" + sdz["C_MCOST"].ToString() + "</td><td class='style5'>" + sdz["DELOG"].ToString() + "</td><td class='style5'>" + "₦" + sdz["D_MCOST"].ToString() + "</td><td class='style5'>" + sdz["RDLG"].ToString() + "</td><td class='style5'>" + "₦" + sdz["RDLG_CST"].ToString() + "</td> <td class='style5'>" + sdz["TUSKEEGEE"].ToString() + "</td><td class='style5'>" + "₦" + sdz["T_MCOST"].ToString()  + "</td><td class='style5'>" + sdz["VISITORS"].ToString() + "</td><td class='style5'>" + "₦" + sdz["V_MCOST"].ToString()  + "</td> </tr>");
                                   
                                    
                                    
                                    
                                    
                                     
                
                
                
                
                
               
                                    
                                    
                        
                                ct++;
                            }

                dbConn.Close();

                          
                 %>
                

<tr style="font-size: small; font-weight: normal; font-style: normal; font-family: Arial, Helvetica, sans-serif">
                        <td class="style26">
                            </td>
                        <td class="style9">
                            Total</td>
                        <td class="style6">
                             
                            <asp:Label ID="Label2" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                                </td>
                        <td class="style40">₦
                             
                            <asp:Label ID="Label1" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                        </td>
                        
                        <td class="style13">
                             
                            <asp:Label ID="Label3" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                                </td>
                        <td class="style28">₦
                             
                            <asp:Label ID="Label4" 
                                runat="server" Font-Bold="True" ForeColor="#3366CC"></asp:Label>
                                </td>
                        <td class="style6">
                <asp:Label ID="Label5" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style40">₦
                                  <asp:Label ID="Label6" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                                  <td class="style26">
                                      <asp:Label ID="Label7" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style28">₦
                            <asp:Label ID="Label8" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style6">
                            <asp:Label ID="Label9" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style40">₦
                            <asp:Label ID="Label10" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                     </td>
                                  <td class="style26">
                            <asp:Label ID="Label11" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style28">₦
                            <asp:Label ID="Label12" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style6">
                            <asp:Label ID="Label13" 
                                runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>
                                </td>
                        <td class="style11">₦<asp:Label ID="Label14" runat="server" ForeColor="#3366CC" Font-Bold="True"></asp:Label>                                  
                            
                                
                            </td>
                        
                
                    </tr>

                    
                </table>
                <br /> Grand Total <asp:Label ID="LabelF" 
                                runat="server" ForeColor="#3366CC"></asp:Label>
                <br />
                <asp:Label ID="Label60" 
                                runat="server"  ForeColor="#3366CC"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                <br />
<table border="1" style="width: 84%;">
                    <tr>
                        <td class="style16">
                            GRAND TOTAL FOR ARPN+AGGRY+RDLG</td>
                        <td class="style15">
                            ₦<asp:Label ID="Label114" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                        <br />
                </td>
        </tr>
    </table>
       
    
    </div>
    </form>
</body>
</html>


