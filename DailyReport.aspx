<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="DailyReport.aspx.cs" Inherits="Admin_DailyReport" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%" bgcolor="#FFFFFF">
    <tr>
        <td align="center" width="20%">
            <asp:Label ID="Label1" runat="server" CssClass="nav01" Text="Daily Advertise Report :"></asp:Label>
        </td>
        <td width="90%" align="left">
            <strong><b><asp:Label ID="lblDailycnt" CssClass="nav02" runat="server"></asp:Label></b></strong>
        </td>
    </tr>
</table>
</asp:Content>

