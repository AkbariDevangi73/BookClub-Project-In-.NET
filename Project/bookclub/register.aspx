<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
    <div id="colorlib-contact">
	<div class="container">
          <h3 style="font-size:48px; color:#000066;"><marquee behavior="alternate" direction="right"><u>&clubs; Register Here... &clubs;</u></marquee></h3>
	<div class="row">
	<div class="col-md-10 col-md-offset-5">
       
		
			</div>        
			</div>
			<div class="col-md-10 col-md-offset-1">
			<div class="contact-wrap">
						
	<form action="#">
         <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" HeaderText="ERROR MESSAGE..."/>	
	<div class="row form-group">
	<div class="col-md-6 padding-bottom">
	<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Frist Name*" onkeypress="return isalfaKey(event)" Width="405px" Height="50px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your FirstName.." ForeColor="Black" Text="Enter Your First Name.." ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
	 </div>
        
	<div class="col-md-6">
	<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Last Name*" onkeypress="return isalfaKey(event)" Width="419px" Height="50px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your LastName.." ForeColor="Black" Text="Enter Your Last Name.." ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
    </div>
    </div>

	<div class="row form-group">
	<div class="col-md-12">
	<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder=" Email Id*" Width="868px"  Height="50px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Email Id.." ForeColor="Black" ControlToValidate="TextBox3" Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Your Valid Email.." ForeColor="Black" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ></asp:RegularExpressionValidator>
     </div>
	</div>

        <div class="row form-group">
		<div class="col-md-6 padding-bottom">
		<asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Password*" TextMode="Password" Width="403px" Height="50px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter Your Password.." ForeColor="Black" Display="None"></asp:RequiredFieldValidator>
         <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Enter Your Password.." ForeColor="Black" Type="Integer" Display="None"></asp:CompareValidator>--%>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter Your Valid Password.." ForeColor="Black" ControlToValidate="TextBox7" ValidationExpression="[A-Za-z0-9._%+-@$%&*]{6}" Display="None" ></asp:RegularExpressionValidator>
		</div>

		<div class="col-md-6">
		<asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Confrom Password*" Width="416px" TextMode="Password"  Height="50px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter Same As Password.." ForeColor="Black" Display="None"></asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Enter Same As A Password.." ForeColor="Black" Type="Integer" Display="None"></asp:CompareValidator>
        </div>
		</div>

     <div class="row form-group">
  <div class="col-md-12"> 
	<asp:TextBox ID="TextBox6" runat="server" class="form-control" onkeypress="return isNumberKey(event)" placeholder="Contact Number*" Width="864px" Height="50px" MaxLength="10"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Must Be 10 Digits.." ForeColor="Black" Display="None"></asp:RequiredFieldValidator>

     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Must Be 10 Digits.." ForeColor="Black" ValidationExpression="\d{10}" Display="None"></asp:RegularExpressionValidator>
	</div>
	</div>
                 <SCRIPT language=Javascript>
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : evt.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;    
         return true;
      }

      function isalfaKey(evt) {
          var charCode = (evt.which) ? evt.which : evt.keyCode;
          if (charCode > 31 && (charCode < 65 || charCode > 92) && (charCode < 97 || charCode > 122))
              return false;
          return true;
      }
   </SCRIPT>  

	<div class="form-group text-center">
	<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click"/>
			</div>
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
				   					<h1>Register</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Register</span></h2>
				   		</div>
                      </div>
				   	</div>
				  </div>
                        </li>
			  	</ul>
	
			   	</div>
              
		</aside>
</asp:Content>




