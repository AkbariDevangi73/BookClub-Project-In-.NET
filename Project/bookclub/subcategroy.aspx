<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subcategroy.aspx.cs" Inherits="subcategroy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <div class="row">
	<div class="col-md-3 text-center">
	<div class="product-entry">	
        <div style="margin-left:100px">	
       
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3">
                    <ItemTemplate>

                        <div class="product-img" >
							 <asp:ImageButton ID="ImageButton1"  runat="server" ImageUrl='<%#"~\\img\\"+Eval("img")%>' PostBackUrl='<%# "~/productview.aspx?id="+Eval("id")%>' Height="350px" Width="350px" BorderColor="Black" BorderWidth="3"></asp:ImageButton>	           
                            

                            <p class="tag" style="color:red;background-color:yellow">
                            <%#  (Eval("offer").ToString() == "Yes") ? "Offer" : "" %>
                                </span></p>
               
							 <br />
                            <br />

                            <br />
								<div class="cart">
									<p>
										<%--<span class="addtocart"><a href="productview.aspx"><i class="icon-shopping-cart"></i></a></span> --%>
										<%--<span><a href="productdetail.aspx"><i class="icon-eye"></i></a></span> --%>
										<span><a href='<%# "wishlist.aspx?id="+Eval("id")%>'><i class="icon-heart3"></i></a></span>
										<%--<span><a href="#"><i class="icon-bar-chart"></i></a></span>--%>
									</p>
								</div>
                           
							</div>
						
                    </ItemTemplate>
                    <SeparatorTemplate>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </SeparatorTemplate>
                </asp:DataList>
              
    
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([cnm] = @cnm)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="cnm" QueryStringField="cat" Type="String" />
                    </SelectParameters>
    </asp:SqlDataSource>
              
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
				   					<h1>Sub Category</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Sub Category</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>



