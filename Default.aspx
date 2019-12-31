<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">.divTAC{width:1100px;height:300px;margin:0 auto;color:black}</style>
    <style type="text/css">.divCCC{width:1100px;height:1000px;margin:0 auto;color:black}</style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Postgradute %>" SelectCommand="SELECT [P-Name] AS column1, [P-Class] AS column2 FROM [Postgraduate]"></asp:SqlDataSource>

        <div class="divTAC">

            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="標楷體" Font-Size="20pt" Text="-指導老師選擇"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="指導老師"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="共同指導"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="共同指導"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Names="標楷體" OnClick="TeacherSave" Text="儲存" />
            <br />
            <asp:Label ID="Label13" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="學校系所"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" Width="100px"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="學歷"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox13" runat="server" Width="100px"></asp:TextBox>
            <br /> 
            <asp:Label ID="Label16" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="經歷"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox14" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox15" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox16" runat="server" Width="100px"></asp:TextBox>
            <br />
            <asp:Label ID="Label17" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="通訊地址"></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox18" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox19" runat="server" Width="100px"></asp:TextBox>
            <br />
            <asp:Label ID="Label18" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="連絡電話"></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox21" runat="server" Width="100px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox22" runat="server" Width="100px"></asp:TextBox>

        </div>

        <div class="divCCC">

            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="標楷體" Font-Size="20pt" Text="-上傳論文計畫書、察看及回覆審查意見"></asp:Label>
            
            <br />
            <asp:FormView ID="FormView1" runat="server" Font-Names="標楷體" Font-Size="15pt" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="姓名:" ForeColor="Black"></asp:Label>
                <asp:Label ID="column1Label" runat="server" ForeColor="Black" Text='<%# Bind("column1") %>' />
                &nbsp;&nbsp;&nbsp
                <asp:Label ID="Label6" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="年班:" ForeColor="Black"></asp:Label>
                <asp:Label ID="column2Label" runat="server" ForeColor="Black" Text='<%# Bind("column2") %>' />
            </ItemTemplate>
            </asp:FormView>
            <asp:Label ID="Label8" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="論文計畫書名稱:" ForeColor="Black"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Font-Names="標楷體" Height="25px" OnClick="Button1_Click" Text="上傳論文" ForeColor="Black" Font-Bold="False" />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Label ID="Label4" runat="server" Font-Names="標楷體" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Names="標楷體" Font-Size="15pt" Text="#本系統的檔案上傳會覆蓋之前的檔案#" ForeColor="Red"></asp:Label>
            
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Font-Names="標楷體" Font-Size="15pt" ForeColor="Black" Text="審查意見、回覆"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label19" runat="server" Font-Names="標楷體" Font-Size="15pt" ForeColor="Black" Text="審查結果"></asp:Label>
            
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="250px" Width="300px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="250px" Width="300px"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" Font-Names="標楷體" OnClick="ReplySave" Text="儲存" />

        </div>
</asp:Content>


