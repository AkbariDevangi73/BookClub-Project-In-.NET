<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="categroy.aspx.cs" Inherits="Admin_categroy" %>


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
				   					<h1>Add Category</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Category</span></h2>
				   				</div>
                             </div>
				   			</div>
				   		</div>
                       </li>
			  	</ul>
			   		</div>
		</aside>
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
       <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Category Name*" Width="864px" Height="50px"></asp:TextBox>
	  </div>
	  </div>

        <div class="row form-group">
		<div class="col-md-12">
      <asp:fileupload runat="server" ID="FileUpload1"  class="form-control" Width="866px" Height="50px"></asp:fileupload>
	  </div>
	  </div>             
        
       
            
              <div class="form-group text-center">
            <asp:button runat="server" text="Add"  class="btn btn-primary" Id="btn" OnClick="btn_Click"/>
           </div>
                               
		</form>		
		</div>
		</div>
		</div>
		</div>
   
  </asp:Content>






