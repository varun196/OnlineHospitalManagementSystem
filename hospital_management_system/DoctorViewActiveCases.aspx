<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorViewActiveCases.aspx.cs" Inherits="hospital_management_system.DoctorViewActivePatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-left:250px;margin-top:100px;margin-right:200px;"> 
           <form runat="server" id="form1" >
         <asp:GridView ID="gvTab"   runat="server"   AllowPaging="true"  AutoGenerateColumns="False" GridLines="Both" ShowFooter="True">
                                <HeaderStyle CssClass="text-center" BackColor="WhiteSmoke" Height="50px" />
                                <RowStyle  CssClass="text-center" Height="30px" />
                                <FooterStyle BackColor="WhiteSmoke"/>
                                <Columns>
                                    <asp:HyperLinkField DataTextField="caseid"  HeaderText="view" DataNavigateUrlFields="caseid"  DataNavigateUrlFormatString="DoctorCase.aspx?caseid={0}"  >
                                        <HeaderStyle  Width="75px" Height="25px" CssClass="text-center"/>
                                        <ItemStyle CssClass=" text-info "/>
                                    </asp:HyperLinkField>
                                    <asp:BoundField HeaderText="Patientno" DataField="patientid" >
                                        <HeaderStyle  Width="75px" Height="25px" CssClass="text-center"/>
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="fname" DataField="fname" >
                                        <HeaderStyle  Width="75px" Height="25px" CssClass="text-center"/>
                                    </asp:BoundField>

                                    <asp:BoundField HeaderText="ailments" DataField="ailments">
                                        <HeaderStyle  Width="175px" Height="25px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center"/>
                                    </asp:BoundField>
                                    
                                    <asp:BoundField HeaderText="Chief Complaint" DataField="chiefcomplaint">
                                        <HeaderStyle  Width="375px" Height="25px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center"/>
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="date" DataFormatString="{0:dd-MM-yyyy}" DataField="date">
                                        <HeaderStyle  Width="100px" Height="25px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                                    </asp:BoundField>
                                                    
                                </Columns>
                            </asp:GridView>
                            <asp:Label runat="server" ID="grid_not_visible"></asp:Label>
    </form>
        </div>
</asp:Content>
