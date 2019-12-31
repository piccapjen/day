<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="HomePage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 316px;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <div class="loginbox">
        <h2 class="auto-style2">論文審查系統</h2>
        <form id="form1" runat="server" class="auto-style1">
            <asp:Label Text="帳號" CssClass="lblid" runat="server"/>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtid" required ="帳號為您的學號" placeholder="學號"/>
            <asp:Label Text="密碼" CssClass="lblpass" runat="server"/>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass" required ="請填寫密碼" placeholder="********" TextMode="Password"/>
            <asp:Button ID="Button1" Text="登入" CssClass="btnsubmit" runat="server" OnClick="Button1_Click"/>
            <asp:HyperLink ID="HyperLink1" Text="忘記密碼" CssClass="btnforget" runat="server" Target="_self" NavigateUrl="~/Login_ForgetPassword.aspx" />
            <asp:HyperLink ID="HyperLink2" Text="更改密碼" CssClass="btnchange" runat="server" Target="_self" NavigateUrl="~/Login_ChangePassword1.aspx" />
            <asp:Label ID="Label1" runat="server"></asp:Label>

        </form>
    </div>
</body>
</html>
