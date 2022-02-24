<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="AddMainCategoryMetatag.aspx.cs" Inherits="Admin_AddMainCategoryMetatag" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
      <li><a href="AddMainCategoryMetatag.aspx" class="mail01">MainCategory SEO</a></li>
        <li><a href="DetailMaincategorySEO.aspx" class="mail01">Get MainCategory SEO</a></li>
        <li><a href="AddMainCategoryNSubCategorySEO.aspx" class="mail01">SubCategory SEO</a></li>
        <li><a href="detailSubcategorySEO.aspx" class="mail01">Get SubCategory SEO</a></li>
         </ul>
        </td>
        </tr>
      <tr>
        <td align="left" valign="middle" class="content04">&nbsp;</td>
        <td height="30" align="center" valign="middle" class="mail01">
            <asp:Label ID="lblmsg1" ForeColor="Red" runat="server"></asp:Label>
        </td>
      </tr>
      <tr>
        <td width="9%" align="left" valign="middle" class="category">&nbsp;</td>
        <td width="91%" height="30" align="left" valign="middle" class="category">
        Add MainCategory SEO</td>
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
              <td width="77%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="report_category"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
  
</table>
</td>
              </tr>
              <tr>
                <td align="left" valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" width="25%" valign="middle" class="category">
                      <asp:Label ID="Label1" runat="server" Text="Maincategory :"></asp:Label>
                   </td>
                   <td align="left" valign="middle" class="category">
                      <asp:DropDownList ID="ddlMaincategory" runat="server" Width="150px">
                      </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                    <td align="left" valign="middle" class="category">
                      <asp:Label ID="Label2" runat="server" Text="Meta keywords:"></asp:Label>
                      </td>
                      <td align="left" valign="middle" class="category">
                      <asp:TextBox ID="txtkeywords" runat="server" Width="250px"></asp:TextBox>
                  </td>
                </tr>
                 <tr>
                    <td align="left" valign="middle" valign="middle" class="category">
                      <asp:Label ID="Label3" runat="server" Text="Meta Description:"></asp:Label>
                      </td>
                      <td align="left" valign="middle" class="category">
                        <asp:TextBox ID="txtdescription" TextMode="MultiLine" Height="100px" runat="server" Width="250px"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                    <td align="left" valign="middle" valign="middle" class="category">
                      <asp:Label ID="Label4" runat="server" Text="Meta Title:"></asp:Label>
                      </td>
                      <td align="left" valign="middle" class="category">
                        <asp:TextBox ID="txtTitle" TextMode="MultiLine" Height="100px" runat="server" Width="250px"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                    <td align="left" valign="middle" valign="middle" class="category">
                      
                      </td>
                      <td align="left" valign="middle" class="category">
                          <asp:ImageButton ID="imgbtnsave" ImageUrl="~/images/save.jpg" runat="server" 
                              onclick="imgbtnsave_Click" />
                  </td>
                </tr>
              </table>
                </td>
              </tr>
            </table>
              
              </td>
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

