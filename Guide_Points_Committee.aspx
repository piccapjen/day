<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Committee.master" AutoEventWireup="true" CodeFile="Guide_Points_Committee.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .divTAC{width:100%;height:1300px;color:black}
        .ccc{width:500px;height:50px}
        .extra{width:100px}
    </style>

    <asp:SqlDataSource ID="teacher" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" 
        SelectCommand="SELECT [Teacher_Chinese_Name], [Teacher_ID] FROM [Teacher]">
    </asp:SqlDataSource>

    <div class="divTAC">
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="100%" BorderColor="Black">
            <asp:TableRow>
                <asp:TableCell CssClass="extra"></asp:TableCell>
                <asp:TableCell CssClass="ccc">
                    <asp:Label ID="Label1" runat="server" Text="-審查委員一覽-" Font-Names="標楷體" Font-Size="23pt"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="extra"></asp:TableCell>
                <asp:TableCell>
         <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" Width="890px" AutoGenerateColumns="False"
            OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="論文編號" InsertVisible="False" SortExpression="Plan_Number">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Plan_Number") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Plan_Number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="研究生姓名" SortExpression="Student_Chinese_Name">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Student_Chinese_Name") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Student_Chinese_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="審查委員" SortExpression="Teacher_Chinese_Name">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="True" DataSourceID="teacher" DataTextField="Teacher_Chinese_Name" DataValueField="Teacher_ID">
                            <asp:ListItem Value="0">調整審查委員</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Teacher_Chinese_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow></asp:TableRow>
            <asp:TableRow></asp:TableRow>
        </asp:Table>

    </div>
</asp:Content>

