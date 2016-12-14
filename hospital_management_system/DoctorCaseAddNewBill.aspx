<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorCaseAddNewBill.aspx.cs" Inherits="hospital_management_system.DoctorCaseAddNewBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-content:center;margin-top:50px;margin-left:150px;margin-right:150px;">
        <div class="well" style="align-content:center;">
             <form class="form-horizontal" runat="server" style="background-color:#f5f5f5;border-color:aqua;border:thin;" >
                <blockquote style="background-color: #ededef;"><p>Add Prescription</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="drug" CssClass="col-sm-2 control-label">Drug Name</asp:Label>
                     <div class="col-sm-3">
                         <asp:DropDownList runat="server" ID="itemname_dd" required="true" CssClass="form-control">
                             
                         </asp:DropDownList>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" CssClass="col-sm-2 control-label">Quantity</asp:Label>
                     <div class="col-sm-3">
                         <asp:TextBox runat="server" ID="qty_tb" TextMode="Number" required="true" CssClass="form-control"></asp:TextBox>
                     </div>
                 </div>
                 <div class="form-group">
                     <div class="col-sm-2">
                         <asp:Button runat="server" Text="Add" ID="add_item_into_bill_btn" CssClass="btn btn-danger" OnClick="add_item_into_bill_btn_Click" />
                     </div>
                 </div>
                 <asp:Label runat="server" ID="l1"></asp:Label>
                 <asp:Label runat="server" ID="grid_not_visible" CssClass="control-label"></asp:Label>
                 <asp:GridView runat="server" ID="item_grid" AutoGenerateColumns="false"   GridLines="Both" ShowFooter="True">
                     <HeaderStyle CssClass="text-center" BackColor="#99ccff" />
                                <RowStyle  CssClass="text-center" />
                                <FooterStyle  BackColor="#99ccff"/>
                               <Columns>
                                    <asp:BoundField ItemStyle-Width="100px" DataField="itemid" HeaderText="Id" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                        <asp:BoundField ItemStyle-Width="100px" DataField="name" HeaderText="Drug" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                        <asp:BoundField ItemStyle-Width="100px" DataField="qty" HeaderText="Quantity" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                        <asp:BoundField ItemStyle-Width="100px" DataField="cost_per_item" HeaderText="CostperItem" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                       
                               </Columns>
                 </asp:GridView>
             </form>
        </div>
    </div>       
</asp:Content>
