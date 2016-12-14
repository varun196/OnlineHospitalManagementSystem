<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="room.aspx.cs" Inherits="hospital_management_system.room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <asp:GridView ID="gridView" DataKeyNames="stor_id" runat="server"
        AutoGenerateColumns="false" ShowFooter="true" HeaderStyle-Font-Bold="true"
        onrowcancelingedit="gridView_RowCancelingEdit"
        onrowdeleting="gridView_RowDeleting"
        onrowediting="gridView_RowEditing"
        onrowupdating="gridView_RowUpdating"
        onrowcommand="gridView_RowCommand"
        OnRowDataBound="gridView_RowDataBound">
<Columns>
<asp:TemplateField HeaderText="roomid">
    <ItemTemplate>
        <asp:Label ID="txtstorid" runat="server" Text='<%#Eval("roomid") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblstorid" runat="server" width="40px" Text='<%#Eval("roomid") %>'/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="instorid" width="40px" runat="server"/>
        <asp:RequiredFieldValidator ID="vstorid" runat="server" ControlToValidate="instorid" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="roomtype">
    <ItemTemplate>
        <asp:Label ID="txtstorid" runat="server" Text='<%#Eval("roomtype") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblstorid" runat="server" width="40px" Text='<%#Eval("roomtype") %>'/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="instorid" width="40px" runat="server"/>
        <asp:RequiredFieldValidator ID="vstorid" runat="server" ControlToValidate="instorid" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="roomcost">
    <ItemTemplate>
        <asp:Label ID="txtstorid" runat="server" Text='<%#Eval("roomcost") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblstorid" runat="server" width="40px" Text='<%#Eval("roomcost") %>'/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="instorid" width="40px" runat="server"/>
        <asp:RequiredFieldValidator ID="vstorid" runat="server" ControlToValidate="instorid" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="patient name">
    <ItemTemplate>
        <asp:Label ID="txtstorid" runat="server" Text='<%#Eval("fname"+"mname"+"lname") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblstorid" runat="server" width="40px" Text='<%#Eval("fname"+"mname"+"lname") %>'/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="instorid" width="40px" runat="server"/>
        <asp:RequiredFieldValidator ID="vstorid" runat="server" ControlToValidate="instorid" Text="?" ValidationGroup="validaiton"/>
    </FooterTemplate>
</asp:TemplateField>
 <asp:TemplateField>
    <EditItemTemplate>
        <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update"  />
        <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel"  Text="Cancel" />
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit"  />
        <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete"  />
    </ItemTemplate>
    <FooterTemplate>
        <asp:Button ID="ButtonAdd" runat="server" CommandName="AddNew"  Text="Add room" ValidationGroup="validaiton" />
    </FooterTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
    </div>
<div >
<br />&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
