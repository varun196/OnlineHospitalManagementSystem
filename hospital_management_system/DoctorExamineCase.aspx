<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorExamineCase.aspx.cs" Inherits="hospital_management_system.DoctorExamineCase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="align-content:center;margin-top:50px;margin-left:150px;margin-right:150px;">
        <div class="well" style="align-content:center;">
             <form class="form-horizontal" runat="server" style="background-color:#f5f5f5;border-color:aqua;border:thin;" >
              <blockquote style="background-color: #ededef;"><p>Case Summary</p></blockquote>
                <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="Ex_result_lb" CssClass="col-sm-2 control-label">Examination Result</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="Examination_result_tb"  CssClass="form-control " TextMode="MultiLine" required="true"></asp:TextBox>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="report" CssClass="col-sm-2 control-label">Report Required</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="report_tb" TextMode="MultiLine"  CssClass="form-control "></asp:TextBox>
                        </div>
                    </div>
                 </div>
                 
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="ail" CssClass="col-sm-2 control-label">Ailments</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="ailment_tb" TextMode="MultiLine"  CssClass="form-control "></asp:TextBox>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="trplan_lb" CssClass="col-sm-2 control-label">Treatment Plan</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:TextBox runat="server" ID="treatmentplan_tb" TextMode="MultiLine"  CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                 </div>  
                 <div class="row">
                    <div class="form-group">
                        <div class="col-sm-2" style="padding-top:6px;">
                            <asp:Button runat="server" ID="update_case_btn" Text="submit" CssClass="btn btn-danger" OnClick="update_case_btn_Click"/>
                        </div>
                    </div>
                 </div>  
                
             </form>
    </div>
         </div>
</asp:Content>
