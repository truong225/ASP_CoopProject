<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Dashboard</title>
    <link href="Contents/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Contents/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="../Contents/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 726px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server" class="auto-style1">
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Dashboard</a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Quản lý tài khoản</a></li>
                            <li><a href="#about">Quản lý đồ án</a></li>
                            <li><a href="#contact">Tìm kiếm</a></li>
                            <li><a href="Login.aspx">Đăng xuất</a></li>
                            <li><a href="#">Liên kết</a></li>
                            <li><a href="#">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Contents/js/jquery.min.js"></script>
    <script src="Contents/js/bootstrap.min.js"></script>
</body>
</html>
