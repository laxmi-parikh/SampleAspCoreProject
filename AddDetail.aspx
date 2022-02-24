<%@ Page Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="AddDetail.aspx.cs" Inherits="Admin_Default2" %>

<%@ Register Src="~/Modules/CategoryAuto.ascx" TagName="Auto" TagPrefix="Category1" %>
<%@ Register Src="~/Modules/Categorycommon.ascx" TagName="common" TagPrefix="Category1" %>
<%@ Register Src="~/Modules/Categorycommon1.ascx" TagName="common1" TagPrefix="Category1" %>
<%@ Register Src="~/Modules/CategoryJob.ascx" TagName="Job" TagPrefix="Category1" %>
<%@ Register Src="~/Modules/CategoryProperty.ascx" TagName="Property" TagPrefix="Category1" %>

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
<tr><td align="left" valign="top"> Category  </td> <td>

    <asp:DropDownList ID="ddlCategory" runat="server">
    </asp:DropDownList>
 </td> </tr>

 <tr><td colspan="2"> 
 
 <asp:Panel ID="panel1" runat="server">
     <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="Auto" />
 <%--<Category1:Auto ID="Auto22"  runat="server"/>--%>

 <table border="0" cellpadding="0" cellspacing="0" width="90%">
<tr><td colspan="2" align="left" valign="top"> 
    <asp:Label ID="Label1" runat="server" forecolor="Red"></asp:Label> </td></tr>


    <tr><td colspan="2" align="left" valign="top"> &nbsp;
     </td></tr>

     <tr><td  align="left" valign="top" height="30px"  >Ad Type </td> <td>
     
         <asp:RadioButton ID="rbtnsellcar" runat="server" Text="I want to sell cars " GroupName="2" />
         &nbsp;
           <asp:RadioButton ID="rbtnbuycar" runat="server" Text="I want to buy cars " GroupName="2" />
             </td> </tr>

      <tr><td  align="left" valign="top" height="30px" >User Type </td> <td> 
          <asp:RadioButton ID="rbtnUserTypeIndividual" runat="server" Text="Individual" GroupName="1" /> 
          &nbsp;
           <asp:RadioButton ID="rbtnUserTypeDealer" runat="server"  Text="Dealer" GroupName="1" />  </td> </tr>

       <tr><td  align="left" valign="top" height="30px" >Regn Year </td> <td> 
           <asp:DropDownList ID="ddlRegnyear" runat="server">
           </asp:DropDownList> </td> </tr>
         <tr><td  align="left" valign="top" height="30px" >Kms Done </td> <td>
             <asp:TextBox ID="txtkmsDone" runat="server" Width="120px"></asp:TextBox> &nbsp; Kms  </td> </tr>
           <tr><td  align="left" valign="top" height="30px" >Price </td> <td>   <asp:TextBox ID="txtPrice" runat="server" Width="120px"></asp:TextBox> &nbsp; Rs  </td> </tr>
  <tr><td  align="left" valign="top" height="30px" >Regn State </td> <td><asp:DropDownList ID="ddlRegnState" runat="server">
           </asp:DropDownList>   </td> </tr>
  <tr><td  align="left" valign="top" height="30px" >Fuel</td> <td> <asp:DropDownList ID="ddlFuel" runat="server">
           </asp:DropDownList>  </td> </tr>  
  <tr><td  align="left" valign="top" height="30px" >Color </td> <td><asp:DropDownList ID="ddlColor" runat="server">
           </asp:DropDownList>   </td> </tr> 
   <tr><td  align="left" valign="top" height="30px" >Variant </td> <td> 
       <asp:TextBox ID="txtVariant" runat="server"></asp:TextBox> </td> </tr>  
  




</table>
 </asp:Panel>
  <asp:Panel ID="panel2" runat="server">
  <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="Common1" />
 <%--<Category1:common ID="Common12"  runat="server"/>--%>
 <table border="0" cellpadding="0" cellspacing="0" width="90%">
<tr><td align="left" valign="top" colspan="2">
    <asp:Label ID="Label3" runat="server" forecolor="Red"></asp:Label> </td></tr>
    <tr><td align="left" valign="top" colspan="2">
    &nbsp;</td></tr>

      <tr><td  align="left" valign="top" height="30px" >Ad Type </td> <td>
     
         <asp:RadioButton ID="RadioButton10" runat="server" Text="I want to sell cars " GroupName="2" />
         &nbsp;
           <asp:RadioButton ID="RadioButton11" runat="server" Text="I want to buy cars " GroupName="2" />
             </td> </tr>

               
</table>

 </asp:Panel>
  <asp:Panel ID="panel3" runat="server">
 <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" Text="Common"  />
<%-- <Category1:common1 ID="Auto2221"  runat="server"/>--%>

<table border="0" cellpadding="0" cellspacing="0" width="90%">
<tr><td align="left" valign="top" colspan="2">
    <asp:Label ID="Label2" runat="server" forecolor="Red"></asp:Label> </td></tr>
    <tr><td align="left" valign="top" colspan="2">
    &nbsp;</td></tr>

      <tr><td  align="left" valign="top" height="30px" >Ad Type </td> <td>
     
         <asp:RadioButton ID="RadioButton6" runat="server" Text="I want to sell cars " GroupName="2" />
         &nbsp;
           <asp:RadioButton ID="RadioButton7" runat="server" Text="I want to buy cars " GroupName="2" />
             </td> </tr>

                   <tr><td  align="left" valign="top" height="30px" >User Type </td> <td>
     
         <asp:RadioButton ID="RadioButton8" runat="server" Text="I want to sell cars " GroupName="3" />
         &nbsp;
           <asp:RadioButton ID="RadioButton9" runat="server" Text="I want to buy cars " GroupName="3" />
             </td> </tr>


                   <tr><td  align="left" valign="top" height="30px" > Price</td> <td>
     
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

             </td> </tr>

</table>
 </asp:Panel>
  <asp:Panel ID="panel4" runat="server">
  <asp:RadioButton ID="RadioButton4" runat="server" GroupName="1" Text="Job"  />
<%-- <Category1:Job ID="Auto222"  runat="server"/>--%>

<table border="0" cellpadding="0" cellspacing="0" width="90%">
<tr><td align="left" valign="top" colspan="2" >  
    <asp:Label ID="Label4" runat="server" ForeColor="Red" ></asp:Label> </td></tr>

    <tr><td align="left" valign="top" colspan="2" > &nbsp;</td></tr>
    <tr><td align="left" valign="top" height="30px" > Ad Type </td><td>   <asp:RadioButton ID="rbtnhiresome" runat="server" Text="I want to hire someone" />  <asp:RadioButton ID="rbtnwantjob" runat="server" Text="I want a job" />  </td></tr>
     <tr><td align="left" valign="top" height="30px" > Job Type </td><td>
         <asp:RadioButton ID="rbtnjobtypefullType" runat="server" Text="Full Time" />  <asp:RadioButton ID="rbtnjobtypePartType" runat="server" Text="Part Time" /> </td></tr>
    <tr><td align="left" valign="top" height="30px" >Experience </td><td>
        <asp:DropDownList ID="ddlExeperience" runat="server">
        </asp:DropDownList>

         </td></tr>
          <tr><td align="left" valign="top" height="30px" >Qualification </td><td>
        <asp:DropDownList ID="ddlQualification" runat="server">
        </asp:DropDownList>

         </td></tr>

           <tr><td align="left" valign="top" height="30px" >Designation </td><td>
        <asp:DropDownList ID="ddlDesignation" runat="server">
        </asp:DropDownList>

         </td></tr>
           <tr><td align="left" valign="top" height="30px" >Company </td><td>
 
               <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
         </td></tr>



</table>
 </asp:Panel>
   <asp:Panel ID="panel5" runat="server">
   <asp:RadioButton ID="RadioButton5" runat="server" GroupName="1"  Text="Property"/>
 <%--<Category1:Property ID="Auto42"  runat="server"/>--%>

 <table border="0" cellpadding="0" cellspacing="0" width="90%">
<tr><td align="left" valign="top" colspan="2" >  
    <asp:Label ID="Label5" runat="server" ForeColor="Red" ></asp:Label> </td></tr>

    <tr><td align="left" valign="top" colspan="2" > &nbsp;</td></tr>
    <tr><td align="left" valign="top" height="30px" > Ad Type </td><td>   <asp:RadioButton ID="rbtnoffering" runat="server" Text="I am offering it on rent" />  <asp:RadioButton ID="rbtnwant" runat="server" Text="I want it on rent" />  </td></tr>
     <tr><td align="left" valign="top" height="30px"> User Type </td><td>
         <asp:RadioButton ID="rbtnIndivdiual" runat="server" Text="Indivdiual" />  <asp:RadioButton ID="rbtnDealer" runat="server" Text="Dealer" /> </td></tr>
    <tr><td align="left" valign="top" height="30px" >Condition </td><td>
        <asp:DropDownList ID="ddlcondition" runat="server">
        </asp:DropDownList>

         </td></tr>
          <tr><td align="left" valign="top" height="30px" >Area </td><td>
     
          <asp:TextBox ID="txtArea" runat="server"></asp:TextBox> Sq ft

         </td></tr>

           <tr><td align="left" valign="top" height="30px" >Price </td><td>
     
     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> Rs
         </td></tr>
           <tr><td align="left" valign="top" height="30px" >Floor </td><td>
 <asp:DropDownList ID="ddlfloor" runat="server">
        </asp:DropDownList>


         </td></tr>

              <tr><td align="left" valign="top" height="30px" >Property Age </td><td>
 <asp:DropDownList ID="ddlPropertyAge" runat="server">
        </asp:DropDownList>
        
         </td></tr>

             <tr><td align="left" valign="top"  height="30px">Possession </td><td>
 <asp:DropDownList ID="ddlPossession" runat="server">
        </asp:DropDownList>

         </td></tr>

             <tr><td align="left" valign="top" height="30px">Car Parking </td><td>
 <asp:DropDownList ID="ddlcarparking" runat="server">
        </asp:DropDownList>


         </td></tr>



</table>
 </asp:Panel>
 
 </td></tr>

       
 <tr><td >&nbsp;</td><td align="left" valign="top"> <asp:Button ID="btnsubmit" 
         runat="server" Text="Submit" onclick="btnsubmit_Click" /> </td> </tr>

</table>
</td></tr></table>
</asp:Content>

