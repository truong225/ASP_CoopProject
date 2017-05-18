<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="titleLogin">Đăng nhập</h1>
    <p class="titleLogin">
        <asp:Label ID="txtErr" runat="server" Text="" Font-Size="15px" ForeColor="Red"></asp:Label>
    </p>
    <div align="center">
        <div style="margin-left: 10%; display: inline-block; align-items; align-content: center;" class="auto-style11">
            <table style="align-content: center; height: 100%" class="auto-style9">
                <tr>
                    <td class="auto-style10">Tên đăng nhập</td>
                    <td>
                        <asp:TextBox ID="username" runat="server" Width="100%" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mật khẩu</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="password" TextMode="Password" runat="server" Width="100%" Height="30px"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <div style="align-content: center; display: inline-block">
                <asp:Button BorderStyle="Solid" runat="server" ID="btnLogin" Text="Đăng nhập" OnClick="btnLogin_Click" Height="30px" />
            </div>
        </div>
    </div>
</asp:Content>

