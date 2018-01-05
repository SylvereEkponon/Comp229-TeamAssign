<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumList.aspx.cs" Inherits="Comp229_TeamAssign.MusicStore.AlbumList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <asp:GridView ID="AlbumListGridView" runat="server" AllowPaging="True" PageSize="24" 
                    AutoGenerateColumns="False" DataKeyNames="AlbumId" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-striped">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" InsertVisible="False" ReadOnly="True" SortExpression="AlbumId" />
                        <asp:BoundField DataField="GenreId" HeaderText="GenreId" SortExpression="GenreId" ReadOnly="true" />
                        <asp:BoundField DataField="ArtistId" HeaderText="ArtistId" SortExpression="ArtistId" ReadOnly="true" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ReadOnly="true" />
                        <asp:TemplateField HeaderText="Price" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AlbumArtUrl" SortExpression="AlbumArtUrl">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AlbumArtUrl") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AlbumArtUrl") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicStoreConnection %>" DeleteCommand="DELETE FROM [Album] WHERE [AlbumId] = @AlbumId" InsertCommand="INSERT INTO [Album] ([GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (@GenreId, @ArtistId, @Title, @Price, @AlbumArtUrl)" SelectCommand="SELECT * FROM [Album]" UpdateCommand="UPDATE [Album] SET [Price] = @Price, [AlbumArtUrl] = @AlbumArtUrl WHERE [AlbumId] = @AlbumId">
                    <DeleteParameters>
                        <asp:Parameter Name="AlbumId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GenreId" Type="Int32" />
                        <asp:Parameter Name="ArtistId" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="AlbumArtUrl" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="AlbumArtUrl" Type="String" />
                        <asp:Parameter Name="AlbumId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
