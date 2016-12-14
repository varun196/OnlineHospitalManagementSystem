<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorHome.aspx.cs" Inherits="hospital_management_system.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
    <div class="col-md-10" style="margin-left:250px;margin-right:100px;margin-top:50px;">
                <form class="form-horizontal" runat="server">
                <div class="well" style="align-content:center;height:auto;width:850px;background-color:#e6e6f6;margin-left:10px;">
                    <div class="tab-content">
                        <div id="about" class="tab-pane fade in active">
                             <blockquote style="background-color: #ededef;"><p>Personal Information</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="name_lb" CssClass="col-sm-2 control-label">Name</asp:Label>
                     <div class="col-sm-6" style="padding-top:6px;">
                         <asp:Label runat="server" ID="doctor_name_lb" CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 
                 <div class="form-group">
                     <asp:Label runat="server" ID="birthdate" CssClass="col-sm-2 control-label">Birthdate</asp:Label>
                     <div class="col-sm-3" style="padding-top:6px;">
                         <asp:Label runat="server" ID="dob_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="age_lb" CssClass="col-sm-2 control-label">Age</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="doctor_age_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="q" CssClass="col-sm-2 control-label">Qualification</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="doctor_qualification_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="field" CssClass="col-sm-2 control-label">Field</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="doctor_field_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="ex" CssClass="col-sm-2 control-label">Experience</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="Experience_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 
                 <blockquote style="background-color: #ededef;"><p>Contact Information</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="mailid" CssClass="col-sm-2 control-label">Email</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="email_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="no" CssClass="col-sm-2 control-label">Phoneno</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="phoneno_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="add" CssClass="col-sm-2 control-label">Address</asp:Label>
                     <div class="col-sm-10" style="padding-top:6px;">
                         <asp:Label runat="server" ID="address_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                
                
                        </div>
    
</div>
                    </div>
    </form>
                                    </div>
       
</asp:Content>
