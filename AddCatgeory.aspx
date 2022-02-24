<%@ Page  Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="AddCatgeory.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top" bgcolor="#FFFFFF"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2"><b>Add Category</b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
 <tr><td colspan="2">
    
    <asp:Panel ID="panel1" runat="server">
    
    <table border="0" cellpadding="0" cellspacing="0" width="70%">
    <tr><td>Main category  </td> <td> 
        <asp:DropDownList ID="ddlmaincategory" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlmaincategory_SelectedIndexChanged">
        </asp:DropDownList>
    </td></tr>
     <tr><td> Sub category  </td> <td> 
        <asp:DropDownList ID="ddlsubcategory" runat="server" AutoPostBack="True" 
             onselectedindexchanged="ddlsubcategory_SelectedIndexChanged">
        </asp:DropDownList>
    </td></tr>
     <tr><td>Sub Sub category  </td> <td> 
        <asp:DropDownList ID="ddlsub1category" runat="server" >
        </asp:DropDownList>
    </td></tr>

    
    </table>

    </asp:Panel>
    
    </td></tr>
    <tr><td colspan="2">&nbsp;</td></tr>
<tr><td  align="left" valign="top" height="25px"> Category Name </td><td align="left" valign="top">
    <asp:TextBox ID="txtCategoryName" runat="server" Width="220px"></asp:TextBox>  </td> </tr>
    <tr><td  align="left" valign="top" height="25px"> Category Type </td><td align="left" valign="top">
        <asp:DropDownList ID="ddlCategoryType" runat="server">
        <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
              <asp:ListItem Text="Auto" Value="Auto"></asp:ListItem>
              <asp:ListItem Text="Job" Value="Job"></asp:ListItem>
              <asp:ListItem Text="Property" Value="Property"></asp:ListItem>
              <asp:ListItem Text="Common" Value="common"></asp:ListItem>
         </asp:DropDownList>
   
     </td> </tr>
    <tr><td  align="left" valign="top" height="25px"> Title </td><td align="left" valign="top">
    <asp:TextBox ID="txtTitle" runat="server" TextMode="MultiLine" Rows="1" Columns="50"></asp:TextBox>  </td> </tr>
    <tr><td  align="left" valign="top" height="25px">Keywords </td><td align="left" valign="top">
    <asp:TextBox ID="txtkeyword" runat="server" TextMode="MultiLine" Rows="2" Columns="50"></asp:TextBox>  </td> </tr>
    <tr><td  align="left" valign="top" height="25px"> Describtions </td><td align="left" valign="top">
    <asp:TextBox ID="txtDescribtion" runat="server" TextMode="MultiLine" Rows="2" Columns="50"></asp:TextBox>  </td> </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr><td  align="left" valign="top" height="25px">&nbsp; </td><td align="left" valign="top">
   <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
     </td> </tr>
</table>
    
    </td></tr></table>


</asp:Content>

