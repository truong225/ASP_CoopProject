<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

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
                <asp:TextBox CssClass="form-control" ID="txtTen" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTen"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td rowspan="6" style="width: 300px">
                <asp:Image runat="server" ID="imgAvatar" ImageUrl="anh/noavatar.png" ImageAlign="AbsMiddle" Width="250px" Height="250px"
                    BorderColor="Black" BorderWidth="1px" />
                <asp:FileUpload ID="fileAvatar" runat="server"/><asp:Button runat="server" Text="Tải ảnh"/>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Mật khẩu </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox CssClass="form-control" ID="txtPass" runat="server" Width="300px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Nhập lại mật khẩu </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox CssClass="form-control" ID="txtRePass" runat="server" Width="300px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Địa chỉ email </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7">
                <asp:Label runat="server">Nhập mã xác nhận </asp:Label><font color="red">*</font></td>
            <td align="left">
                <asp:TextBox CssClass="form-control" ID="txtComfirm" runat="server" Width="300px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style7"></td>
            <td align="left">
                <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" /></td>
        </tr>
    </table>
</asp:Content>
