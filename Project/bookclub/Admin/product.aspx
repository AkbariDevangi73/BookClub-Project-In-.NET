<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Admin_product" %>

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
				   					<h1>Add Product</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Product</span></h2>
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
			<div class="col-md-6">
            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Width="865px" Height="50px" ></asp:DropDownList>
           
          </div>
          </div> 
	  <div class="row form-group">
	<div class="col-md-6">
   <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Product Id*" Width="864px" Height="50px"></asp:TextBox>
	</div>
    </div>
  <div class="row form-group">
	<div class="col-md-6">
	 <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Product Name*" Width="860px" Height="50px"></asp:TextBox>
        </div>
      </div>
    <div class="row form-group">
	<div class="col-md-12">
   <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Price*" Width="860px" Height="50px" MaxLength="10"></asp:TextBox>
	</div>
	</div>

	<div class="row form-group">
	<div class="col-md-6 padding-bottom">
	<asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Stock*"  Width="859px" Height="50px"></asp:TextBox>
        
      </div>  
	</div>
             <div class="row form-group">
		<div class="col-md-12">
      <asp:fileupload runat="server" ID="FileUpload1"  class="form-control" Width="859px" Height="50px"></asp:fileupload>
	  </div>
	  </div> 
        
     
          
             <div class="row form-group">
			<div class="col-md-6">
			<asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Description*" Width="857px"  Height="50px" margin-left="50px" TextMode="MultiLine"></asp:TextBox>
				</div>
				</div>
                                 
           <div class="row form-group">
           <div class="col-md-12">     
           
           <asp:radiobutton runat="server" ID="radio1" class="form-control" GroupName="r1" Text="Yes" Width="855px" Height="45px"></asp:radiobutton>
         <asp:radiobutton runat="server" ID="radio2" class="form-control" GroupName="r1" Text="No" Width="856px" Height="45px"></asp:radiobutton>
        </div>
          </div>

        <div class="row form-group">
	<div class="col-md-6">
   <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="Discount*" Width="860px" Height="50px"></asp:TextBox>
	</div>
    </div>
            <div class="form-group text-center">
            <asp:button runat="server" text="ADD"  class="btn btn-primary" Id="btn" OnClick="btn_Click"  />
           </div>
                               
		</form>		
		</div>
		</div>
		</div>
		</div>
    
</asp:Content>


