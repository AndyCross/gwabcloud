<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="queueTables.aspx.cs" Inherits="gwabweb.queueTables" MasterPageFile="Site.Master" %>

<asp:Content runat="server" ID="Head" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content runat="server" ID="Featured" ContentPlaceHolderID="FeaturedContent">
    <h1>Queues and Tables</h1>
    <h2>We write stuff to a queue, something else writes to a table, we show the tables here (eventually).</h2>
</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">
    <asp:Repeater runat="server" ID="rptList">
        <HeaderTemplate><ol></HeaderTemplate>
        <ItemTemplate>
            <li><%# Eval("Speaker") %></li>
        </ItemTemplate>
        <FooterTemplate></ol></FooterTemplate>
    </asp:Repeater>
    <asp:TextBox runat="server" ID="txtSpeaker"></asp:TextBox>
    <asp:Button runat="server" Text="Insert Speaker" ID="btnAddSpeaker" OnClick="btnAddSpeaker_OnClickk" />
</asp:Content>
