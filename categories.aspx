<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="categories.aspx.cs" Inherits="Admin_categories" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" rel="stylesheet" type="text/css" />
 <link href="style.css" rel="stylesheet" type="text/css" />

    <link href="css/other.css" rel="stylesheet" type="text/css">
<table width="1000" align="center" border="0" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0">
  <%--<tr>
        <td colspan="3" align="left" valign="top">&nbsp;</td>
        </tr>--%>
      <%--<tr>
        <td colspan="3" align="left" valign="top">&nbsp;</td>
      </tr>--%>
 <%-- <tr>
    <td width="82%" align="left" valign="top">&nbsp;</td>
    <td width="18%" align="left" valign="top">&nbsp;</td>
  </tr>--%>
  <tr>
    <td align="center" colspan="2" valign="top"><table width="100%" border="0"  cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="middle" class="content04">&nbsp;</td>
        <td height="5" align="center" valign="middle" class="content04">
            <asp:Label ID="lblmsg" ForeColor="Red" runat="server"></asp:Label>
        </td>
      </tr>
      <tr>
        <td height="30" colspan="2" align="left" valign="middle" class="mail01">
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
        <td align="left" valign="middle" class="mail01"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="60%" align="left" valign="top"><ul>
            <li>
                <asp:ImageButton ID="imgbtnAdd"  ImageUrl="~/images/add1.jpg" runat="server" 
                    ValidationGroup="v2" onclick="imgbtnAdd_Click"/>
            </li>
            <li>        
                &nbsp; &nbsp;<asp:ImageButton ID="imgbtnedit" ImageUrl="~/images/edit1.jpg" 
                    runat="server" onclick="imgbtnedit_Click"/>
            </li>
            <li>    
                &nbsp; &nbsp;<asp:ImageButton ID="imgbtndelete" ImageUrl="~/images/delete1.jpg" 
                    runat="server" onclick="imgbtndelete_Click" style="height: 20px"/>
            </li>
            
            </ul></td>
            <td width="40%" align="left" valign="top"></td>
          </tr>
          <tr>
              <td width="60%" align="left">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtMainCategory" runat="server"></asp:TextBox>
                  <%--<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" 
                      oncheckedchanged="CheckBox1_CheckedChanged"/>--%>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtMainCategory" ValidationGroup="v2" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
              </td>
              <td></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="middle" class="content04">&nbsp;</td>
        <td align="left" valign="middle" class="mail01">&nbsp;</td>
      </tr>
      <tr>
        <td width="4%" align="left" valign="middle" class="category">&nbsp;</td>
        <td width="96%" align="left" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          
          <tr>
            <td width="23%" align="left" valign="top" class="category"><table width="93%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_border">
                    <tr>
                      <td align="left" valign="middle"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="category_border">
                        <tr>
                          <td height="25" align="left" valign="middle" class="category">
                            <div align="center"><strong>Main Category</strong></div></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                         <td height="10px"></td>
                     </tr>
                    <tr>
                      <td align="left" valign="top" class="category_menu">
                          
                      
                          <asp:GridView ID="gvMainCategory" Width="95%" HeaderStyle-HorizontalAlign="Center" BorderStyle="None" AlternatingRowStyle-BorderStyle="None" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="false" ShowHeader="false" runat="server">
                          <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-BorderStyle="None" ItemStyle-BorderColor="White">
                                                        <ItemTemplate>
                                                        <table width="100%">
                                                            
                                                            <tr>
                                                                <td width="2%">
                                                                    <asp:Label ID="lblMaincategoryId" Visible="false" runat="server" Text='<%#Eval("MainCategoryId")%>'></asp:Label>
                                                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged"/>
                                                                    <%--<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged" />--%>
                                                                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="true" Visible="false" GroupName="v1"/>
                                                                </td>
                                                                <td width="96%" align="left">
                                                                  <a href='categories.aspx?id=<%#Eval("MainCategoryId")%>' class="category_menu"><asp:Label ID="lblMainCategory"  runat="server" Text='<%#Eval("MainCategory")%>'></asp:Label></a>
                                                                    <asp:TextBox ID="txtEditMainCategory" Visible="false" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="lblcount" ForeColor="Red" runat="server" Text='<%#Eval("count")%>'></asp:Label>--%>
                                                                    </td>
                                                                  <td>
                                                                        
                                                                  </td>
                                                             </tr>
                                                        </table>    
                                                        </ItemTemplate>
                                    </asp:TemplateField>
                          </Columns>
                          </asp:GridView>
                          
                        </td>
                      </tr>
                      
                    <tr>
                      <td align="center" valign="top">&nbsp;</td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table></td>
            <td width="77%" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left" valign="top" class="report_category"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
  
</table>
</td>
              </tr>
              <tr>
                <td align="left" valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="bottom_border">
                <tr>
                  <td align="left" valign="middle" class="category">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="30%" align="left" valign="middle"><strong><asp:Label ID="lblMainCategoryName" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcount1" runat="server"></asp:Label>
                      </strong></td>
                      <td width="70%" align="left" valign="top" class="mail01">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="10%" align="center" valign="middle">
                              <asp:ImageButton ID="imgAddsubcatbtn" ImageUrl="~/images/add1.jpg" 
                                  ValidationGroup="v1" runat="server" onclick="imgAddsubcatbtn_Click"/></td>
                          <td width="12%" align="center" valign="middle">
                              <asp:ImageButton ID="imgEditsubcatbtn" ImageUrl="~/images/edit1.jpg" 
                                  runat="server" onclick="imgEditsubcatbtn_Click"/></td>
                          <td width="18%" align="left" valign="middle"><asp:ImageButton ID="imgsubcatbtn" 
                                  ImageUrl="~/images/delete1.jpg" runat="server" onclick="imgsubcatbtn_Click"/></td>
                          <td width="60%" align="left" valign="middle">
                              <asp:TextBox ID="txtSubcategory" runat="server"></asp:TextBox>
                              <%--<asp:CheckBox ID="CheckBox2" AutoPostBack="true" runat="server" 
                                  oncheckedchanged="CheckBox2_CheckedChanged"/>--%>  
                              <%--<asp:CheckBox ID="CheckBox2" runat="server" 
                                  oncheckedchanged="CheckBox2_CheckedChanged" />--%>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtSubcategory" ValidationGroup="v1" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                           </td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="left" valign="middle">
                          <asp:DataList ID="DataList1" Width="100%" RepeatColumns="2" runat="server" 
                              onitemdatabound="DataList1_ItemDataBound" >
                          <ItemTemplate>
                          <table width="100%">
                                <tr>
                                    <td width="2%">
                                         <%--<asp:CheckBox ID="CheckBox2" AutoPostBack="true" runat="server" oncheckedchanged="CheckBox2_CheckedChanged" />  --%>
                                         <asp:CheckBox ID="CheckBox2" AutoPostBack="true" runat="server" oncheckedchanged="CheckBox2_CheckedChanged"/>
                                    </td>
                                    <td width="98%">
                                        <asp:Label ID="lblSubcategoryId" Visible="false" runat="server" Text='<%#Eval("SubCategoryId")%>'></asp:Label>
                                        <asp:Label ID="lblMainCategoryId" runat="server" Visible="false" Text='<%#Eval("MainCategoryId")%>'></asp:Label>
                                        <asp:TextBox ID="txtEditSubcategoryname" Visible="false" runat="server"></asp:TextBox>
                                        <a href='categories.aspx?SubCategoryId=<%#Eval("SubCategoryId")%>' class="category_menu"><asp:Label ID="lblSubCategoryName" CssClass="content02" runat="server" Text='<%#Eval("SubCategoryName")%>'></asp:Label></a>
                                    </td>
                                    
                                </tr>
                          </table>
                                        
                          </ItemTemplate>
                          </asp:DataList>
                      
                    </td>
                      </tr>
                  </table></td>
                </tr>
              </table>
                </td>
              </tr>
            </table>
              
              </td>
          </tr>
          
          <tr>
            <td align="left" valign="top" class="category">&nbsp;</td>
            <td height="30" align="left" valign="top" class="report_category">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td align="right" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
</table>
</asp:Content>

