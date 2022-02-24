<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="AdvertiseReport.aspx.cs" Inherits="Admin_AdvertiseReport" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="1%" align="left" valign="top">&nbsp;</td>
            <td width="98%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              
              
             
              <tr>
                <td colspan="4" align="left" valign="top"><!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #c0c0c0;
}

-->
  </style>
  <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
    <tr>
      <td align="left" valign="top"><!-- InstanceBeginEditable name="EditRegion3" -->


<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #c0c0c0;
}

-->
</style>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
        <td colspan="3" align="left" valign="top">&nbsp;</td>
        </tr>
      <tr>
        <td colspan="3" align="left" valign="top">&nbsp;</td>
      </tr>
  <tr>
    <td width="77%" align="center" valign="top">
        <asp:Label ID="lblmsg" ForeColor="Red" runat="server"></asp:Label>
    </td>
    <td width="23%" align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="middle" class="content04">&nbsp;</td>
        <td height="30" align="left" valign="middle" class="content04">&nbsp;</td>
      </tr>
      <tr>
        <td height="30" colspan="2" align="left" valign="middle" class="mail01">
       <%--<ul>
        <li><a href="categories.aspx" class="mail01">Categories</a></li>
        <li><a href="GetAdvtDetail.aspx" class="mail01">New Postings</a></li>
        <li><a href="AdvertiseReport.aspx" class="mail01">Reported Ads</a></li>
         </ul>--%> 
         <ul>
       <li><a href="ProgressReport.aspx" class="mail01">Reported Ads</a></li>
        <li><a href="GetAdvtDetail.aspx" class="mail01">New Postings</a></li>
        <li><a href="AdvertiseReport.aspx" class="mail01">Progress Report</a></li>
        <li><a href="categories.aspx" class="mail01">Categories</a></li>
         </ul>
        </td>
        </tr>
      <tr>
        <td align="left" valign="middle" class="content04">&nbsp;</td>
        <td height="30" align="left" valign="middle" class="mail01">
       
        </td>
      </tr>
      <tr>
        <td width="9%" align="left" valign="middle" class="category">&nbsp;</td>
        <td width="91%" height="30" align="left" valign="middle" class="category">
        Report Of Advertise</td>
      </tr>
      <tr>
        <td align="left" valign="top"></td>
        <td height="8" align="left" valign="top"></td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;</td>
        <td align="left" valign="top">
        
        
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="17%" align="left" valign="top">
              <table width="70%" border="0" cellspacing="0" cellpadding="0" class="form_border">
                <tr>
                  <td height="30" colspan="2" align="left" valign="middle"  class="form_text"><strong>&nbsp;&nbsp;&nbsp;Month: 
                    &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="ddlMonth" AutoPostBack="true" runat="server" 
                          onselectedindexchanged="ddlMonth_SelectedIndexChanged">
                          <asp:ListItem Value="0">Select</asp:ListItem>
                          <asp:ListItem Value="1">January</asp:ListItem>
                          <asp:ListItem Value="2">February</asp:ListItem>
                          <asp:ListItem Value="3">March</asp:ListItem>
                          <asp:ListItem Value="4">April</asp:ListItem>
                          <asp:ListItem Value="5">May</asp:ListItem>
                          <asp:ListItem Value="6">June</asp:ListItem>
                          <asp:ListItem Value="7">Jully</asp:ListItem>
                          <asp:ListItem Value="8">August</asp:ListItem>
                          <asp:ListItem Value="9">September</asp:ListItem>
                          <asp:ListItem Value="10">October</asp:ListItem>
                          <asp:ListItem Value="11">November</asp:ListItem>
                          <asp:ListItem Value="12">December</asp:ListItem>
                      </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="ddlDate" Visible="false" runat="server">
                      </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="ddlyr" Visible="false" runat="server">
                      </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <%--<input type="submit" visible="false" name="button" id="button" value="Submit" />--%>
                  </strong></td>
                  </tr>
                <tr>
                  <td width="11%" height="12" align="left" valign="middle"></td>
                  <td width="89%" height="12" align="left" valign="middle"></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  
                    <%--<tr>
                      <td height="12" align="left" valign="middle"></td>
                      <td height="12" align="left" valign="middle"></td>
                      <td height="12" colspan="2" align="center" valign="middle"></td>
                      <td height="12" align="left" valign="middle"></td>
                    </tr>--%>
                    
                    
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td colspan="4" bgcolor="#D2D2D2" align="left" valign="top">
                      
                      <table width="100%" border="0" align="left" cellpadding="0" cellspacing="1">
                            <tr>
                              <td width="12%" height="25" class="form_text" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;</td>
                              <td width="30%" height="25" align="center" valign="middle" bgcolor="#FFFFFF" class="form_text"><font color="#ae0000"><strong>Date</strong></font></td>
                              <td width="58%" height="25" align="center" valign="middle" bgcolor="#FFFFFF"class="form_text"><font color="#ae0000"><strong>No. Of Ads</strong></font></td>
                            </tr>
                            <tr>
                                <td colspan="3" bgcolor="#D2D2D2" class="form_text">
                                    <asp:GridView ID="gvAdvrtchart" Width="100%" CssClass="form_text" AutoGenerateColumns="false" ShowHeader="false" runat="server">
                                    <Columns>
                                            <asp:TemplateField>
                                                    <ItemTemplate>
                                                                <table width="100%">
                                                                <tr>
                                                                    <td width="12%" align="center" valign="middle" bgcolor="#FFFFFF"><label>
                                                                    <%--<input name="checkbox" visible="false" type="checkbox" id="checkbox" />--%>
                                                                    </label></td>
                                                                    <td width="30%" align="center" valign="middle" bgcolor="#FFFFFF" class="form_text"><strong>                              
                                                                    <asp:Label ID="lblInsertedon" runat="server" ToolTip="mm/dd/yyyy" Text='<%#Eval("Date")%>'></asp:Label>                              
                                                                    </strong></td>
                                                                    <td width="58%" align="center" valign="middle" bgcolor="#FFFFFF"class="form_text"><strong>
                                                                    <asp:Label ID="lblCount" runat="server" Text='<%#Eval("Count")%>'></asp:Label>
                                                                    </strong></td>
                                                                </tr>                           
                                                                <tr>
                                                                    <td align="center" valign="middle" bgcolor="#FFFFFF">&nbsp;</td>
                                                                    <td align="center" valign="middle" bgcolor="#FFFFFF" class="form_text">&nbsp;</td>
                                                                    <td align="center" valign="middle" bgcolor="#FFFFFF"class="form_text">&nbsp;</td>
                                                                </tr>
                                                                </table>
                                                    </ItemTemplate>
                                    </asp:TemplateField>
                              </Columns>
                              </asp:GridView>
                                    
                                </td>
                            </tr>
                          </table>
                      
                      </td>
                      </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td colspan="4" align="left" valign="top">&nbsp;</td>
                    </tr>
                  </table></td>
                  </tr>
              </table></td>
            </tr>
          </table>
        
        </td>
      </tr>
    </table></td>
    <td align="right" valign="top"><img src="images/wide-skyscrapper.jpg" width="160" height="600" alt="wide-skyscrapper" /></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
</table>
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- InstanceEndEditable --></td>
      </tr>
    <tr>
      <td height="10" align="left" valign="top"></td>
      </tr>
    <tr>
      <td height="10" align="left" valign="top"></td>
      </tr>
  </table>
              </tr>
              
            </table></td>
            <td width="1%" align="left" valign="top">&nbsp;</td>
          </tr>
          
        </table></td>
      </tr>
      </table></td>
  </tr>
</table>

</asp:Content>

