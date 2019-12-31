<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalInformation.aspx.cs" Inherits="PersonalInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 3px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style5 {
            width: 100%;
            height: 433px;
        }
        .auto-style6 {
            width: 849px;
            color:black;
        }
        .auto-style7 {
            width: 182px;
            height: 421px;
        }
        .auto-style8 {
            vertical-align: top;
            width: 849px;
            height: 421px;
        }
        .auto-style9 {
            height: 421px;
        }
        .auto-style10 {
            width: 182px;
            height: 9px;
        }
        .auto-style11 {
            width: 849px;
            height: 9px;
        }
        .auto-style12 {
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        &nbsp;</p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <table style="width:1100px;">
                    <tr>
                        <td></td>
                        <td><asp:Label ID="Label9" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="指導老師"></asp:Label></td>
                        <td><asp:Label ID="Label10" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="共同指導"></asp:Label></td>
                        <td><asp:Label ID="Label11" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="共同指導"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Name" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="姓名"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_Name" runat="server" ReadOnly="True" Text = ""></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_Name" runat="server" ReadOnly="True" Text = ""></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_Name" runat="server" ReadOnly="True" Text = ""></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="School" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="學校系(所)"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_School" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_School" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_School" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Edu" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="學歷"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_Edu" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_Edu" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_Edu" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Exp" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="經歷"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_Exp" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_Exp" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_Exp" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Address" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="通訊地址"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_Address" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_Address" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_Address" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Phone" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="連絡電話"></asp:Label></td>
                        <td><asp:TextBox ID="FAP_Phone" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="SAP_Phone" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TAP_Phone" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="252px" Width="763px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" CssClass="auto-style1">
            <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="Student_ID" HeaderText="帳號" ReadOnly="True" SortExpression="Student_ID">
                </asp:BoundField>
                <asp:BoundField DataField="Student_Email" HeaderText="Email" SortExpression="Student_Email" />
                <asp:BoundField DataField="Student_Chinese_Name" HeaderText="中文姓名" SortExpression="Student_Chinese_Name" />
                <asp:BoundField DataField="Student_English_Name" HeaderText="英文姓名" SortExpression="Student_English_Name" />
                <asp:BoundField DataField="Student_Phone_Number" HeaderText="手機號碼" SortExpression="Student_Phone_Number" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" DeleteCommand="DELETE FROM [Student] WHERE [Student_ID] = @Student_ID" InsertCommand="INSERT INTO [Student] ([Student_ID], [Student_Password], [Student_Email], [Student_Chinese_Name], [Student_English_Name], [Student_Phone_Number]) VALUES (@Student_ID, @Student_Password, @Student_Email, @Student_Chinese_Name, @Student_English_Name, @Student_Phone_Number)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Student] WHERE ([Student_ID] = @Student_ID)" UpdateCommand="UPDATE [Student] SET [Student_Password] = @Student_Password, [Student_Email] = @Student_Email, [Student_Chinese_Name] = @Student_Chinese_Name, [Student_English_Name] = @Student_English_Name, [Student_Phone_Number] = @Student_Phone_Number WHERE [Student_ID] = @Student_ID">
            <DeleteParameters>
                <asp:Parameter Name="Student_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_ID" Type="String" />
                <asp:Parameter Name="Student_Password" Type="String" />
                <asp:Parameter Name="Student_Email" Type="String" />
                <asp:Parameter Name="Student_Chinese_Name" Type="String" />
                <asp:Parameter Name="Student_English_Name" Type="String" />
                <asp:Parameter Name="Student_Phone_Number" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Student_ID" SessionField="ID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student_Password" Type="String" />
                <asp:Parameter Name="Student_Email" Type="String" />
                <asp:Parameter Name="Student_Chinese_Name" Type="String" />
                <asp:Parameter Name="Student_English_Name" Type="String" />
                <asp:Parameter Name="Student_Phone_Number" Type="String" />
                <asp:Parameter Name="Student_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
    <br />
</asp:Content>

