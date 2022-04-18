<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

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
				   					<h1>Cart</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span><a href="productview.aspx">Product</a></span> <span>Shopping Cart</span></h2>
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

		<div class="colorlib-shop">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-12 col-md-offset-1">
						<div class="process-wrap">
							<div class="process text-center active" >
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-15 col-md-offset-1" >
						<div class="product-name">
							<div class="one-eight text-center" style="margin-right:90px">
								<span>Product Details</span>
							</div>
							<div class="one-eight text-center" >
								<span>Price</span>
							</div>
							<div class="one-eight text-center" >
								<span>Quantity</span>
							</div>
							<div class="one-eight text-center" style="padding-left:90px">
								<span>Total</span>
							</div>
							<div class="one-eight text-center" style="margin-left:190px">
								<span>Remove</span>
							</div>
                            <div class="one-eight text-center" style="padding-left:20px">
								<span>Edit</span>
							</div>
                            
                       </div>

                        <asp:datalist runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand" ID="DataList1">
                       <ItemTemplate>
                          
		
						
						<div class="product-cart">
                             <asp:HiddenField runat="server" ID="HiddenField1" Value='<%# Eval("id") %>'></asp:HiddenField>
							<div class="one-forth">
                                 <asp:Image runat="server" class="product-img" id="img1" ImageUrl='<%# "~\\img\\"+Eval("img") %>' Height="100" Width="100" ></asp:Image>
								<%--<div class="product-img" style="background-image: url(images/item-8.jpg);">
								</div>--%>
								<div class="display-tc" style=" width: 120px; margin-left:-30px">
								
									<h3><asp:Label ID="Label2" runat="server" Text='<%# Eval("pnm") %>' /></h3>
								</div>
							</div>
                            <asp:HiddenField runat="server" ID="HiddenField2" Value='<%# Eval("price") %>'></asp:HiddenField>
							<div class="one-eight text-center"  >
								<div class="display-tc" style="margin-left:50px">
									<span class="price">Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' /></span>
								</div>
							</div>
							<div class="one-eight text-center" style="margin-right:50px">
								<div class="display-tc">
                                    <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("qty") %>' />--%>
                                    <asp:TextBox runat="server"  id="quantity" name="quantity"  Text='<%# Eval("qty") %>' class="form-control input-number text-center" value="1" min="1" max="100"></asp:TextBox>

									<%--<input type="text" id="quantity" name="quantity"  Text='<%# Eval("qty") %>' class="form-control input-number text-center" value="1" min="1" max="100">--%>
								</div>
							</div>
							<div class="one-eight text-center" style="margin-right:150px">
								<div class="display-tc" >
									<span class="price">Rs. <asp:Label ID="Label4" runat="server" Text='<%# Eval("total") %>' /></span>
								</div>
							</div>
							<div class="one-eight text-center" >
							<div class="display-tc" style="margin-right:210px">
									
                     <asp:ImageButton runat="server" ID="ImageButton1" class="closed" ImageUrl="~\\img\\rm.jpg" style="height:40px; width:40px" CommandName="Delete"></asp:ImageButton>
                    
								</div>
							</div>
                            <div class="one-eight text-center">
								<div class="display-tc" <%--style="margin-right:-100px"--%>>
									  <asp:ImageButton runat="server" ID="ImageButton2"  ImageUrl="~\\img\\editt.jpg" style="height:30px; width:30px" CommandName="Update"></asp:ImageButton>
                     
                      
								</div>
							</div>
						</div>
            </ItemTemplate>
    </asp:datalist>
            
    
					</div>
				</div>
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="total-wrap">
							<div class="row">
								<div class="col-md-8">
									<form action="#">
										<div class="row form-group">
											<div class="col-md-9">
												<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
											</div>
											<div class="col-md-3" style="margin-right:10px">
                                                <asp:button runat="server" ID="Button1" text="Checkout"  value="Apply Coupon" class="btn btn-primary" OnClick="Button1_Click" />
												<%--<input type="submit" value="Apply Coupon" class="btn btn-primary">--%>
											</div>
										</div>
									</form>
								</div>
								<div class="col-md-3 col-md-push-1 text-center">
									<div class="total">
										
                                            <asp:formview runat="server" id="aaa" DataSourceID="sqld3" > <ItemTemplate>
                                                <div class="sub">
											<%--<p><span>Subtotal:</span> <span>Rs.<%# Eval("total") %></span></p>--%>
											
											
                                                    </div>
										<div class="grand-total">
											<p><span><strong>SubTotal:</strong></span> <span>Rs.<%# Eval("total") %></span></p>
										</div>
                                                 </ItemTemplate>
                                                </asp:formview>
                                            <asp:sqldatasource runat="server" id="sqld3" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT sum(total) as total FROM [cart1] WHERE ([username] = @username)">
                                                <SelectParameters>
                                                     <asp:SessionParameter SessionField="user" Name="username" Type="String"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:sqldatasource>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
            
		</div>
   
         
            <br />
<br />
       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT * FROM [cart1] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter SessionField="user" Name="username" Type="String"></asp:SessionParameter>

        </SelectParameters>
    </asp:SqlDataSource>
            
    </asp:Content>


