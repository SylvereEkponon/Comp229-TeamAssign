<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Albums.aspx.cs" Inherits="Comp229_TeamAssign.Albums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <br />
                <br />
                <a href="/MusicStore/AddAlbum.aspx" class="btn btn-success btn-sm">
                    <i class="fa fa-plus"></i>Add Album
                </a>

                <asp:ListView ID="AlbamDataList" runat="server" DataKeyNames="AlbumId" GroupItemCount="3" OnPagePropertiesChanging="AlbamDataList_PagePropertiesChanging">
                    <EmptyDataTemplate>
                        <table>
                            <tr>
                                <td>No data was Returned</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        </td>
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td runat="server">
                            <table style="margin-right: 10px; margin-bottom: 20px; margin-top: 20px;">
                                <tr>
                                    <td>
                                        <asp:Image runat="server" ImageUrl='<%# Eval("AlbumArtUrl") %>' Width="200" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>
                                            <b>Title: </b><%# Eval("Title") %>
                                        </span>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>
                                            <b>Price: </b>$<%# Eval("Price") %></span><br />
                                        <a href="#" class="btn btn-primary btn-group-lg">Add To Cart
                                                  
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                            <tr id="groupPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr></tr>
                            </tbody>
                        </table>
                    </LayoutTemplate>


                </asp:ListView>

                <asp:DataPager runat="server" ID="AlbumDataPager" PagedControlID="AlbamDataList" PageSize="18">
                    <Fields>
                        <asp:NumericPagerField ButtonType="Link" />
                    </Fields>
                </asp:DataPager>

            </div>
        </div>
    </div>
</asp:Content>
