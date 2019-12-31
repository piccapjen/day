<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="OpinionReply_Student - 複製.aspx.cs" Inherits="Opinion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100px;
            height: 92px;
        }
        .auto-style4 {
            width: 1051px;
            height: 92px;
            font-weight: 700;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style5 {
            height: 92px;
        }
 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	        margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
        .auto-style8 {
            width: 100%;
            height: 219px;
        }
        .auto-style9 {
            width: 100px;
            height: 195px;
        }
        .auto-style10 {
           text-align: center;
           vertical-align: top;
            width: 1051px;
            height: 195px;
        }
        .auto-style12 {
            height: 1146px;
        }
        .auto-style14 {
            text-align: center;
            width: 170px;
            height: 62px;
        }
        .auto-style16 {
            text-align: center;
            width: 382px;
            height: 62px;
        }
        .auto-style17 {
            height: 54px;
            width: 382px;
            margin-left: 40px;
        }
        .auto-style18 {
            font-size: x-large;
        }
        .auto-style22 {
            height: 62px;
            width: 172px;
        }
        .auto-style23 {
            width: 170px;
            height: 54px;
        }
        .auto-style24 {
            text-align: center;
            height: 54px;
            width: 172px;
        }
        .auto-style32 {
            width: 100%;
            height: 1134px;
        }
        .auto-style33 {
            width: 100%;
            height: 464px;
        }
        .auto-style39 {
            font-size: large;
        }
        .auto-style44 {
            text-align: center;
            height: 62px;
        }
        .auto-style45 {
            height: 62px;
            width: 143px;
            font-size: x-large;
        }
        .auto-style47 {
           vertical-align: top;
            height: 35px;
            width: 372px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style12">
        <table class="auto-style32">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4" style="line-height: 0px">xkjjjlll<br />
                    kkk<br />
                    <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Black" Text="論文計劃書意見審查回覆表"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10" style="border: thin solid #000000">
                    <table  class="auto-style8">
                        <tr>
                            <td style="border:thin solid #000000;" class="auto-style14"><strong style="font-family: 標楷體; top: auto;"align="center">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" ForeColor="Black" Text="姓名"></asp:Label>
                                </strong></td>
                            <td class="auto-style16" style="border: thin solid #000000;"><strong>
                                <asp:Label ID="Label_Name" runat="server" CssClass="auto-style18" ForeColor="Black"></asp:Label>
                                </strong></td>
                            <td class="auto-style22" style="border: thin solid #000000"><strong style="font-family: 標楷體">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style18" ForeColor="Black" Text="年班(期)"></asp:Label>
                                </strong></td>
                            <td style="border: thin solid #000000" class="auto-style44">
                                <asp:Label ID="Label_Term" runat="server" CssClass="auto-style45" ForeColor="Black"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style23" style="border-top-style: solid; border-top-width: thin; border-top-color: #000000">
                                <asp:Button ID="Button3" runat="server" ForeColor="Black" Text="送出" OnClick="Button3_Click" />
                            </td>
                            <td class="auto-style17">
                                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Width="341px" />
                            </td>
                            <td class="auto-style24">
                                <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="上傳" OnClick="Button1_Click" />
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT * FROM [db_user]" UpdateCommand="UPDATE Thesis_Plan SET Thesis_FileName = @Thesis_FileName  WHERE (Student_ID = @ID)">
                                    <UpdateParameters>
                                        <asp:SessionParameter Name="ID" SessionField="ID" />
                                        <asp:SessionParameter Name="Thesis_FileName" SessionField="Thesis_FileName" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label8" runat="server" CssClass="auto-style39" ForeColor="Black"></asp:Label>
                            </td>
                            <td>

                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Visible="False">LinkButton</asp:LinkButton>

                            </td>
                        </tr>
                    </table>
                    <table class="auto-style33">
                        <tr>
                            <td class="auto-style47" style="border: thin solid #000000">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="273px" Width="1046px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        <asp:BoundField DataField="Teacher_Passing_Exam" HeaderText="審查狀況" SortExpression="Teacher_Passing_Exam" />
                                        <asp:TemplateField HeaderText="論文標題" SortExpression="Chinese_Topic">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Chinese_Topic") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <strong>
                                                <asp:TextBox ID="TextBox_ThesisTopic" runat="server" AutoPostBack="True" CssClass="auto-style18" ForeColor="Black" Height="32px" OnTextChanged="TextBox_ThesisTopic_TextChanged" Width="568px" Text='<%# Eval("Chinese_Topic") %>'></asp:TextBox>
                                                </strong>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Review_Comments" HeaderText="審查意見" SortExpression="Review_Comments" />
                                        <asp:BoundField DataField="Review_Opinion" HeaderText="審查意見回覆" SortExpression="Review_Opinion" />
                                        <asp:ButtonField ButtonType="Button" Text="按鈕" />
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
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT Thesis_Plan.Teacher_Passing_Exam, Thesis_Plan.Review_Comments, Thesis_Plan.Review_Opinion, Teacher_Thesis_Plan.Teacher_ID ,Chinese_Topic
FROM Thesis_Plan INNER JOIN Teacher_Thesis_Plan ON Thesis_Plan.Plan_Number = Teacher_Thesis_Plan.Plan_Number 
WHERE (Thesis_Plan.Student_ID = @ID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="ID" SessionField="ID" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                </table>
            </tr>
        </table>
    </div>
 </asp:Content>

