<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="DetailList.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top" bgcolor="#FFFFFF">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td align="left" valign="top" colspan="2">
    <asp:Label ID="lblMsg" runat="server"  ForeColor="Red"></asp:Label>
</td></tr>
<tr><td align="left" valign="top" colspan="2"> &nbsp; </td> </tr>

<tr><td align="right" valign="top" colspan="2"> <a href="AddDetail.aspx" style="text-decoration:none;" >  Detail Form </a> </td> </tr>
<tr><td align="left" valign="top" colspan="2"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        GridLines="Both" CellPadding="4" ForeColor="#333333" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
    <asp:TemplateField  HeaderText="Sr no" >
    <ItemTemplate> 
     <%#Container.DataItemIndex+1 %> 
    </ItemTemplate>
    </asp:TemplateField>
   
     <asp:TemplateField  HeaderText="Category" >
    <ItemTemplate>
      <%#Eval("CategoryName") %>
    </ItemTemplate>
    </asp:TemplateField>

     <asp:TemplateField  HeaderText="DetailView" >
    <ItemTemplate>
    
 <%--    <asp:Label ID="lblDetailId" runat="server" Text='<%#Eval("DetailId") %>'  Visible="false" ></asp:Label>
           <asp:Label ID="lblDetail" runat="server" Visible="false"  ></asp:Label>--%>

           <%#Eval("Detail") %>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
 </td> </tr>
</table> </td> </tr> </table>
</asp:Content>

