<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewcontact.aspx.cs" Inherits="Admin_viewcontact" %>

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
				   					<h1>View FeedBack</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Contact</span></h2>
				   				</div>
                             </div>
				   			</div>
				   		</div>
                       	</li>
			  	</ul>
			   		</div>
			   	</aside>
		  	
   
    <div style="margin-left:400px; margin-top:50px;" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Style="background-size:cover; background-image:url(../img/1434.jpg)">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="contac" HeaderText="contac" SortExpression="contac" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
        </Columns>

    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" DeleteCommand="DELETE FROM [contact] WHERE [id] = @id" InsertCommand="INSERT INTO [contact] ([email], [contact], [message]) VALUES (@email, @contact, @message)" SelectCommand="SELECT * FROM [contact]" UpdateCommand="UPDATE [contact] SET [email] = @email, [contact] = @contact, [message] = @message WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>

</asp:Content>


