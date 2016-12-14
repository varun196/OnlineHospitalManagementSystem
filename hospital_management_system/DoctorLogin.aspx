<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="hospital_management_system.DoctorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <link href="content/login.css" rel="stylesheet" media="screen"/>
    
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script> 
    
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>
    <form id="form1" runat="server">
    <div style="position:center;">
        
            <div class="form-login" style="margin-left:400px;margin-top:200px;">
            <h4>Login To Your Account.</h4>

            <asp:TextBox runat="server" ID="email_tb" required="true"  CssClass="form-control input-lg chat-input" placeholder="Email" ></asp:TextBox>
            <br/>

            <asp:TextBox runat="server" ID="password_tb" required="true" TextMode="Password" CssClass="form-control input-lg chat-input" placeholder="password"></asp:TextBox>
            <br/>
                <asp:Label runat="server" ID="error"></asp:Label><br />
            <div class="wrapper">
            <span class="group-btn">     
                <asp:Button  runat="server" ID="login_btn"  CssClass="btn btn-primary btn-md fa fa-sign-in" Text="login" OnClick="login_btn_Click"></asp:Button>
            </span>
            </div>
            </div>
        
        </div>
    
    
    </form>
</body>
</html>
