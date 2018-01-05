<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumDetails.aspx.cs" Inherits="Comp229_TeamAssign.AlbumDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <asp:Repeater ID="AlbumDetailRepeater" runat="server">
                <ItemTemplate>
                    <table style=" border-collapse:separate; border-spacing:10px;">
                        <tr>
                            <td style="width:300px">
                                <asp:Image runat="server" ID="imgAlbum" ImageUrl='<%# Eval("AlbumArtUrl") %>' />
                            </td>
                            <td style="width:300px">
                                <table>
                                    <tr>
                                        <td><h3><asp:Label runat="server" ID="lblTitle" Text='<%# Eval("Title") %>' /></h3></td>
                                    </tr>
                                    <tr>
                                        <td><h4><asp:Label runat="server" ID="lblGenre" Text='<%# Eval("Genre") %>' /></h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4><asp:Label runat="server" ID="lblName" Text='<%# Eval("Name") %>' /></h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4>$<asp:Label runat="server" ID="lblPrice" Text='<%# Eval("Price") %>'/></h4></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <div class="row">
            <a href="Albums.aspx" class="btn btn-default btn-group-sm"><i class="fa fa-chevron-left fa-lg" aria-hidden="true"></i> Previous page</a>
        </div>
    </div>
</asp:Content>
