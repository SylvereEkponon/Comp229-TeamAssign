<%@ Page Title="AddAlbum" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAlbum.aspx.cs" Inherits="Comp229_TeamAssign.MusicStore.AddAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Add to Album</h1>
                <h5>All fields are  required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="GenreIdTextBox">Genre Id   </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GenreIdTextBox"
                        placeholder="Genre Id" required="true">  
                    </asp:TextBox>
                </div>



                <div class="form-group">
                    <label class="control-label" for="ArtistIdTextBox">Artist Id   </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="ArtistIdTextBox"
                        placeholder=" Artist Id " required="true">    </asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="TitleTextBox">Title   </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TitleTextBox"
                        placeholder="Title" required="true">  </asp:TextBox>
                </div>
               
                <div class="form-group">
                    <label class="control-label" for="PriceTextBox">Price   </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="PriceTextBox"
                        placeholder=" Price " required="true">    </asp:TextBox>
                </div>

                 <div class="form-group">
                    <label class="control-label" for="AlbumArtUrlBox">Image Filename  </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="AlbumArtUrlTextBox"
                        placeholder="Album Url  " required="true">  </asp:TextBox>
                </div>
                 

                


                <div class="text-right">
                    <asp:Button Text="cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                        OnClick="SaveButton_Click" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
