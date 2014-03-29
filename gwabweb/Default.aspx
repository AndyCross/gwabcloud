<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gwabweb._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Hello GWAB.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Azure &gt; ALL</h5>
            Hot off the press, Azure is the <b>Largest Web Hosting company</b>; has more web facing assets than Amazon.
            <a href="http://www.onwindows.com/Article/microsoft-overtakes-amazon-to-become-the-largest-hosting-company-2392">Learn more…</a>
        </li>
        <li class="two">
            <h5>Do something with blobs!</h5>
            Easy, raw, unstructured data files.
            <a href="blobs.aspx">Learn more...</a>
        </li>
        <li class="three">
            <h5>Queues and Tables!</h5>
            Write to Queues, let the worker read from the queue and then wayhey! Write it to a table.
            <a href="queueTables.aspx">Learn more...</a>
        </li>
    </ol>
</asp:Content>
