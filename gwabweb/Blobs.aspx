<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blobs.aspx.cs" Inherits="gwabweb.Blobs" MasterPageFile="Site.Master" %>
<asp:Content runat="server" ID="Head" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content runat="server" ID="Featured" ContentPlaceHolderID="FeaturedContent">
    <h1>Blob</h1>
    <h2>Blobs are unstructured, lovely data files.</h2>
</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">
    <asp:Repeater runat="server" ID="rptList">
        <HeaderTemplate><ol></HeaderTemplate>
        <ItemTemplate>
            <li><%# Eval("Name") %></li>
        </ItemTemplate>
        <FooterTemplate></ol></FooterTemplate>
    </asp:Repeater>
    <asp:Button runat="server" Text="Create placeholder file" ID="btnPlaceholder" OnClick="btnPlaceholder_OnClick" />
</asp:Content>
