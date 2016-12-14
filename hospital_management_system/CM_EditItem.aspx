<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CM_EditItem.aspx.cs" Inherits="hospital_management_system.CM_EditItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" id="register_page_container" style="align-content:center;margin-left:200px;margin-right:100px;width:1050px;height:1000px;margin-top:50px;border-style:outset;border-color:black;padding-top:15px;">
        <form class="form-horizontal" runat="server" style="align-content:center;padding-left:100px;">
            
                    <div class="form-group">
                        <asp:Label runat="server" ID="Name_lb" CssClass="col-sm-1 control-label">Name</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="Name_tb"  CssClass="form-control" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="Cost_lb" CssClass="col-sm-1 control-label">Cost Per Unit</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="Cost_tb" CssClass="form-control" ></asp:TextBox>
                        </div>
                    </div>
                    
                  
            <div class="form-group" style="padding-left:150px;">
                <asp:Button runat="server" ID="register_btn" CssClass=" btn btn-danger" BorderStyle="None"  Text="Update" OnClick="register_btn_Click"/>
            </div>
            
        </form>
         <asp:label id="ErrorL" runat="server" ></asp:label>
    </div>

</asp:Content>

