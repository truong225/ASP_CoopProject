<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Tên tài khoản </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox ID="txtTen" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTen"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Mật khẩu </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox ID="txtPass" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Nhập lại mật khẩu </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox ID="txtRePass" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Địa chỉ email </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Nhập mã xác nhận </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox ID="txtComfirm" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="auto-style7"></td>
            <td align="left">
                <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" /></td>
        </tr>
    </table>
</asp:Content>
