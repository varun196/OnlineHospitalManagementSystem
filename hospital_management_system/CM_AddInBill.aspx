<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="CM_AddInBill.aspx.cs" Inherits="hospital_management_system.CM_AddInBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" id="form1" >
        Enter Item Id : <asp:TextBox ID="tb" runat="server" />
        Enter Quantity: <asp:TextBox ID="tb2" runat="server" />
         <asp:Button ID="b2" runat="server" Text="Add" onclick="Button_click"/>
        <asp:Label ID="l1" runat="server" />
    </form>
</asp:Content>
