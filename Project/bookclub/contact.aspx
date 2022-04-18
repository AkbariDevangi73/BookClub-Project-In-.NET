<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

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
				   		<h1>FeedBack</h1>
				   		<h2 class="bread"><span><a href="Default.aspx">Home</a></span><span>FeedBack</span></h2>
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
         <h3 style="font-size:48px; color:#000066;"> <marquee behavior="alternate" direction="right"><u>&clubs; FeedBack Form... &clubs;</marquee></u></h3>
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
	<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email Id*" Width="405px" Height="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Email Id.." ForeColor="Black" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Your Valid Email.." ForeColor="Black" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ></asp:RegularExpressionValidator>
	 </div>
        
		<div class="col-md-6">
		<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Contact Number*" onkeypress="return isNumberKey(event)" Width="419px" Height="50px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Must Be 10 Digits.." ForeColor="Black" Display="None"></asp:RequiredFieldValidator>

     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Must Be 10 Digits.." ForeColor="Black" ValidationExpression="\d{10}" Display="None"></asp:RegularExpressionValidator>
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
		</div>
		</div>

	<div class="row form-group">
	<div class="col-md-12">
	<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Message*" TextMode="MultiLine" Width="868px"  Height="143px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your Message." ForeColor="Black" Display="None"></asp:RequiredFieldValidator>
		</div>

		</div>
        <div class="form-group text-center">
	<asp:Button ID="Button1" runat="server" Text="Send Message" class="btn btn-primary" OnClick="Button1_Click"/>
			</div>
        </div>
         </div>
        </div>
			</div>
    <style>
       #map {
        height: 600px;
        width: 80%;
        border:solid;
        border-color:black;
        margin-left:120px;
        margin-bottom:180px;
       }
    </style>
 <div id="map"></div>
    <script>
      function initMap() {
          var uluru = { lat: 21.52998114, lng: 70.4542722 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 20,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA3LrJUWIe1gGzXdEBPeMuFJOCoVXs_w0g&callback=initMap">
    </script>
    <%--<div id="map" class="colorlib-map"></div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>--%>

</asp:Content>


