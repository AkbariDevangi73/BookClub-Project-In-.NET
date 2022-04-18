<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Admin_viewproduct" %>

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
				   					<h1> Add Product</h1>
				   					<h2 class="bread"><span><a href="Default.aspx">Home</a></span> <span>Peoduct</span></h2>
				   				</div>
                             </div>
				   			</div>
				   		</div>
                       	</li>
			  	</ul>
			   		</div>
			   </aside>
    
    <div style="margin-left:50px;" >
        <div class="col-md-12 testi_grid text-left" style="overflow:scroll;max-height:1000px"  >
            
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating1" AllowPaging="True" Style="background-size:cover; background-image:url(../img/4567.jpg)" ForeColor="Black">
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
            <asp:TemplateField HeaderText="pid" SortExpression="pid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pnm" SortExpression="pnm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pnm") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("pnm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="stock" SortExpression="stock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("stock") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="img" SortExpression="img">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("img") %>' Visible="false"></asp:Literal>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~//img//" + Eval("img") %>' Height="100px" Width="120px" />
                 
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~//img//" + Eval("img") %>' Height="100px" Width="120px"  />
                  
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="des" SortExpression="des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("des") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("des") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="offer" SortExpression="offer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("offer") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("offer") %>'></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>
        </div>
        </div>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookclubConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([cnm], [pid], [pnm], [price], [stock], [img], [des], [offer]) VALUES (@cnm, @pid, @pnm, @price, @stock, @img, @des, @offer)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [cnm] = @cnm, [pid] = @pid, [pnm] = @pnm, [price] = @price, [stock] = @stock, [des] = @des, [offer] = @offer WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="pid" Type="String" />
            <asp:Parameter Name="pnm" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="stock" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="des" Type="String" />
            <asp:Parameter Name="offer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="pid" Type="String" />
            <asp:Parameter Name="pnm" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="stock" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="des" Type="String" />
            <asp:Parameter Name="offer" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
    
</asp:Content>


