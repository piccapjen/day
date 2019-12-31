<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Committee.master" AutoEventWireup="true" CodeFile="Guide_Points_Teacher.aspx.cs" Inherits="Guide_Points_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .divTAC{width:1000px;height:1300px;color:black}
        .ccc{width:500px;height:50px;}
    </style>
    <asp:SqlDataSource ID="teacher_point" runat="server" ConnectionString="Data Source=LAPTOP-IILRO0JD\SQLEXPRESS;Initial Catalog=&quot;Thesis plan review system&quot;;Persist Security Info=True;User ID=sa;Password=chje80593" ProviderName="System.Data.SqlClient" 
        SelectCommand="select Student_ID,Student_Chinese_Name,
                      (select distinct Chinese_Topic from Thesis_Plan where Student_ID = a.Student_ID) as thesis,
                      (select Teacher_Chinese_Name from Teacher, Teacher_Student where Teacher.Teacher_ID = Teacher_Student.Teacher_ID and Student_ID = a.Student_ID and Comment_Professor = 'yes')  as Fir,
                      (select Teacher_Chinese_Name from Teacher, Teacher_Student where Teacher.Teacher_ID = Teacher_Student.Teacher_ID and Student_ID = a.Student_ID and Comment_Professor = 'no_1') as Sec,
                      (select Teacher_Chinese_Name from Teacher, Teacher_Student where Teacher.Teacher_ID = Teacher_Student.Teacher_ID and Student_ID = a.Student_ID and Comment_Professor = 'no_2') as Thr from student a"></asp:SqlDataSource>

    <div class="divTAC">
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CssClass="ccc">
            <asp:TableRow><asp:TableCell><asp:Label ID="Head" runat="server" Text="-指導老師一覽-" Font-Names="標楷體" Font-Size="23pt"></asp:Label></asp:TableCell></asp:TableRow>
        </asp:Table>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="teacher_point" Width="890px" HorizontalAlign="Center" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="項次">
                    <ItemTemplate>
                        <asp:Label ID="Note" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="學號" SortExpression="Student_ID">
                    <ItemTemplate>
                        <asp:Label ID="Student_ID" runat="server" Text='<%# Bind("Student_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="研究生姓名">
                    <ItemTemplate>
                        <asp:Label ID="Student_Name" runat="server" Text='<%# Bind("Student_Chinese_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="thesis" NullDisplayText="尚未上傳論文" HeaderText="論文題目(中文)" SortExpression="thesis" />
                <asp:BoundField DataField="Fir" NullDisplayText="尚未選擇" HeaderText="指導教授" SortExpression="Fir" />
                <asp:BoundField DataField="Sec" HeaderText="共同指導" SortExpression="Sec" />
                <asp:BoundField DataField="Thr" HeaderText="共同指導" SortExpression="Thr" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

