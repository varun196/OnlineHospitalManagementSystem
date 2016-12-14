<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddDoctor.aspx.cs" Inherits="hospital_management_system.AdminAddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" id="register_page_container" style="align-content:center;margin-left:200px;margin-right:100px;width:1050px;height:1000px;margin-top:50px;padding-top:15px;">
         
         <form class="form-horizontal" runat="server" style="align-content:center;padding-left:100px;">
                   <div class="form-group">               
                        <asp:Label CssClass="col-sm-1 control-label" runat="server" ID="first_name_lb">Name</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox CssClass="form-control" ID="first_name_tb" runat="server"  required="true" ></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox CssClass="form-control" ID="mid_name_tb" runat="server" ></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox CssClass="form-control" ID="last_name_tb" runat="server"  ></asp:TextBox>
                        </div>
                   </div>
                  
                    
                    <div class="form-group">
                         <asp:Label CssClass="col-sm-1 control-label" runat="server" ID="Email" required="true">Email</asp:Label>
                            <div class="col-sm-3">
                                <asp:TextBox CssClass="form-control" required="true" ID="Email_tb" runat="server" TextMode="Email" placeholder="abc@xyz.com"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="email_regex" runat="server" ErrorMessage="farithi nakh" CssClass="text-danger" Font-Size="Small" ValidationExpression="\S+@\S+\.\S+" ControlToValidate="email_tb"></asp:RegularExpressionValidator>
                            </div> 
                    </div>
                  
                   <div class="form-group">
                        <asp:Label CssClass="col-sm-1 control-label" runat="server" ID="Label1">PhoneNo</asp:Label>
                        <div class="col-sm-2">
                             <asp:TextBox CssClass="form-control" ID="phoneno_tb" runat="server"  ></asp:TextBox>
                             <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ErrorMessage="farithi nakh" CssClass="text-danger" Font-Size="Small" ValidationExpression="^([07][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] | 8[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] | 9[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])$" ControlToValidate="phoneno_tb"></asp:RegularExpressionValidator>-->
                        </div>
                  </div>
                   <div class="form-group">
                         <asp:Label runat="server" ID="dob_lb" CssClass="col-sm-1 control-label">BirthDate</asp:Label>
                        <div class="col-sm-4">      
                            <asp:TextBox TextMode="Date" runat="server" Text=" " CssClass="form-control" ID="dob" placeholder="Date of Birth" required="true"/>
                            <asp:RequiredFieldValidator runat="server" ID="dob_require" ControlToValidate="dob" ErrorMessage="*Required" Font-Size="Small" CssClass="text-danger"> </asp:RequiredFieldValidator>
                        </div>
                    </div>
             
                
            <div class="form-group">
                <asp:Label CssClass="col-sm-1 control-label" runat="server" ID="address_lb">Address</asp:Label>
                 <div class="col-sm-9">
                    <asp:TextBox CssClass="form-control" ID="Address_tb" runat="server" ></asp:TextBox>
                </div> 
            </div>
            

            <div class="form-group">
                        <asp:Label runat="server" ID="Label2" CssClass="col-sm-1 control-label">Field</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="Field"  CssClass="form-control" ></asp:TextBox>
                        </div>
            </div>
            <div class="form-group">
                        <asp:Label runat="server" ID="Label3" CssClass="col-sm-1 control-label">Qualification</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="Qualification"  CssClass="form-control" ></asp:TextBox>
                        </div>
            </div>
               <div class="form-group">
                              <asp:Label runat="server" ID="Label4" CssClass="col-sm-1 control-label">Salary</asp:Label>
                             <div class="col-sm-3">
                                 <asp:TextBox runat="server" ID="Salary" required="true" CssClass="form-control" ></asp:TextBox>
                             </div>
                    </div>
            
            
                    <div class="form-group">
                        <asp:Label runat="server" ID="password_lb" CssClass="col-sm-1 control-label">Password</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="password_tb" required="true" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <asp:Label runat="server" ID="confirm_password_lb" required="true" CssClass="col-sm-1 control-label">Reenter password</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="confirm_password_tb" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator runat="server" ErrorMessage="password is not match" ControlToValidate="confirm_password_tb" ControlToCompare="password_tb" CssClass="text-danger" Font-Size="Small"></asp:CompareValidator>
                        </div>
                    </div>
            <div class="form-group" style="padding-left:150px;">
               <asp:Button runat="server" CausesValidation="false" ID="register_btn" CssClass=" btn btn-danger" BorderStyle="None"  Text="Register" OnClick="register_btn_Click"/> 
            </div>
            
        </form>
         <asp:label id="ErrorL" runat="server" ></asp:label>
    </div>

</asp:Content>

