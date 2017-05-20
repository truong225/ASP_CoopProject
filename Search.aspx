<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register Assembly="EditableDropDownList" Namespace="EditableControls" TagPrefix="editable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <asp:Label ID="lbError" runat="server" ForeColor="Red" Font-Size="16px" Font-Italic="true"></asp:Label>
        <asp:DataGrid ID="lsTim" runat="server" Width="80%" DataSourceID="sql" CssClass="table table-striped table-bordered" 
            AllowPaging="true" AutoGenerateColumns="true" AllowSorting="true">
            <%--<Columns>
                <asp:BoundColumn HeaderText="Tên người dùng" DataField="username"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Họ và tên" DataField="fullname"></asp:BoundColumn>
            </Columns>--%>
        </asp:DataGrid>
        <asp:SqlDataSource ID="sql" runat="server" 
            ConnectionString="Data Source=MYPC\MSSQLSERVER_1;Initial Catalog=qldoan_asp;Integrated Security=true">
        </asp:SqlDataSource>
    </div>
</asp:Content>

