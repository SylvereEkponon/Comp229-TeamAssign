<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamAssign.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Four Seasons Music Store</h2>
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
                    <img src="images/JustinBiber.jpg" alt="Top 1 Canada" style="width: 100%;">
                    <div class="carousel-caption">
                        <h3>Justin Biber</h3>
                        <p>Justin Biber is always so much fun!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/BillyCobham.jpg" alt="Billy Cobham" style="width: 100%;">
                    <div class="carousel-caption">
                        <h3>Billy Cobham</h3>
                        <p>Billy Cobham, The grate!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/BlackSabbath.jpg" alt="Black Sabbath" style="width: 100%;">
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
        <br />
        <div class="row">
            <div class="col-md-offset-5 col-md-2">
                <a href="Albums.aspx" class="btn btn-primary btn-group-lg">See All Albums</a>
            </div>
        </div>
    </div>
</asp:Content>
