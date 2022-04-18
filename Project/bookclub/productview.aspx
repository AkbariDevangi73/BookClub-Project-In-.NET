<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="productview" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <style type="text/css">
        .Star
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
    </style>
			 <div class="colorlib-shop">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 col-md-offset-1">
						<div class="product-detail-wrap">
							<div class="row">
								<div class="col-md-5">
									<div class="product-entry">
                                        
										<div class="product-img">
                    <style>
* {
  box-sizing: border-box;
}

.zoom {
  padding: 50px;
  background-color: white;
  transition: transform .2s;
  width: 350px;
  height: 350px;
  margin: 0 auto;
}

.zoom:hover {
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
}
</style>
                                          

                                           
                                            <asp:Image runat="server" id="img1"  Height="400" Width="340" class="zoom"></asp:Image>
											<%--<p class="tag"><span class="sale">Sale</span></p>--%>
                                                  
                                           
										</div>
										
									</div>
								</div>
								<div class="col-md-7">
									<div class="desc">
										<h3><asp:Label ID="Label1" runat="server"   style="font-size:30px"/></h3>
                                       
                                         <p class="price">
                                            <asp:Literal ID="Literal1" runat="server" Text="Rs."></asp:Literal><asp:Label ID="offlabel" runat="server"  />
                                          <br />
                                            <asp:Literal ID="Literal2" runat="server" Text="Rs." ></asp:Literal><asp:Label ID="Label2" runat="server"  style="color:red" Font-Strikeout="True" />
                                                              
                                                <br />
                                               
                                            <asp:Literal ID="Literal3" runat="server" Text="You get"></asp:Literal><asp:Label ID="dislbl" runat="server" Width="20px" style="color:red" /> <asp:Literal ID="Literal4" runat="server" Text="% off" > </asp:Literal>
					                      </p> 
											
									
                                        <p class="price">
											<span><b>Stock.</b><asp:Label ID="Label3" runat="server"   /></span> 
                                            </p>
                                        <%if (Session["user"] == null)
                                            { %>
                                        <%} %>
                                        <%else
    { %>
                                            <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar">
    </cc1:Rating>
    <br />
    <asp:Label ID="lblRatingStatus" runat="server" Text=""></asp:Label>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT [id], [pid], [pnm], [price], [stock], [img], [des], [cnm] FROM [product] WHERE ([id] = @id)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
								  	<script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script> 
                                        <%} %>
											
										</p>
										<p>  <asp:Label ID="Label4" runat="server"  /></p>
										
										
										<div class="row row-pb-sm">
											<div class="col-md-4">
                                   <div class="input-group">
                                    	<span class="input-group-btn">
                                       	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field=""  onclick="var effect = document.getElementById('ContentPlaceHolder3_quantity'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;">
                                          <i class="icon-minus2"></i>
                                       	</button>
                                   		</span>
                                    <asp:TextBox runat="server" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100"></asp:TextBox>
                                       <%--	<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">--%>
                                    	<span class="input-group-btn">
                                       	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="" onclick="var effect = document.getElementById('ContentPlaceHolder3_quantity');var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;" >
                                            <i class="icon-plus2"></i>
                                        </button>
                                    	</span>
                                 	</div>
                        			</div>
										</div>
										</div>
                                        <asp:Button runat="server" Text="Add to cart" ID="Button1" class="btn btn-primary btn-addtocart" OnClick="Button1_Click"></asp:Button>
                                   
                                 
										<%--<p><a href="cart.aspx" class="btn btn-primary btn-addtocart" style="width:150px"><i class="icon-shopping-cart" ></i>Add to Cart</a></p>--%>
									</div>
								</div>
							</div>
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
				   					<h1>Product</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Product</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>



