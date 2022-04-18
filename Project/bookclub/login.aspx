<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
  
<div id="colorlib-contact">
     
	<div class="container">
         <h3 style="font-size:48px; color:#000066;"><marquee behavior="alternate" direction="right" ><u>&clubs; Login Here... &clubs;</u></marquee></h3>
	<div class="row">
	<div class="col-md-10 col-md-offset-5">
		
	 </div>
	</div>
         
	<div class="col-md-10 col-md-offset-1">
	<div class="contact-wrap">
	<form action="#">
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" HeaderText="ERROR MESSAGE..."/>
        
   <div class="row form-group">
	<div class="col-md-12">
	<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email Id*" Width="865px" Height="50px"></asp:TextBox>
        <img src="img/login.png"  height="30px" width="30px"  style="margin-left:830px; margin-top:-70px" />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your EmailId.." Display="None"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="TextBox1" Display="None"></asp:RegularExpressionValidator>
		</div>
      </div>
        <script type="text/javascript">
        function mouseoverPass(obj) {
           
           // alert(obj);
            var obj = document.getElementById('ContentPlaceHolder3_TextBox2');
        obj.type = "";
       //alert(obj);
}
function mouseoutPass(obj) {
    var obj = document.getElementById('ContentPlaceHolder3_TextBox2');
    obj.type = "password";
}
       </script>

	<div class="row form-group">
	<div class="col-md-12">
	<asp:TextBox ID="TextBox2" runat="server" Class="form-control" placeholder="Password*" TextMode="Password" Width="864px" Height="50px"></asp:TextBox>
        <img src="img/eye.png"  height="30px" width="30px" onmouseover="mouseoverPass();" onmouseout="mouseoutPass();" style="margin-left:830px; margin-top:-70px" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password.." Display="None"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Must Be 6 Digits.." ForeColor="Black" ValidationExpression="\d{6}" Display="None"></asp:RegularExpressionValidator>
		</div>
		</div>
                                
      <div class="form-group text-center">
	<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" OnClick="Button1_Click"/>
          
	</div>
        <li style="font-size:25px;"><a href="forget.aspx">ForgetPassword</a></li>
        <li style="font-size:25px;"><a href="register.aspx">Register</a></li>
	</form>		
	</div>
	</div>
	</div>
    </div>
	
    
    

</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <aside id="colorlib-hero" class="breadcrumbs">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/back.jpg);">
			   		<div class="overlay"></div>
                      
			   		<div class="container-fluid">
			   			<div class="row">
				   		<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   		<div class="slider-text-inner text-center">
				   		<h1>Login</h1>
				   		<h2 class="bread"><span><a href="Default.aspx">Home</a></span><span>Login</span></h2>
				   	  </div>
                      </div>  
				   	</div>
				   </div>

			   	
			   	</li>
			  	</ul>
        
		  	</div>
        </aside>
</asp:Content>



