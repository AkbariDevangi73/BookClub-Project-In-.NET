<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <aside id="colorlib-hero" class="breadcrumbs">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/back.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>ForgetPassword</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>ForgetPassword</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="colorlib-contact">
     
	<div class="container">
	<div class="row">
	<div class="col-md-10 col-md-offset-5">
			
	 </div>
	</div>
	<div class="col-md-10 col-md-offset-1">
	<div class="contact-wrap">
	<form action="#">

   <div class="row form-group">
	<div class="col-md-12">
	<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email Id*" Width="863px" Height="50px"></asp:TextBox>
    <img src="img/login.png"  height="30px" width="30px"  style="margin-left:830px; margin-top:-70px" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your EmailId.."></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="TextBox1" Display="None"></asp:RegularExpressionValidator>
		</div>
      </div>
       
                                
      <div class="form-group text-center">
	<asp:Button ID="Button1" runat="server" Text="Send" class="btn btn-primary" OnClick="Button1_Click" />
	</div>
	</form>		
	</div>
	</div>
	</div>
	</div>
</asp:Content>


