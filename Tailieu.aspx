<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tailieu.aspx.cs" Inherits="Tailieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataGrid runat="server" ID="list" CssClass="ds" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="false"
        AllowPaging="true" AllowSorting="true">
        <EditItemStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

        <Columns>
            <asp:HyperLinkColumn DataNavigateUrlField="id"
                DataNavigateUrlFormatString="~/Tailieu.aspx?id={0}" HeaderText="Tên đồ án"
                DataTextField="tendoan"></asp:HyperLinkColumn>
            <asp:BoundColumn DataField="authorID" HeaderText="Người đăng"></asp:BoundColumn>
            <asp:BoundColumn DataField="tenfile" HeaderText="Tệp"></asp:BoundColumn>
            <asp:BoundColumn DataField="mota" HeaderText="Mô tả tài liệu"></asp:BoundColumn>
        </Columns>
    </asp:DataGrid>
</asp:Content>
