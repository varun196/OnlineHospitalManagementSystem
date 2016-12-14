<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewCheque.aspx.cs" Inherits="hospital_management_system.AdminViewCheque" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:10%;margin-left:30%">

    <form id="f1" runat="server">
        <asp:GridView ID="gv1" runat="server">
            <HeaderStyle CssClass="text-center" BackColor="WhiteSmoke" Height="50px" />
            <RowStyle  CssClass="text-center" Height="30px" Width="200px" />
            <FooterStyle BackColor="WhiteSmoke"/>
        </asp:GridView>
    </form>
        </div>
</asp:Content>
