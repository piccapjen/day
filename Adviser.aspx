<%@ Page Title="" Language="C#" MasterPageFile="MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="Adviser.aspx.cs" Inherits="GuidingTeacher" %>

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
            width: 1061px;
        }
        .auto-style6 {
            width: 1061px;
        }
        .auto-style7 {
            width: 180px;
            height: 587px;
        }
        .auto-style8 {
            vertical-align: top;
            width: 1061px;
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
                <asp:GridView ID="GridView1" DataKeyNames ="Plan_Number" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="498px" Width="1060px"     >
                    <Columns>
                        <asp:BoundField DataField="Student_ID" HeaderText="學號" SortExpression="Student_ID" />
                        <asp:BoundField DataField="Student_Chinese_Name" HeaderText="中文姓名" SortExpression="Student_Chinese_Name" />
                        <asp:TemplateField HeaderText="論文計畫書檔案下載" SortExpression="Thesis_FileName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Thesis_FileName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click"  Text='<%# Eval("Thesis_FileName") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="送出給審查委員">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="agree"  Text="同意" CommandArgument='<%# Eval("Student_ID") %>' 
                                    OnClientClick = "if (confirm('您確定要送出嗎?')==false) {return false;}" OnClick="Button2_Click"   />
                                <asp:Button ID="Button3" runat="server"  CausesValidation="false" CommandName="disagree" Text="不同意" CommandArgument='<%# Eval("Student_ID") %>' 
                                    OnClientClick = "if (confirm('您確定不同意嗎?')==false) {return false;}" OnClick="Button3_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT Teacher_Student.Student_ID, Student.Student_Chinese_Name, Thesis_Plan.Chinese_Topic, Thesis_Plan.Plan_Number, Thesis_Plan.Thesis_FileName, Thesis_Plan.Teacher_Passing_Exam FROM Teacher_Student INNER JOIN Student ON Teacher_Student.Student_ID = Student.Student_ID INNER JOIN Thesis_Plan ON Student.Student_ID = Thesis_Plan.Student_ID WHERE (Teacher_Student.Teacher_ID = @teacherid)"  UpdateCommand="UPDATE Thesis_Plan SET Teacher_Passing_Exam = '審查中' WHERE (Plan_Number = @Plan_Number)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="teacherid" SessionField="ID" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:SessionParameter Name="Plan_Number" SessionField="Plan_Number" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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

