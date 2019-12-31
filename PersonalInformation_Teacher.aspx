<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="PersonalInformation_Teacher.aspx.cs" Inherits="PersonalInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 3px;
        }
        .auto-style5 {
            width: 100%;
            height: 433px;
        }
        .auto-style6 {
            width: 849px;
            color:black;
            height: 70px;
        }
        .auto-style7 {
            width: 182px;
            height: 493px;
        }
        .auto-style8 {
            vertical-align: top;
            width: 849px;
            height: 493px;
        }
        .auto-style9 {
            height: 493px;
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
        .auto-style13 {
            width: 182px;
            height: 70px;
        }
        .auto-style14 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        &nbsp;</p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style6">
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Teacher_ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="252px" Width="763px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" CssClass="auto-style1">
            <EditRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="Teacher_ID" HeaderText="帳號" ReadOnly="True" SortExpression="Teacher_ID">
                </asp:BoundField>
                <asp:BoundField DataField="Teacher_Email" HeaderText="Email" SortExpression="Teacher_Email" />
                <asp:BoundField DataField="Teacher_Chinese_Name" HeaderText="中文姓名" SortExpression="Teacher_Chinese_Name" />
                <asp:BoundField DataField="Teacher_English_Name" HeaderText="英文姓名" SortExpression="Teacher_English_Name" />
                <asp:BoundField DataField="Title" HeaderText="老師職稱" SortExpression="Title" />
                <asp:BoundField DataField="Teacher_Phone_Number" HeaderText="電話號碼" SortExpression="Teacher_Phone_Number" />
                <asp:BoundField DataField="Teacher_Address" HeaderText="地址" SortExpression="Teacher_Address" />
                <asp:BoundField DataField="Teacher_School_Department" HeaderText="學校系所" SortExpression="Teacher_School_Department" />
                <asp:BoundField DataField="Teacher_Experience" HeaderText="個人經歷" SortExpression="Teacher_Experience" />
                <asp:BoundField DataField="Teacher_Expertise" HeaderText="專業領域" SortExpression="Teacher_Expertise" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>"  SelectCommand="SELECT [Teacher_ID], [Teacher_Email], [Teacher_Chinese_Name], [Teacher_English_Name], [Title], [Teacher_Phone_Number], [Teacher_Education], [Teacher_Address], [Teacher_School_Department], [Teacher_Experience], [Teacher_Expertise] FROM [Teacher] WHERE ([Teacher_ID] = @Teacher_ID)" DeleteCommand="DELETE FROM [Teacher] WHERE [Teacher_ID] = @Teacher_ID" InsertCommand="INSERT INTO [Teacher] ([Teacher_ID], [Teacher_Email], [Teacher_Chinese_Name], [Teacher_English_Name], [Title], [Teacher_Phone_Number], [Teacher_Education], [Teacher_Address], [Teacher_School_Department], [Teacher_Experience], [Teacher_Expertise]) VALUES (@Teacher_ID, @Teacher_Email, @Teacher_Chinese_Name, @Teacher_English_Name, @Title, @Teacher_Phone_Number, @Teacher_Education, @Teacher_Address, @Teacher_School_Department, @Teacher_Experience, @Teacher_Expertise)" UpdateCommand="UPDATE [Teacher] SET [Teacher_Email] = @Teacher_Email, [Teacher_Chinese_Name] = @Teacher_Chinese_Name, [Teacher_English_Name] = @Teacher_English_Name, [Title] = @Title, [Teacher_Phone_Number] = @Teacher_Phone_Number, [Teacher_Education] = @Teacher_Education, [Teacher_Address] = @Teacher_Address, [Teacher_School_Department] = @Teacher_School_Department, [Teacher_Experience] = @Teacher_Experience, [Teacher_Expertise] = @Teacher_Expertise WHERE [Teacher_ID] = @Teacher_ID">
            <DeleteParameters>
                <asp:Parameter Name="Teacher_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Teacher_ID" Type="String" />
                <asp:Parameter Name="Teacher_Email" Type="String" />
                <asp:Parameter Name="Teacher_Chinese_Name" Type="String" />
                <asp:Parameter Name="Teacher_English_Name" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Teacher_Phone_Number" Type="String" />
                <asp:Parameter Name="Teacher_Education" Type="String" />
                <asp:Parameter Name="Teacher_Address" Type="String" />
                <asp:Parameter Name="Teacher_School_Department" Type="String" />
                <asp:Parameter Name="Teacher_Experience" Type="String" />
                <asp:Parameter Name="Teacher_Expertise" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Teacher_ID" SessionField="ID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Teacher_Email" Type="String" />
                <asp:Parameter Name="Teacher_Chinese_Name" Type="String" />
                <asp:Parameter Name="Teacher_English_Name" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Teacher_Phone_Number" Type="String" />
                <asp:Parameter Name="Teacher_Education" Type="String" />
                <asp:Parameter Name="Teacher_Address" Type="String" />
                <asp:Parameter Name="Teacher_School_Department" Type="String" />
                <asp:Parameter Name="Teacher_Experience" Type="String" />
                <asp:Parameter Name="Teacher_Expertise" Type="String" />
                <asp:Parameter Name="Teacher_ID" Type="String" />
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

