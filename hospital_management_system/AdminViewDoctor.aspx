<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewDoctor.aspx.cs" Inherits="hospital_management_system.AdminViewDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" style="margin-left:200px;margin-top:100px;margin-right:200px;"> 
     <form runat="server" id="form1" >
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" OnSelectedIndexChanged = "OnSelectedIndexChanged" >
             <HeaderStyle CssClass="text-center" BackColor="WhiteSmoke" Height="50px" />
            <RowStyle  CssClass="text-center" Height="30px" Width="200px" />
            <FooterStyle BackColor="WhiteSmoke"/>
                               
             <Columns>
      
                <asp:ButtonField Text="Edit" CommandName="Select"  HeaderStyle-CssClass="text-center" ItemStyle-Width="50px"/>
            </Columns>
         </asp:GridView>
      
    </form>
          </div>
</asp:Content>
