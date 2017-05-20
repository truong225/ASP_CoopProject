<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register Assembly="EditableDropDownList" Namespace="EditableControls" TagPrefix="editable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <asp:Label ID="lbError" runat="server" ForeColor="Red" Font-Size="16px" Font-Italic="true"></asp:Label>
        <asp:DataGrid ID="lsTim" runat="server" Width="80%" CssClass="table table-striped table-bordered" 
            AllowPaging="true" AutoGenerateColumns="false" AllowSorting="true">
            <Columns>
                <asp:BoundColumn HeaderText="Đồ án" DataField="tendoan"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Người đăng" DataField="username"></asp:BoundColumn>
                <asp:BoundColumn HeaderText="Mô tả" DataField="mota"></asp:BoundColumn>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" Text="Download" OnClick="DownloadFile" ForeColor="Blue"
                            CommandArgument='<%#Eval("tenfile")%>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</asp:Content>

