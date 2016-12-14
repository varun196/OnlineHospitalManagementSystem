<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="CM_View_CreateBill.aspx.cs" Inherits="hospital_management_system.CM_CreateBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server" id="form1" >
        Enter Case Id : <asp:TextBox ID="tb" runat="server" />
         <asp:Button ID="b1" runat="server" Text="Go" onclick="b1_Click"/>
         
         <asp:GridView ID="gv1" runat="server" OnSelectedIndexChanged = "gv1_OnSelectedIndexChanged">
         <Columns>
             <asp:CommandField ShowSelectButton="true" />
         </Columns>
         </asp:GridView>
         <asp:Button ID="b2" runat="server" Text="CreteNewBill" onclick="CreateBill_click"/>
         <asp:Label ID="l1" runat="server" text="Ho"/>
    </form>
</asp:Content>
