<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login_ChangePassword.aspx.cs" Inherits="Login_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            width: 100%;
            height: 493px;
        }
        .auto-style6 {
            height: 116px;
        }
        .auto-style7 {
            height: 79px;
        }
        .auto-style8 {
            height: 79px;
            width: 99px;
        }
        .auto-style9 {
            height: 116px;
            width: 99px;
        }
        .auto-style10 {
            width: 99px;
        }
        .auto-style11 {
            height: 79px;
            width: 45px;
        }
        .auto-style12 {
            height: 116px;
            width: 45px;
        }
        .auto-style13 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style7">
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="設定新密碼"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="驗證新密碼"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" DeleteCommand="DELETE FROM [db_user] WHERE [Id] = @Id" InsertCommand="INSERT INTO [db_user] ([Id], [Password]) VALUES (@Id, @Password)" SelectCommand="SELECT [Id], [Password] FROM [db_user]" UpdateCommand="UPDATE Student SET Student_Password = @Password WHERE (Student_ID = @ID)">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Password" PropertyName="Text" Type="String" />
                <asp:SessionParameter Name="ID" SessionField="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
                    <br />
        <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="確定" />
                    <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="與驗證碼不相符" ForeColor="Red"></asp:CompareValidator>
                    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style6"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </p>
    </asp:Content>

