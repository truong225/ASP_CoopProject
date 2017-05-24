<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserInformation.aspx.cs" Inherits="User_UserInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <div>
        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="Cập nhật thông tin" OnClick="Button1_Click" />
        </div>
        <br />

        <table style="width: 100%;">
            <tr>
                <td align="right">Username</td>
                <td align="left">
                    <asp:TextBox ID="txtUser" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">Họ tên người dùng</td>
                <td align="left">
                    <asp:TextBox ID="txtFullname" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">Giới tính</td>
                <td align="left">
                    <asp:TextBox ID="txtGender" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">Email</td>
                <td align="left">
                    <asp:TextBox ID="txtEmail" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div align="center">
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        </div>
    </div>
    <br />
</asp:Content>

