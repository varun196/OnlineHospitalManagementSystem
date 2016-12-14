<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeBehind="DoctorEditProfile.aspx.cs" Inherits="hospital_management_system.DoctorEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" id="register_page_container" style="align-content:center;margin-left:200px;margin-right:100px;width:1050px;height:1000px;margin-top:50px;padding-top:15px;">
       <div class="well" style="background-color:whitesmoke">
          <form class="form-horizontal" runat="server" style="align-content:center;padding-left:100px;">
               
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
                                      </div>
                  </div>
            
            <div class="form-group">
                <asp:Label CssClass="col-sm-1 control-label" runat="server" ID="address_lb">Address</asp:Label>
                 <div class="col-sm-9">
                    <asp:TextBox CssClass="form-control" ID="Address_tb" runat="server" ></asp:TextBox>
                </div> 
            </div>
            

           
            
            
                    <div class="form-group">
                        <asp:Label runat="server" ID="password_lb" CssClass="col-sm-1 control-label">Password</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="password_tb" required="true" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <asp:Label runat="server" ID="confirm_password_lb" required="true" CssClass="col-sm-1 control-label">Repassword</asp:Label>
                        <div class="col-sm-3">
                            <asp:TextBox runat="server" ID="confirm_password_tb" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator runat="server" ErrorMessage="passwords do not match" ControlToValidate="confirm_password_tb" ControlToCompare="password_tb" CssClass="text-danger" Font-Size="Small"></asp:CompareValidator>
                        </div>
                    </div>
            <div class="form-group" style="padding-left:150px;">
                 <asp:Button runat="server" CausesValidation="false" ID="register_btn" CssClass=" btn btn-danger" BorderStyle="None"  Text="Edit" OnClick="register_btn_Click"/>  
             </div>
            
        </form>
         <label id="ErrorL" runat="server" />
           </div>
    </div>

</asp:Content>
