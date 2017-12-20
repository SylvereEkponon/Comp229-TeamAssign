<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamAssign.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Comment
    <asp:GridView ID="MusicGridView" runat="server"  AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="AlbumArtUrl"></asp:ImageField>
           
        </Columns>
    </asp:GridView>
        
        Comment --%>
    <div class="container">
    <asp:DataList ID="DataList" runat="server" RepeatColumns="4" CellPadding="2" CellSpacing="4" RepeatDirection="Horizontal" style="padding-left: 5px" >
        <ItemTemplate >
           
         
            <asp:Literal ID="extraDetailsLiteral" runat="server" EnableViewState="false" />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AlbumArtUrl") %>' Height="280px" Width="300px" />&nbsp&nbsp<br />
            Title: <strong><%#Eval("Title")%></strong> 
         
            
        </ItemTemplate>
       <ItemStyle BorderWidth="10"  ></ItemStyle>
         
    </asp:DataList>
        </div>
</asp:Content>
