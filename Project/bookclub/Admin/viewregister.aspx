<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewregister.aspx.cs" Inherits="Admin_viewregister" %>

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
				   					<h1>View Register</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Register</span></h2>
				   				</div>
                             </div>
				   			</div>
				   		</div>
                       	</li>
			  	</ul>
			   		</div>
			   
		  </aside>
    
    <div style="margin-left:400px">	
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" Style="background-size:cover; background-image:url(../img/1434.jpg)">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
        </Columns>

    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" DeleteCommand="DELETE FROM [register] WHERE [id] = @id" InsertCommand="INSERT INTO [register] ([firstname], [lastname], [email], [password], [contact], [usertype]) VALUES (@firstname, @lastname, @email, @password, @contact, @usertype)" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [password] = @password, [contact] = @contact, [usertype] = @usertype WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
    
</asp:Content>


