<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="offer.aspx.cs" Inherits="gallery1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
    <div class="row">
	<div class="col-md-3 text-center">
	<div class="product-entry">	
       
		<div style="margin-left:100px">					
    <asp:datalist runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
          <div class="product-img" >
							 <asp:ImageButton ID="ImageButton1"  runat="server" ImageUrl='<%#"~\\img\\"+Eval("img")%>' PostBackUrl='<%# "~/productview.aspx?id="+Eval("id")%>' Height="350px" Width="350px" BorderColor="Black" BorderWidth="3"></asp:ImageButton>	           
							<p class="tag"><span class="new">Offer</span></p>
								<div class="cart">
									<%--<p>
										<span class="addtocart"><a href="cart.aspx"><i class="icon-shopping-cart"></i></a></span> 
										<span><a href="productview.aspx"><i class="icon-eye"></i></a></span> 
										<span><a href="#"><i class="icon-heart3"></i></a></span>
										<span><a href="wishlist.aspx"><i class="icon-bar-chart"></i></a></span>
									</p>--%>
								</div>
							</div>
							
						</div>
					</div>
              <br />
<br />
           
              <br />
<br />
            <%--offer:
            <asp:Label ID="offerLabel" runat="server" Text='<%# Eval("offer") %>' />
            <br />
            img:
            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
            <br />
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
<br />--%>
        </ItemTemplate>
        <SeparatorTemplate>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </SeparatorTemplate>
    </asp:datalist>
           
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT [offer], [img], [id] FROM [product] WHERE ([offer] = @offer)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Yes" Name="offer" Type="String" />
        </SelectParameters>
        
    </asp:SqlDataSource>
		
     <div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
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
				   					<h1>Our Offer</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Offer</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>



