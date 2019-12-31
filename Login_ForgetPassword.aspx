<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_NoName.master" AutoEventWireup="true" CodeFile="Login_ForgetPassword.aspx.cs" Inherits="Login_ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;<br />
    </p>
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="請輸入你的帳號"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" required ForeColor="Black"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="輸入你的E-mail"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
    <p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail格式不符" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="確定" OnClick="Button1_Click" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" ForeColor="Black"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

