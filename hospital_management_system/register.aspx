<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hospital_management_system.register" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
        <script src="Scripts/bootstrap.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/jquery-1.9.1-vsdoc.js"></script>  
        <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
        <script src="Scripts/jquery-1.9.1.js"></script>  
        <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/jquery-1.9.1.min.map"></script>
        <script src="Scripts/jquery-3.0.0-vsdoc.js"></script> 
        <script src="Scripts/jquery-3.0.0.js"></script>
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/jquery-3.0.0.min.map"></script>
        <script src="Scripts/jquery-3.0.0.slim.js"></script>   
        <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
        <script src="Scripts/jquery-3.0.0.slim.min.map"></script>
        <script src="Scripts/modernizr-2.8.3.js"></script>
        <script type="text/javascript" src="Scripts/ha-datetimepicker/ha-datetimepicker.min.js"></script>
        <script type="text/javascript" src="Scripts/ha-datetimepicker/ha-datetimepicker.js"></script>
        <link href="ha-datetimepicker.min.css" rel="stylesheet"/>
        <link href="content/Site.css" rel="stylesheet" media="screen"/>
    <link href="content/bootstrap.css" rel="stylesheet" media="screen"/>
    <link href="content/login.css" rel="stylesheet" media="screen"/>
  
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script> 
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container" id="register_page_container" style="align-content:center;margin-left:200px;margin-right:100px;width:1050px;height:2000px;margin-top:50px;padding-top:15px;">
    <form class="form-horizontal" runat="server" style="background-color:#f5f5f5;border-color:aqua;border:thin;" >
        <asp:Panel runat="server" ID="upload_panel">
        <blockquote style="background-color: #ededef;">
            <p>Upload Your Picture</p>
        </blockquote>
        <div class="well">
        
        <div class="form-group" style="align-content:center;height:200px;padding-left:50px;">
            <div class="col-sm-4" style="align-content:center;height:200px;">
                <asp:Image runat="server" ID="patient_pic" CssClass="form-control" ImageUrl="~/images/profile_icon.png" Height="150px" Width="150px" />
            </div>
            <div class="col-sm-8"  style="height:200px;">
            <div style="height:15px;width:100px;">
                <asp:FileUpload ID="fileupload" runat="server"/> 
            </div>
            <div class="col-sm-10"   style="height:15px;padding-top:15px;">
              <asp:Button runat="server" ID="upload_btn" CssClass=" btn btn-danger" BorderStyle="None"  Text="upload" OnClick="upload_btn_Click" CausesValidation="false" />
                <asp:Label runat="server" ID="file_error_lb" CssClass="text-danger " Font-Size="Small"></asp:Label>
            </div>
                </div>
        </div>
        </div>
            </asp:Panel>
        
        <blockquote style="background-color: #ededef;">
            <p>General Information</p>
        </blockquote>
        <div class="well" >
        <div class="form-group">               
            <asp:Label CssClass="col-sm-2 control-label" runat="server" ID="first_name_lb">Name</asp:Label>
                <div class="col-sm-3">
                    <asp:TextBox CssClass="form-control" ID="first_name_tb" runat="server" placeholder="First Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="first_name_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                </div>
                <div class="col-sm-3">
                    <asp:TextBox CssClass="form-control" ID="mid_name_tb" runat="server" placeholder="Middle Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="mid_name_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                </div>
                <div class="col-sm-3">
                    <asp:TextBox CssClass="form-control" ID="last_name_tb" runat="server" placeholder="Last Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="last_name_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                </div>
         </div>
         <div class="form-group">
            <asp:Label runat="server" ID="gender_lb" CssClass="col-sm-2 control-label" >Gender</asp:Label>
                <div class="col-sm-2">
                    <asp:DropDownList runat="server" ID="gender_dl" CssClass="form-control" >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" ID="Marital_status" CssClass="col-sm-2 control-label" >Marital Status </asp:Label>
                <div class="col-sm-2">
                    <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control">
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Living common law</asp:ListItem>
                        <asp:ListItem>Widowed</asp:ListItem>
                        <asp:ListItem>Separated</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                    </asp:DropDownList>
                </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" ID="Label2" CssClass="col-sm-2 control-label" >Blood Group </asp:Label>
                <div class="col-sm-2">
                    <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control" >
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </div>
        </div>
          
         <div class="form-group">
                         <asp:Label runat="server" ID="occ" CssClass="col-sm-2 control-label">Occupation</asp:Label>
                        <div class="col-sm-4">      
                            <asp:TextBox  runat="server"  CssClass="form-control" ID="occupation_tb" placeholder="occupation"/>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="occupation_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        </div>
        </div>
  
         <div class="form-group">
                         <asp:Label runat="server" ID="dob_lb" CssClass="col-sm-2 control-label">BirthDate</asp:Label>
                        <div class="col-sm-4">      
                            <asp:TextBox TextMode="Date" runat="server" Text=" " CssClass="form-control" ID="dob" placeholder="Date of Birth"/>
                            <asp:RequiredFieldValidator runat="server" ID="dob_require" ControlToValidate="dob" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        </div>
        </div>

        </div>
        <blockquote style="background-color: #ededef;">
            <p>Contact Information</p>
        </blockquote>
           <div class="form-group" >
             <asp:Label CssClass="col-sm-2 control-label" runat="server" ID="Label3">PhoneNo</asp:Label>
                <div class="col-sm-3">
                    <asp:TextBox CssClass="form-control" ID="phoneno_tb" runat="server" placeholder="eg.(+91)8888888888" ></asp:TextBox>
                    
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="phoneno_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                            
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="enter valid phoneno..!" CssClass="text-danger" Font-Size="Small" ValidationExpression="^(0|\+91)?[789]\d{9}$" ControlToValidate="phoneno_tb"></asp:RegularExpressionValidator>
                </div>
           </div>
         <div class="form-group">
                <asp:Label CssClass="col-sm-2 control-label" runat="server" ID="address_lb">Address</asp:Label>
                 <div class="col-sm-9">
                    <asp:TextBox CssClass="form-control" ID="Address_tb" runat="server" ></asp:TextBox>
                     
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="Address_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                </div> 
            </div>
        <div class="form-group">
                <asp:Label CssClass="col-sm-2 control-label" runat="server" ID="Email" required="true">Email</asp:Label>
                <div class="col-sm-3">
                    <asp:TextBox CssClass="form-control" ID="Email_tb" runat="server" TextMode="Email" placeholder="abc@xyz.com" OnTextChanged="Email_tb_TextChanged" AutoPostBack="true"></asp:TextBox>
                    
                    
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="Email_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                    <asp:RegularExpressionValidator ID="email_regex" runat="server" ErrorMessage="Enter valid emailid..!" CssClass="text-danger" Font-Size="Small" ValidationExpression="\S+@\S+\.\S+" ControlToValidate="email_tb"></asp:RegularExpressionValidator>
                </div>
            <div class="col-sm-3">
                <asp:Label runat="server" ID="email_error"></asp:Label>
            </div> 
            </div>
        <blockquote style="height:1px;background-color: #ededef;">

        </blockquote>
        
            <div class="form-group">
                        <asp:Label runat="server" ID="password_lb" CssClass="col-sm-2 control-label">Password</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="password_tb"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="password_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                        </div>
             </div>
                    
              <div class="form-group">
                        <asp:Label runat="server" ID="confirm_password_lb"  CssClass="col-sm-2 control-label">Repassword</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="confirm_password_tb" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="confirm_password_tb" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        
                            <asp:CompareValidator runat="server" ErrorMessage="password is not matched" ControlToValidate="confirm_password_tb" ControlToCompare="password_tb" CssClass="text-danger" Font-Size="Small"></asp:CompareValidator>
                        </div>
            </div> 
            <div class="form-group">
                <asp:Label runat="server" ID="captcha_lb" CssClass="col-sm-2 control-label">Enter</asp:Label>
                <div class="col-sm-4">
                <asp:TextBox ID="txtCaptcha" runat="server" CssClass=" form-control" ></asp:TextBox>
                  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ControlToValidate="txtCaptcha" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                            
                <asp:Label ID="lblErrorMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label>
                
                <cc1:CaptchaControl ID="cptCaptcha" runat="server" CaptchaBackgroundNoise="Low" CaptchaLength="5" CaptchaHeight="60" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="5"
                          CaptchaMaxTimeout="240" FontColor = "#529E00" />
                 </div>
                
            </div>
        <blockquote style="height:1px;background-color: #ededef;">

        </blockquote>
        
             <div class="form-group" style="padding-left:450px;">
                <asp:Button runat="server" ID="register_btn" CssClass=" btn btn-danger" BorderStyle="None"  Text="Register" OnClick="register_btn_Click" Enabled="true"/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" CausesValidation="false" ID="reset_btn" CssClass="btn btn-danger" BorderStyle="None" Text="reset" PostBackUrl="~/register.aspx" />
            </div>
    </form>
</div>    

</asp:Content>
