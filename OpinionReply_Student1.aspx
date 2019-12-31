<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="OpinionReply_Student1.aspx.cs" Inherits="Opinion" %>

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
        .auto-style6 {
            width: 100px;
            height: 541px;
        }
        .auto-style7 {
            vertical-align: top;
            width: 1051px;
            height: 541px;
        }
        .auto-style8 {
            width: 100%;
            height: 138px;
        }
        .auto-style9 {
            width: 100px;
            height: 289px;
        }
        .auto-style10 {
           text-align: center;
           vertical-align: top;
            width: 1051px;
            height: 289px;
        }
        .auto-style11 {
            height: 289px;
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
        .auto-style26 {
            text-align: center;
            width: 170px;
            height: 63px;
        }
        .auto-style27 {
            text-align: center;
            width: 382px;
            height: 63px;
        }
        .auto-style30 {
            text-align: center;
            height: 35px;
            width: 176px;
        }
        .auto-style31 {
            text-align: center;
            width: 176px;
        }
        .auto-style32 {
            width: 100%;
            height: 1567px;
        }
        .auto-style33 {
            width: 100%;
            height: 731px;
        }
        .auto-style34 {
            text-align: center;
            height: 35px;
            width: 474px;
        }
        .auto-style35 {
            text-align: center;
            height: 35px;
            width: 473px;
        }
        .auto-style36 {
            
            width: 473px;
        }
        .auto-style37 {
            height: 541px;
        }
        .auto-style38 {
            
            width: 474px;
        }
        .auto-style39 {
            font-size: large;
        }
        .auto-style40 {
            text-align: center;
            width: 176px;
            height: 230px;
        }
        .auto-style41 {
           
            width: 473px;
            height: 230px;
        }
        .auto-style42 {
            
            width: 474px;
            height: 230px;
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
                            <td  class="auto-style26"><strong style="font-family: 標楷體">
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style18" ForeColor="Black" Text="論文題目"></asp:Label>
                                </strong></td>
                            <td class="auto-style27" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000000; border-left-style: solid; border-left-width: thin; border-left-color: #000000;"colspan="3"><strong>
                                <asp:TextBox ID="TextBox_ThesisTopic" runat="server" CssClass="auto-style18" Height="32px"  Width="771px" AutoPostBack="True" ForeColor="Black" OnTextChanged="TextBox_ThesisTopic_TextChanged" ></asp:TextBox>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" UpdateCommand="UPDATE Thesis_Plan SET Chinese_Topic = @Chinese_Topic   WHERE (Student_ID = @ID)"  SelectCommand="select * from Thesis_Plan " InsertCommand="INSERT INTO [Thesis_Plan] ([Plan_Number],[Chinese_Topic],[Student_ID])
VALUES (@p_number,@Chinese_Topic,@ID)
">
                                    <InsertParameters>
                                        <asp:ControlParameter ControlID="TextBox_ThesisTopic" Name="Chinese_Topic" PropertyName="Text" />
                                        <asp:SessionParameter Name="ID" SessionField="ID" />
                                        <asp:SessionParameter Name="p_number" SessionField="P_ID" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:ControlParameter ControlID="TextBox_ThesisTopic" Name="Chinese_Topic" PropertyName="Text" />
                                        <asp:SessionParameter Name="ID" SessionField="ID" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                </strong></td>
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
                            <td class="auto-style30" style="border: thin solid #000000"><strong>
                                <asp:Label ID="Label7" runat="server" CssClass="auto-style39" ForeColor="Black" Text="審查狀況"></asp:Label>
                                </strong></td>
                            <td class="auto-style35" style="border: thin solid #000000"><strong>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style39" ForeColor="Black" Text="審查意見"></asp:Label>
                                </strong></td>
                            <td class="auto-style34" style="border: thin solid #000000"><strong>
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style39" ForeColor="Black" Text="審查意見回覆"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style31" style="border: thin solid #000000">
                                <asp:Label ID="Label9" runat="server" ForeColor="Black">尚未審查</asp:Label>
                            </td>
                            <td class="auto-style36" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Height="220px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="440px"></asp:TextBox>
                            </td>
                            <td class="auto-style38" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox4" runat="server" Height="220px" Width="440px" BackColor="White" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style31" style="border: thin solid #000000">
                                <asp:Label ID="Label10" runat="server" ForeColor="Black">尚未審查</asp:Label>
                            </td>
                            <td class="auto-style36" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Height="220px" TextMode="MultiLine" Width="440px"></asp:TextBox>
                            </td>
                            <td class="auto-style38" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox5" runat="server" Height="220px" Width="440px" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40" style="border: thin solid #000000">
                                <asp:Label ID="Label11" runat="server" ForeColor="Black">尚未審查</asp:Label>
                            </td>
                            <td class="auto-style41" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox3" runat="server" Height="220px" TextMode="MultiLine" Width="440px"></asp:TextBox>
                            </td>
                            <td class="auto-style42" style="border: thin solid #000000">
                                <asp:TextBox ID="TextBox6" runat="server" Height="220px" Width="440px" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style37"></td>
            </tr>
        </table>
    </div>
 </asp:Content>

