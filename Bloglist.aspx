<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="Bloglist.aspx.cs" Inherits="Admin_Bloglist" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" bgcolor="#FFFFFF" width="1000" class="nav" cellpadding="0" cellspacing="0"  align="center" valign="top">
<tr height="30px">
<td width="10%"></td>
<td width="80%" align="center"> 
    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td>
    <td width="10%"></td>
    </tr>
   
        
         <tr height="30px">
         <td width="10%" ></td>
         <td align="center"> 
    
             <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" ForeColor="#333333" GridLines="Both" 
                 AllowPaging="True" AllowSorting="True" 
                 onpageindexchanging="GridView1_PageIndexChanging" 
                 onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting">
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <Columns>
             <asp:TemplateField HeaderText="Sr No" >
             <ItemTemplate>
            <%#Container.DataItemIndex+1 %>
            </ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="CommentId" Visible="false">
             <ItemTemplate>
             <%#Eval("CommentID")%>
             </ItemTemplate>
             </asp:TemplateField>
             
             
             <asp:TemplateField HeaderText="Blog" >
             <ItemTemplate>
             <%#Eval("DescText")%>
             </ItemTemplate>
             </asp:TemplateField>
             
              <asp:TemplateField HeaderText="User Name" >
             <ItemTemplate>
                 <asp:Label ID="lblReg" runat="server" Text='<%#Eval("RegId") %>' Visible="false"></asp:Label>
                    <asp:Label ID="lblUser" runat="server" Text='<%#Eval("Username") %>' ></asp:Label>
        
             </ItemTemplate>
             </asp:TemplateField>
               <asp:TemplateField HeaderText="Date" >
             <ItemTemplate>
               <%#Eval("DateAdded","{0:dd-MM-yyyy}") %>
                  
             </ItemTemplate>
             </asp:TemplateField>
               <asp:TemplateField HeaderText="Like" >
             <ItemTemplate>
               <%#Eval("Likeview") %>
                  
             </ItemTemplate>
             </asp:TemplateField>
               <asp:TemplateField HeaderText="Abuse" >
             <ItemTemplate>
               <%#Eval("Abuse") %>
                  
             </ItemTemplate>
             </asp:TemplateField>
             
             
              <asp:TemplateField HeaderText="Del" >
             <ItemTemplate>
            
                 <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("CommentID") %>' CommandName="Delete" ><img alt="img" border="0" src="../Images/delete001.gif" /></asp:LinkButton>
             </ItemTemplate>
             </asp:TemplateField>
             </Columns>
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <EditRowStyle BackColor="#999999" />
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             </asp:GridView>
         </td></tr>
        
         <tr>
        <td width="10%" align="left" valign="top">&nbsp;</td>
        <td width="80%" align="left" valign="top" class="mail01">
        </td>
        <td width="10%"></td>
      </tr>
        <%--<tr height="30px"><td width="10%"></td><td colspan="2" align="center"> 
            <asp:ImageButton ID="imgbtn_submit" runat="server" 
                ImageUrl="~/Images/submit.jpg" Width="80"  ValidationGroup="vrg" 
                onclick="imgbtn_submit_Click"/>
      </td></tr>--%>

</table>
</asp:Content>

