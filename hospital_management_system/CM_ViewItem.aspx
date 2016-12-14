<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CM_ViewItem.aspx.cs" Inherits="hospital_management_system.CM_ViewItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="margin-top:10%;margin-left:40%">
      <form id="f1" runat="server"> 
        <asp:gridview id="gv1" runat="server"  OnSelectedIndexChanged="gv1_SelectedIndexChanged">
             <HeaderStyle CssClass="text-center" BackColor="WhiteSmoke" Height="50px" />
            <RowStyle  CssClass="text-center" Height="30px" Width="200px" />
            <FooterStyle BackColor="WhiteSmoke"/>
                               
        <Columns>
            <asp:CommandField ShowSelectButton="true" SelectText="Edit" />
        </Columns>
         </asp:gridview></form>
  </div>
</asp:Content>
