<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hospital_management_system.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
    <link href="content/login.css" rel="stylesheet" media="screen"/>
    
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script> 
      <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="links/login/login_css.css"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="links/login/login.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="links/login/login_boot_min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin:auto;
  }
  </style>

    <!--Pulling Awesome Font -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
<script src="links/login/font.css"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
<form runat="server">
<div class="container">
    <div class="row" style="padding-left:100px;">
        <div class="col-lg-7">
            <div id="myCarousel" class="carousel slide" data-ride="carousel" style="align-content:center;margin-top:15px;height:330px;width:505px;margin-left:-70px;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/patientcare.jpg" alt="Chania"/>
    </div>

    <div class="item">
      <img src="images/speak-patient.jpg" alt="Chania"/>
    </div>

    <div class="item">
      <img src="images/plus-image.jpg" alt="Flower"/>
    </div>

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </div>
        <div class="col-lg-5">
            <div class="form-login">
            <h4>Login To Your Account.</h4>

            <asp:TextBox runat="server" ID="email_tb" required="true" TextMode="Email" CssClass="form-control input-lg chat-input" placeholder="Email" ></asp:TextBox>
            <br/>

            <asp:TextBox runat="server" ID="password_tb" required="true" TextMode="Password" CssClass="form-control input-lg chat-input" placeholder="password"></asp:TextBox>
            <br/>
                <asp:Label runat="server" ID="error"></asp:Label>
            <div class="wrapper">
            <span class="group-btn">     
                <asp:Button  runat="server" ID="login_btn"  CssClass="btn btn-primary btn-md fa fa-sign-in" Text="login" OnClick="login_Click"></asp:Button>
            </span>
            </div>
            </div>
        
        </div>
    </div>
</div>
</form>

</asp:Content>
