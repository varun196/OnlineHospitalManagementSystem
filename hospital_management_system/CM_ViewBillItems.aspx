<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="CM_ViewBillItems.aspx.cs" Inherits="hospital_management_system.CM_ViewBillItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" id="form1" > 
        <asp:Button ID="b1" runat="server" Text="EnterItems" onclick="AddItems_click"/>
         <asp:GridView ID="gv1" runat="server"/>
    </form>
</asp:Content>
