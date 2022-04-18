<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
    
    <asp:Image ID="Image1" runat="server"  ImageUrl="~/img/regist.png" Height="200px" Width="200px" style="margin-left:90px" />
    <span style="color:darkblue; font-size:20px;"> Registered User</span>[<b><asp:Literal ID="Literal1" runat="server" Text=""></asp:Literal></b>]
    
    <asp:Image ID="Image3" runat="server"  ImageUrl="~/img/caegroy.png"  Height="200px" Width="200px"  style="margin-left:110px" />
     <span style="color:darkblue; font-size:20px;"> Category</span>[<b><asp:Literal ID="Literal2" runat="server" Text="" ></asp:Literal></b>]

   
    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/product.jpg"  Height="200px" Width="200px"  style="margin-left:120px" />
       <span style="color:darkblue; font-size:20px;">All Product</span>[<b><asp:Literal ID="Literal3" runat="server" Text="" ></asp:Literal></b>]
    <br />
    <br />
    <br />
</asp:Content>


  