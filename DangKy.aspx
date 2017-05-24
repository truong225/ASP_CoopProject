<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<%@ Register Assembly="EditableDropDownList" Namespace="EditableControls" TagPrefix="editable" %>

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
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Tên tài khoản </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:TextBox CssClass="form-control" ID="txtTen" runat="server" Width="300px"></asp:TextBox>
                <asp:Label ID="errorMes" runat="server" ForeColor="DarkRed"></asp:Label>
                <br />
            </td>
            <td rowspan="6" style="width: 300px">
                <asp:Image runat="server" ID="imgAvatar" ImageAlign="AbsMiddle" Width="250px" Height="250px"
                    BorderColor="Black" BorderWidth="1px" />
                <asp:FileUpload ID="fileAvatar" runat="server" />
                <asp:Button runat="server" Text="Tải ảnh" OnClick="Unnamed2_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Mật khẩu </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:TextBox CssClass="form-control" ID="txtPass" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Nhập lại mật khẩu </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:TextBox CssClass="form-control" ID="txtRePass" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cmpValid" runat="server" ControlToValidate="txtRePass" ControlToCompare="txtPass" ErrorMessage="Nhập lại mật khẩu" ForeColor="DarkRed" SetFocusOnError="true"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Họ và tên </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:TextBox CssClass="form-control" ID="txtFullname" runat="server" Width="300px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Giới tính </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:DropDownList ID="drpGender" runat="server" DataSourceID="sqlGioiTinh" DataValueField="gender" CssClass="form-control" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlGioiTinh" runat="server" SelectCommand="select *  from gioitinh"
                    ConnectionString="Data Source=MYPC\MSSQLSERVER_1; Initial Catalog=qldoan_asp;Integrated Security=true;"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7">
                <asp:Label runat="server">Địa chỉ email </asp:Label><font color="red">* </font></td>
            <td style="text-align: left">
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" Width="300px" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style7"></td>
            <td style="text-align: left">
                <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" OnClick="btnRegister_Click" />
                <asp:Label runat="server" ID="ms"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
