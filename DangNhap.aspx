﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>
<%@ MasterType VirtualPath="~/MasterPage2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <h1 class="titleLogin">Đăng nhập</h1>
        <p class="titleLogin">
            <asp:Label ID="txtErr" runat="server" Text="" Font-Size="15px" ForeColor="Red"></asp:Label>
        </p>
        <div align="center" class="login">
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper" style="text-align=center">
                <div class="animate form login_form" style="text-align=center">
                    <section class="login_content" style="text-align=center">
                        <h1>Đăng nhập</h1>
                        <div>
                            <asp:TextBox runat="server" ID="username" CssClass="form-control" placeholder="Username" required=""></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" placeholder="Password" required=""></asp:TextBox>
                        </div>
                        <div>
                            <asp:Button BorderStyle="Solid" runat="server" ID="btnLogin" Text="Đăng nhập" OnClick="btnLogin_Click"
                                Height="30px" CssClass="btn btn-default submit" />
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

