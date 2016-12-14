<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPaySalary.aspx.cs" Inherits="hospital_management_system.AdminPaySalary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="margin-top:10%;margin-left:40%">
       <form runat="server" id="form1" >        
         <asp:Button ID="b1" runat="server" Text="Pay All Doctors" OnClick="pay" CssClass="btn btn-info" /> 
        <asp:label id="l1" runat="server"></asp:label>   
    </form>
   </div>
</asp:Content>
