<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Guide_Points_Student.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .divTAC{width:100%;height:1300px;color:black}
        .A-style{width:100%;height:200px;margin:0 auto;color:black}
        .B-style{width:100%;height:30px;margin:0 auto}
        .C-style{width:500px;color:black}
        .Choose_Adv{width:340px;height:100px}
        .Auto_Teacher{width:250px;height:160px}
    </style>

    <asp:SqlDataSource ID="DDL_Teacher" runat="server" ConnectionString="<%$ ConnectionStrings:Thesis plan review system %>" SelectCommand="SELECT [Teacher_ID], [Teacher_Chinese_Name] FROM [Teacher]"></asp:SqlDataSource>

    <div class="divTAC">

        <asp:Label ID="title1" runat="server" Font-Names="標楷體" Font-Size="23pt" Text="-指導教授積點查詢-"></asp:Label>
        
        <br />
        
        <table>
                <tr>
                    <td>
                        <!--選擇指導教授頁面-->
                        <asp:Table ID="Choose_AdvPro_Here" runat="server" Width="298px">
                            <asp:TableRow runat="server">
                                <asp:TableCell Width="70"></asp:TableCell>
                                <asp:TableCell Width="175">指導教授姓名</asp:TableCell>
                                <asp:TableCell Width="175">指導積點</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell Width="70">
                                    <!--選擇自下拉式選單所選的指導教授_1-->
                                    <asp:Button ID="Choose_Adv_1" runat="server" Text="選擇" OnClick="C_Adv_1"/>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <!--自下拉式選單選擇指導教授_1--><!--對應程式：ChangeData-->
                                    <asp:DropDownList ID="DDL_Adv_1" runat="server" DataSourceID="DDL_Teacher" DataTextField="Teacher_Chinese_Name" DataValueField="Teacher_ID" AutoPostBack="True" OnSelectedIndexChanged="ChangeData_1" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0">選擇指導教授</asp:ListItem>
                                        <asp:ListItem Value="1">自訂指導教授(一)</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <asp:Label ID="T_Point_1" runat="server" Text="0" Visible="False"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell Width="70">
                                    <!--選擇自下拉式選單所選的指導教授_2-->
                                    <asp:Button ID="Choose_Adv_2" runat="server" Text="選擇" OnClick="C_Adv_2"/>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <!--自下拉式選單選擇指導教授_2--><!--對應程式：ChangeData-->
                                    <asp:DropDownList ID="DDL_Adv_2" runat="server" DataSourceID="DDL_Teacher" DataTextField="Teacher_Chinese_Name" DataValueField="Teacher_ID" AutoPostBack="True" OnSelectedIndexChanged="ChangeData_2" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0">選擇指導教授</asp:ListItem>
                                        <asp:ListItem Value="2">自訂指導教授(二)</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <asp:Label ID="T_Point_2" runat="server" Text="" Visible="False"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell Width="70">
                                    <!--選擇自下拉式選單所選的指導教授_3-->
                                    <asp:Button ID="Choose_Adv_3" runat="server" Text="選擇" OnClick="C_Adv_3"/>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <!--自下拉式選單選擇指導教授_3--><!--對應程式：ChangeData-->
                                    <asp:DropDownList ID="DDL_Adv_3" runat="server" DataSourceID="DDL_Teacher" DataTextField="Teacher_Chinese_Name" DataValueField="Teacher_ID" AutoPostBack="True" OnSelectedIndexChanged="ChangeData_3" AppendDataBoundItems="True">
                                        <asp:ListItem Value="0">選擇指導教授</asp:ListItem>
                                        <asp:ListItem Value="3">自訂指導教授(三)</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                                <asp:TableCell Width="175">
                                    <asp:Label ID="T_Point_3" runat="server" Text="" Visible="False"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                    <td>
                        <!--自訂指導教授頁面_1--><!--平時為隱藏狀態-->
                        <asp:Table ID="Table_Costom_1" runat="server" Visible="False" CssClass="Auto_Teacher">
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell>(一)</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">姓名</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Name_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學校系(所)</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_School_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Edu_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">經歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Exp_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">通訊地址</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Address_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">聯絡電話</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Phone_1" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width=""></asp:TableCell>
                                <asp:TableCell Width="">
                                    <!--送出自行填寫的指導教授資料-->
                                    <asp:Button ID="Costom_It_Yourself_1" runat="server" Text="自訂指導教授" OnClick="Write_1"/>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                    <td>
                        <!--自訂指導教授頁面_2--><!--平時為隱藏狀態-->
                        <asp:Table ID="Table_Costom_2" runat="server" Visible="False" CssClass="Auto_Teacher">
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell>(二)</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">姓名</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Name_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學校系(所)</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_School_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Edu_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">經歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Exp_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">通訊地址</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Address_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">聯絡電話</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Phone_2" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width=""></asp:TableCell>
                                <asp:TableCell Width="">
                                    <!--送出自行填寫的指導教授資料-->
                                    <asp:Button ID="Costom_It_Yourself_2" runat="server" Text="自訂指導教授" OnClick="Write_2"/>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                    <td>
                        <!--自訂指導教授頁面_3--><!--平時為隱藏狀態-->
                        <asp:Table ID="Table_Costom_3" runat="server" Visible="False" CssClass="Auto_Teacher">
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell>(三)</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">姓名</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Name_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學校系(所)</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_School_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">學歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Edu_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">經歷</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Exp_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">通訊地址</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Address_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width="">聯絡電話</asp:TableCell>
                                <asp:TableCell Width=""><asp:TextBox ID="CAP_Phone_3" runat="server" CssClass="TextBoxEdit"></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell Width=""></asp:TableCell>
                                <asp:TableCell Width="">
                                    <!--送出自行填寫的指導教授資料-->
                                    <asp:Button ID="Costom_It_Yourself_3" runat="server" Text="自訂指導教授" OnClick="Write_3"/>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </td>
                </tr>
            </table>

        <asp:Label ID="error" runat="server" Text="" Visible="False"></asp:Label>

        <br />
        <table style="width:1100px;" class="B-style">
            <tr><td><asp:Label ID="Label1" runat="server" Font-Names="標楷體" Font-Size="20pt" Text="-指導教授-"></asp:Label></td></tr>
        </table>
        <!--選擇頁面-->
        <table style="width:1100px;" class="A-style">
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

        <!--送出、重置-->
        <asp:Table ID="Bottom_Here" runat="server" height="25px" HorizontalAlign="Center" width="1100px">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Finish" runat="server" Text="" Visible="False"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Button ID="Reset"  runat="server" Text="重置" Font-Names="標楷體" Font-Size="12pt" OnClick="Clean"/>
                        <asp:Button ID="Submit" runat="server" Text="送出" Font-Names="標楷體" Font-Size="12pt" OnClick="Send"/>
                    </asp:TableCell>
                </asp:TableRow>
        </asp:Table>

    </div>

</asp:Content>

