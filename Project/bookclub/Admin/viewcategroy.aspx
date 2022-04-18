<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewcategroy.aspx.cs" Inherits="Admin_viewcategroy" %>

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

         
    
     <div style="margin-left:534px">	
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="237px" OnRowUpdating="GridView1_RowUpdating" Style="background-size:cover; background-image:url(../img/1434.jpg)">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="cnm" SortExpression="cnm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cnm") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("cnm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="img" SortExpression="img">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                   <asp:Literal id="Literal1" runat="server" Text='<%# Eval("img") %>' Visible="false"></asp:Literal>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~//img//" +Eval("img") %>' Height="100px" Width="120px"></asp:Image> 
                </EditItemTemplate>
                <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~//img//"+Eval("img") %>' Height="100px" Width="120px"></asp:Image> 
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
         </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [id] = @id" InsertCommand="INSERT INTO [category] ([cnm], [img]) VALUES (@cnm, @img)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [cnm] = @cnm WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>


