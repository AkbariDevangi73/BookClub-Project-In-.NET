<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="ckackout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
		<div class="colorlib-shop">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-10 col-md-offset-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center active">
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
				<div class="row">
					<div class="col-md-7">
						<div method="post" class="colorlib-form">
							<h2>Billing Details</h2>
                             <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" HeaderText="ERROR MESSAGE..."/>	
		              	<div class="row">
			               <div class="col-md-12">
			                  <div class="form-group">
			                  	
			                     <div class="form-field">
			                     	<%--<i class="icon icon-arrow-down3"></i>--%>
			                       <%-- <select name="people" id="people" class="form-control">
				                      	<option value="#">Select country</option>
				                        <option value="#">Alaska</option>
				                        <option value="#">China</option>
				                        <option value="#">Japan</option>
				                        <option value="#">Korea</option>
				                        <option value="#">Philippines</option>
			                        </select>--%>
			                     </div>
			                  </div>
			               </div>
			               <div class="form-group">
									<div class="col-md-6">
                                        <asp:textbox runat="server" id="Textbox1" class="form-control"  placeholder="Your firstname*" Width="267px" ReadOnly="true" ></asp:textbox>
                                       
								 <%-- <asp:textbox runat="server" id="fname" class="form-control"  placeholder="Your firstname"></asp:textbox>--%>
									</div>

									<div class="col-md-6">
										
                                        <asp:textbox runat="server"  id="Textbox2" class="form-control" placeholder="Your lastname*" Width="262px" ReadOnly="true"></asp:textbox>
                                        
										</div>
								</div>
								<div class="col-md-10">
									<div class="form-group">
                                         <asp:textbox runat="server" id="Textbox3" class="form-control" placeholder="Email*" Width="577px" ReadOnly="true"></asp:textbox>
			                  </div>
			               </div>
			               <div class="col-md-12">
									<div class="form-group">
								 <asp:textbox runat="server" id="Textbox4" class="form-control" placeholder="Contact*" Width="574px" ReadOnly="true"></asp:textbox>
			                    	 </div>
			                  <div class="form-group">
                                  <asp:textbox runat="server"  id="Textbox5" class="form-control" placeholder="Your Address*" TextMode="MultiLine" ></asp:textbox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Address.." ForeColor="Black" Text="Enter Your Address.." ControlToValidate="TextBox5" Display="None"></asp:RequiredFieldValidator>
			                    	<%--<input type="text" id="Textbox5" class="form-control" placeholder="Your Address*">--%>
			                  </div>

			               </div>
			               <div class="col-md-12">
									<div class="form-group">
								 <asp:textbox runat="server" id="Textbox6" class="form-control" placeholder="Tow or City*"  onkeypress="return isalfaKey(event)" Width="582px"></asp:textbox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your City.." ForeColor="Black" Text="Enter Your City.." ControlToValidate="TextBox6" Display="None"></asp:RequiredFieldValidator>
			                    </div>
			               </div>
			               <div class="form-group">
									<div class="col-md-6">
									<asp:textbox runat="server" id="Textbox7" class="form-control" placeholder="Your County*" onkeypress="return isalfaKey(event)" Width="258px"></asp:textbox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Country.." ForeColor="Black" Text="Enter Your Country.." ControlToValidate="TextBox7" Display="None"></asp:RequiredFieldValidator>
									</div>

									<div class="col-md-6">
                                      <asp:textbox runat="server" id="Textbox8" class="form-control"  placeholder="Your State*"  onkeypress="return isalfaKey(event)" Width="269px"></asp:textbox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your State.." ForeColor="Black" Text="Enter Your State.." ControlToValidate="TextBox8" Display="None"></asp:RequiredFieldValidator>
								   </div>
								</div>
								<div class="form-group">
									<div class="col-md-6">
									 <asp:textbox runat="server" id="Textbox9" class="form-control" placeholder="Zip* / Postal*" onkeypress="return isNumberKey(event)" Width="255px"></asp:textbox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please Enter Must Be 6 Digits.." ForeColor="Black" SetFocusOnError="False" Display="None"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please Enter Must Be 6 Digits.." ForeColor="Black" ValidationExpression="\d{6}" Display="None"></asp:RegularExpressionValidator>
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
							 
		              </div>
		            </div>
                        
					</div>
                    
					<div class="col-md-5">
						<div class="cart-detail">
							<h2>Cart Total</h2>
							
                               
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT sum(total) total FROM [cart2] WHERE (([oderstutas] = @oderstutas) AND ([username] = @username))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="0" Name="oderstutas" Type="Int32"></asp:Parameter>
                                    <asp:SessionParameter SessionField="user" Name="username" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
								
									<%--<span >Subtotal</span> <span>Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("total") %>' />500</span>--%>
									
                                    <asp:datalist runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <ul style="width: 400px;">
										<%--<li>1 X <span> <asp:Label ID="Label1" runat="server" Text='<%# Eval("pnm") %>' /></span><span><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /></span></li>--%>
										<%--<li><span>1 x Product Name</span> <span>$78.00</span></li>--%>
                <li><span><%# Eval("qty") %> x <%# Eval("pnm") %></span> <span>Rs. <%# Eval("price") %></span></li>
										
									</ul>

        </ItemTemplate>


    </asp:datalist>


                             <asp:formview runat="server" ID="Formview2" DataSourceID="SqlDataSource2">       
        <ItemTemplate>
           <ul style=" width: 400px;">
                                <li>
                
									<span>Subtotal </span> <span>Rs. <%# Eval("total") %><asp:HiddenField id="Hi1" runat="server" value='<%# Eval("total") %>' ></asp:HiddenField>
									</li></ul>
           <%-- total:
            <asp:Label ID="totalLabel" runat="server" Text='<%# Bind("total") %>' />--%>
            <br />

        </ItemTemplate>
    </asp:formview>

	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" SelectCommand="SELECT * FROM [cart2] WHERE  (([oderstutas] = @oderstutas) AND ([username] = @username))">
        <SelectParameters>
             <asp:Parameter DefaultValue="0" Name="oderstutas" Type="Int32"></asp:Parameter>
            <asp:SessionParameter SessionField="user" Name="username" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
                            					
                             <ul style=" width: 400px;">
                              <li><span>Shipping</span> <span>
                                  <asp:literal runat="server" id="lblship"></asp:literal>
                                    
                                </span></li></ul>

                            <ul style=" width: 400px;">
                              <li><span>Order Total</span> <span>
                                  Rs.<asp:literal runat="server" id="Label1"></asp:literal>
                                    
                                </span></li></ul>

						</div>
						<div class="cart-detail">
							<h2>Payment Method</h2>
							<div class="form-group">
								<div class="col-md-12">
									<div class="radio">
									   <p>Case On Delivery</p>
                                        <p>Pay When You Get the Package</p>

									</div>
								</div>
							</div>
							
							
						</div>
						<div class="row">
                            
							<div class="col-md-12">
                                <asp:button runat="server" Id="Button" text="Place an Order"  class="btn btn-primary" OnClick="Button_Click" />
								<%--<p><a href="#" class="btn btn-primary">Place an order</a></p>--%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

     <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
	
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
				   					<h1>Checkout</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span><a href="cart.aspx">Shopping Cart</a></span> <span>Checkout</span></h2>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
</asp:Content>




