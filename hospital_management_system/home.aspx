<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="hospital_management_system.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="Bootstrapx/css/bootstrap.min.css"/>
    <script src="links/home/boot_min.css"></script>
  <script src="Scripts/jquery.min.js"></script>

  <script src="Bootstrap/js/bootstrap.min.js"></script>
    
    <script type="text/javascript" >
        function whitegone() {
            profile.style.backgroundColor = '#6597b3';
            cases.style.backgroundColor = '#6597b3';
        }
    </script>
  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-left:100px;margin-right:100px;height:auto;margin-top:50px;border-style:none;padding-left:10px;padding-top:10px;">
        <div class="row">
            <div class="col-md-3">
        <div class="well" style="align-content:center;height:auto;width:300px;background-color:#e6e6f6;">
            
                 
                    <div style="align-content:center;padding-left:50px;height:auto;">   
                        <asp:Image runat="server" ID="patient_pic"  CssClass="img-circle" ImageUrl="~/images/profile_icon.png" Height="150px" Width="150px"/>
                    </div>
                     <div style="text-align:center;width:250px;margin-top:13px;">
                         <div >
                             <asp:Label runat="server" ID="name" Text="chinmay solanki"></asp:Label>
                         </div>
                         <div>
                             <asp:Label runat="server" ID="occupation" Text="developer"></asp:Label>
                         </div>
                     </div>
                     <div style="padding-left:12px;margin-top:10px;">
                    <ul class="nav nav-pills nav-stacked" style="width:230px;">
                    <li class="active" style="background-color:#6597b3"><a id="profile" data-toggle="pill" href="#about" class="text-center" onmouseover="whitegone();">About</a></li><li class="nav-divider"></li>
                    <li><a id="cases" data-toggle="pill" href="#mycases" class="text-center" onmouseover="whitegone();">My Cases</a></li>
                    </ul>
                   </div>
                        <div style="margin-top:10px;align-content:center;margin-left:65px;">
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Book Appointment</button>
                        </div>
                </div>
                
            </div>
            <div class="col-md-9">
                <form class="form-horizontal" runat="server">
                <div class="well" style="align-content:center;height:auto;width:850px;background-color:#e6e6f6;margin-left:10px;">
                    <div class="tab-content">
                        <div id="about" class="tab-pane fade in active">
                             <blockquote style="background-color: #ededef;"><p>Personal Information</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="name_lb" CssClass="col-sm-2 control-label">Name</asp:Label>
                     <div class="col-sm-6" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_name_lb" CssClass="control-label">sdadj</asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="gender_lb" CssClass="col-sm-2 control-label">Gender</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_gender_lb"  CssClass="control-label">male</asp:Label>
                     </div>
                 </div>
                 
                 <div class="form-group">
                     <asp:Label runat="server" ID="birthdate" CssClass="col-sm-2 control-label">Birthdate</asp:Label>
                     <div class="col-sm-3" style="padding-top:6px;">
                         <asp:Label runat="server" ID="dob_lb"  CssClass="control-label">12-dec-1997</asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="age_lb" CssClass="col-sm-2 control-label">Age</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_age_lb"  CssClass="control-label">12</asp:Label>
                     </div>
                 </div>
                 
                 <div class="form-group">
                     <asp:Label runat="server" ID="ms" CssClass="col-sm-2 control-label">Marital status</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="maritalstatus_lb"  CssClass="control-label">Married</asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="bg_lb" CssClass="col-sm-2 control-label">Bloodgroup</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_bg_lb"  CssClass="control-label">O+</asp:Label>
                     </div>
                 </div>
                             <blockquote style="background-color: #ededef;"><p>Contact Information</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="mailid" CssClass="col-sm-2 control-label">Email</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="email_lb"  CssClass="control-label">cs211997@gmail.com</asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="no" CssClass="col-sm-2 control-label">Phoneno</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="phoneno_lb"  CssClass="control-label">8469949394</asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="add" CssClass="col-sm-2 control-label">Address</asp:Label>
                     <div class="col-sm-10" style="padding-top:6px;">
                         <asp:Label runat="server" ID="address_lb"  CssClass="control-label">juhu,royal palace ,c-908,mumbai</asp:Label>
                     </div>
                 </div>
                
                
                        </div>
                        <div id="mycases" class="tab-pane fade" style="margin-left:25px;margin-top:50px;">
                            <asp:GridView ID="gvTab"   runat="server"   AllowPaging="true"  AutoGenerateColumns="False" GridLines="Both" ShowFooter="True">
                                <HeaderStyle CssClass="text-center" BackColor="#d7d7d7" Height="50px"/>
                                <RowStyle  CssClass="text-center"  Height="25px"/>
                                <FooterStyle  BackColor="#d7d7d7"/>
                                <Columns>
                                    <asp:HyperLinkField DataTextField="caseid"  HeaderText="view" DataNavigateUrlFields="caseid"  DataNavigateUrlFormatString="bill.aspx?caseid={0}"  >
                                        <HeaderStyle width="30px" Height="25px" CssClass="text-center"/>
                                        <ItemStyle CssClass=" text-info"/>
                                    </asp:HyperLinkField>
                                    
                                    <asp:BoundField HeaderText="ailments" DataField="ailments">
                                        <HeaderStyle   Width="175px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center"/>
                                    </asp:BoundField>
                                    
                                    <asp:BoundField HeaderText="Chief Complaint" DataField="chiefcomplaint">
                                        <HeaderStyle   Width="375px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center"/>
                                        
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="date" DataFormatString="{0:dd-MM-yyyy}" DataField="date">
                                        <HeaderStyle  Width="100px"  HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="status" DataField="isactive" >
                                        <HeaderStyle   Width="75px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="text-center"/>
                                    </asp:BoundField>                 
                                </Columns>
                            </asp:GridView>
                            <asp:Label runat="server" ID="grid_not_visible"></asp:Label>
                        </div>
                    </div>
                </div>
                     <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="align-content:center"><p class="text-center">Appointment Form</p></h4>
        </div>
        <div class="modal-body">
            <div class="form-horizontal" style="align-content:center">
                <div class="form-group">
                    <asp:Label runat="server" ID="consult_to_lb" CssClass="col-sm-2 control-label">Consult To</asp:Label>
                     <div class="col-sm-4">
                    <asp:DropDownList runat="server" ID="consult" CssClass="form-control" >
                        <asp:ListItem>Audiologist</asp:ListItem>
                        <asp:ListItem>Cardiologist</asp:ListItem>
                        <asp:ListItem>Dentist</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID ="case_date_lb"  CssClass="col-sm-2 control-label">Appointment Date</asp:Label>
                    <div class="col-sm-3">
                        <asp:TextBox TextMode="Date" runat="server" Text=" " required="true" CssClass="form-control" ID="case_date" placeholder=""/>
                    </div>
                           <div class="col-sm-7"> 
                          <asp:RangeValidator runat="server" ID="case_range" ControlToValidate="case_date"  Display="Dynamic" Type="Date" CssClass="text-danger" ErrorMessage="*Appointment will last for next 3 months from today..! "></asp:RangeValidator>
                     
                        </div>
                </div>
                
                <div class="form-group">
                   <asp:Label runat="server" ID="complint_lb" CssClass="col-sm-2 control-label">Chief Complaint</asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox runat="server" required="true" ID="chief_complaint_tb" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                   
                         </div>
                </div>
            </div>
    
        </div>
           
        <div class="modal-footer">
          <asp:Button runat="server" ID="submit_appointment_btn" Text="submit" CssClass="btn btn-danger" OnClick="submit_appointment_btn_Click"/>
        </div>
          </div>
        </div>
                         </div>
                </form>
            </div>
        </div>
     </div>
     
</asp:Content>
