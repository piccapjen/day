<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="GuidingTeacher.aspx.cs" Inherits="GuidingTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 719px;
        }
        .auto-style2 {
            height: 76px;
        }
        .auto-style3 {
            height: 76px;
            width: 180px;
        }
        .auto-style4 {
            width: 180px
        }
        .auto-style5 {
            height: 76px;
            width: 983px;
        }
        .auto-style6 {
            width: 983px;
        }
        .auto-style7 {
            width: 180px;
            height: 587px;
        }
        .auto-style8 {
            vertical-align: top;
            width: 983px;
            height: 587px;
        }
        .auto-style9 {
            height: 587px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:GridView ID="GridView1" DataKeyNames ="Thesis_FileName,Student_ID" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="498px" Width="977px" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                    <Columns>
                        <asp:BoundField DataField="Student_ID" HeaderText="學號" SortExpression="Student_ID" />
                        <asp:BoundField DataField="Student_Chinese_Name" HeaderText="中文姓名" SortExpression="Student_Chinese_Name" />
                        <asp:BoundField DataField="Chinese_Topic" HeaderText="中文標題" SortExpression="Chinese_Topic" />
                        <asp:TemplateField HeaderText="檔案名稱" SortExpression="Thesis_FileName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Thesis_FileName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click"  Text='<%# Eval("Thesis_FileName") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" CommandName="agree" HeaderText="送出給審查委員" Text="同意"                             
                            />
                        <asp:ButtonField ButtonType="Button" CommandName="disagree" Text="不同意" />
                        <asp:BoundField DataField="Teacher_Passing_Exam" HeaderText="審查狀況" SortExpression="Teacher_Passing_Exam" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review systemConnectionString %>" SelectCommand="Select Teacher_Student.Student_ID,Student.Student_Chinese_Name,Thesis_Plan.Chinese_Topic ,Thesis_FileName,Teacher_Passing_Exam
from Teacher_Student,Student,Thesis_Plan
Where Teacher_Student.Student_ID=Student.Student_ID and Thesis_Plan.Student_ID=Student.Student_ID and Teacher_Student.Teacher_ID ='ndmcb03001'"></asp:SqlDataSource>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

