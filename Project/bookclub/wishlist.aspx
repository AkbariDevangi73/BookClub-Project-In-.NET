<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="wishlist" %>

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
				   					<h1>WishList</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Wishlist</span></h2>
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
					<div class="col-md-6 col-md-offset-3">
						<div class="product-name">
							<div class="one-eight text-center" style="margin-right:90px">
								<span>Product Details</span>
							</div>
							<div class="one-eight text-center">
								<span>Remove</span>
							</div>
							<div class="one-eight text-center" >
								<span>Cart</span>
							</div>
							
                            
                       </div>

                       <asp:datalist runat="server" DataKeyField="id" DataSourceID="SqlDataSource1"  ID="DataList1" OnDeleteCommand="DataList1_DeleteCommand">
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
                          
							
							
							<div class="one-eight text-center" >
							<div class="display-tc" style="margin-right:210px">
									
                     <asp:ImageButton runat="server" ID="ImageButton1" class="closed" ImageUrl="~\\img\\rm.jpg" style="height:40px; width:40px" CommandName="Delete"></asp:ImageButton>
                    
								</div>
							</div>
                            <div class="one-eight text-center">
								<div class="display-tc" <%--style="margin-right:-100px"--%>>
									  <asp:ImageButton runat="server" ID="ImageButton2"  ImageUrl="~\\img\\cart.png" style="height:30px; width:30px" PostBackUrl='<%# "~/productview.aspx?id="+Eval("pid")%>'></asp:ImageButton>
                     
                      
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
											<%--<div class="col-md-9">
												<input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
											</div>--%>
											<%--<div class="col-md-3" style="margin-right:10px">
                                                <asp:button runat="server" ID="Button1" text="Checkout"  value="Apply Coupon" class="btn btn-primary" />
												<%--<input type="submit" value="Apply Coupon" class="btn btn-primary">--%>
											</div>
										</div>
									</form>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
            
		</div>
   
         
            

       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT * FROM [wishlist] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter SessionField="user" Name="username" Type="String"></asp:SessionParameter>

        </SelectParameters>
    </asp:SqlDataSource>
            
    </asp:Content>


