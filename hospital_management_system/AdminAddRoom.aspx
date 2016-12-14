<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddRoom.aspx.cs" Inherits="hospital_management_system.AdminAddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="align-content:center;margin-top:50px;margin-left:150px;margin-right:150px;">
        <div class="well" style="align-content:center;">
             <form class="form-horizontal" runat="server" style="background-color:#f5f5f5;border-color:aqua;border:thin;" >
              <blockquote style="background-color: #ededef;"><p>Add Room</p></blockquote>
                
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="report" CssClass="col-sm-1 control-label">RoomType</asp:Label>
                        <div class="col-sm-3" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="type_tb"   CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="trplan_lb" CssClass="col-sm-1 control-label">Cost</asp:Label>
                        <div class="col-sm-3" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="Cost_tb"   CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                 </div>  
                 <div class="row">
                    <div class="form-group">
                        <div class="col-sm-2" style="padding-top:6px;">
                            <asp:Button runat="server" ID="update_case_btn" Text="submit" CssClass="btn btn-danger" OnClick="Add_click"/>
                        </div>
                    </div>
                 </div>  
                
             </form>
    </div>
         </div>
</asp:Content>
