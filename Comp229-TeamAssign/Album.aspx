<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="Comp229_TeamAssign.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- HTML -->
  

    <%-- ASP Anu and Sylver --%>
    <%-- Comment
    <asp:GridView ID="MusicGridView" runat="server"  AutoGenerateColumns="false">
        <Columns>
            <asp:ImageField DataImageUrlField="AlbumArtUrl"></asp:ImageField>
           
        </Columns>
    </asp:GridView>
        
        
    <div class="container">

    
    <asp:DataList ID="DataList" runat="server" RepeatColumns="4" CellPadding="2" CellSpacing="4" RepeatDirection="Horizontal" style="padding-left: 5px" >
        <ItemTemplate >
           
         
            <asp:Literal ID="extraDetailsLiteral" runat="server" EnableViewState="false" />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AlbumArtUrl") %>' Height="280px" Width="300px" />&nbsp&nbsp<br />
            Title: <strong><%#Eval("Title")%></strong> 
         
            
        </ItemTemplate>
       <ItemStyle BorderWidth="10"  ></ItemStyle>
         
    </asp:DataList>Comment --%>
    <div class="container" >
        <asp:ListView ID="AlbamDataList" runat="server" DataKeyNames="AlbumId" GroupItemCount="3">
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
                                    <b>Price: </b>$<%# Eval("Price") %></span><br /><a href="#" class="btn btn-primary btn-group-lg">Add To Cart
                                                  
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
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicStoreConnectionString %>" SelectCommand="SELECT * FROM [Album]"></asp:SqlDataSource>--%>
    </div>
</asp:Content>
