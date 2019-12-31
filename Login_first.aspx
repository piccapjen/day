<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login_first.aspx.cs" Inherits="Login_first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="請輸入您的E-mail"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="264px" required ="[A-Z]+"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="30px" Text="確定" Width="54px" OnClick="Button1_Click1" ForeColor="Black" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" DeleteCommand="DELETE FROM [db_user] WHERE [Id] = @Id" InsertCommand="INSERT INTO [db_user] ([Id], [Email]) VALUES (@Id, @Email)" SelectCommand="SELECT [Id], [Email] FROM [db_user]" UpdateCommand="UPDATE Student SET Student_Email = @Email WHERE (Student_ID = @ID)">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Email" PropertyName="Text" Type="String" />
                <asp:SessionParameter Name="ID" SessionField="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Enabled="true" ErrorMessage="E-mail格式不正確" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BorderColor="Red" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" AssociatedControlID="Button1" EnableTheming="False" Visible="False" ForeColor="Black" >111</asp:Label>
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
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

