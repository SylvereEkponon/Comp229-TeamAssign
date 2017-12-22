﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamAssign.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- HTML -->
   <div class="container">
  <h2>Carousel Example</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/JustinBiber.jpg" alt="Top 1 Canada" style="width:100%;">
        <div class="carousel-caption">
          <h3>Justin Biber</h3>
          <p>Justin Biber is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="images/BillyCobham.jpg" alt="Billy Cobham" style="width:100%;">
        <div class="carousel-caption">
          <h3>Billy Cobham</h3>
          <p>Billy Cobham, The grate!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/BlackSabbath.jpg" alt="Black Sabbath" style="width:100%;">
        <div class="carousel-caption">
          <h3>Black Sabbath</h3>
          <p>We love the Black Sabbath!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

     <%-- ASP Anu --%>
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
