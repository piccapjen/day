<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_ChangePassword2.aspx.cs" Inherits="HomePage1" %>

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
            <asp:Label Text="設定新密碼" CssClass="lblid" runat="server"/>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtid" required ="請填寫新密碼" placeholder="新密碼"/>
            <asp:Label Text="驗證新密碼" CssClass="lblpass" runat="server"/>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass" required ="請填寫密碼" placeholder="********" TextMode="Password"/>
            <asp:Button ID="Button1" Text="確定" CssClass="btnsubmit" runat="server" OnClick="Button1_Click"/>
            <strong>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="與驗證碼不相符" ForeColor="Red"></asp:CompareValidator>
            </strong>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" UpdateCommand="UPDATE Student SET Student_Password = @Password WHERE (Student_ID = @ID)" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT * FROM [Student]">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Password" PropertyName="Text" />
                    <asp:SessionParameter Name="ID" SessionField="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" Text="忘記密碼" CssClass="btnforget" runat="server" Target="_self" NavigateUrl="~/Login_ForgetPassword.aspx" />

            <asp:Label ID="Label1" runat="server"></asp:Label>

        </form>
    </div>
</body>
</html>
