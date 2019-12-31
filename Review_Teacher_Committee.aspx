<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="Review_Teacher_Committee.aspx.cs" Inherits="Opinion_Teacher1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 900px;
        }
        .auto-style2 {
            width: 179px
        }
        .auto-style4 {
            width: 150px;
            height: 71px;
        }
        .auto-style5 {
            width: 1080px;
            height: 71px;
        }
        .auto-style6 {
            height: 71px;
        }
        .auto-style7 {
            width: 150px;
            height: 530px;
        }
        .auto-style8 {
            vertical-align: top;
            width: 1080px;
            height: 530px;
        }
        .auto-style9 {
            height: 530px;
        }
        .auto-style10 {
            width: 1080px
        }
    .auto-style11 {
        margin-right: 3px;
            margin-left: 0px;
        }
        .auto-style12 {
            width: 150px;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="Plan_Number" DataSourceID="SqlDataSource1" ForeColor="Black" Width="1074px" CssClass="auto-style11" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField HeaderText="論文計畫書檔案下載" SortExpression="Thesis_FileName" >
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" Text='<%# Eval("Thesis_FileName") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle Width="300px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="審查意見" SortExpression="Review_Comments">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="200px" Text='<%# Bind("Review_Comments") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Height="200px" ReadOnly="True" Text='<%# Bind("Review_Comments") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="審查意見回覆" SortExpression="Review_Opinion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Height="200px" ReadOnly="True" Text='<%# Bind("Review_Opinion") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Height="200px" ReadOnly="True" Text='<%# Bind("Review_Opinion") %>' TextMode="MultiLine" Width="300px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="審查狀況" SortExpression="Teacher_Passing_Exam">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Teacher_Passing_Exam") %>'>
                                    <asp:ListItem>通過</asp:ListItem>
                                    <asp:ListItem>不通過</asp:ListItem>
                                    <asp:ListItem>修改後再審</asp:ListItem>
                                    <asp:ListItem>審查中</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Teacher_Passing_Exam") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT [Student_ID], Thesis_Plan.Plan_Number,Thesis_Plan.Chinese_Topic, [Thesis_FileName], [Teacher_Passing_Exam], [Review_Comments], [Review_Opinion] 
FROM [Thesis_Plan],Teacher_Thesis_Plan
where Teacher_Thesis_Plan.Plan_Number =Thesis_Plan.Plan_Number and (Teacher_ID = @teacher)" UpdateCommand="UPDATE Thesis_Plan SET  Teacher_Passing_Exam = @Teacher_Passing_Exam, Review_Comments = @Review_Comments, Review_Opinion = @Review_Opinion WHERE (Plan_Number = @Plan_Number)">
                    <SelectParameters>
                        <asp:SessionParameter Name="teacher" SessionField="ID" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Teacher_Passing_Exam" />
                        <asp:Parameter Name="Review_Comments" />
                        <asp:Parameter Name="Review_Opinion" />
                        <asp:Parameter Name="Plan_Number" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

