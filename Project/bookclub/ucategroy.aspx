<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ucategroy.aspx.cs" Inherits="ucategroy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
    <div style="margin-left:120px">	
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            
            <div class="product-img" >
							  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#"~\\img\\"+Eval("img")%>'  PostBackUrl='<%# "~/subcategroy.aspx?cat="+Eval("cnm")%>'  Height="350px" Width="350px" BorderColor="Black" BorderWidth="3"></asp:ImageButton>	           							
								<div class="cart">
									
								</div>
							</div>
						

     <div style="margin-left:140px; font-size:x-large; font-style:oblique" >	
            <asp:Label ID="cnmLabel" runat="server" Text='<%# Eval("cnm") %>' ForeColor="Black" Font-Bold="True"/>
            <br />
         <br />	

            
					
         </div>
        </ItemTemplate>
    <SeparatorTemplate>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </SeparatorTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT [cnm], [img] FROM [category]"></asp:SqlDataSource>
   

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
				   					<h1>Category</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Category</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>


