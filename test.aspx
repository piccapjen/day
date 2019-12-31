<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%--  確保網頁上至少放置一個LinkButton控制項
          沒有的話自己放一個Text為空值或空字串的LinkButton
          目的讓網頁自動產生__doPostBack()的js函數
        --%>
        <asp:LinkButton ID="LinkButton1" runat="server" />

        <%--OnClientClick="return false"，避免使用者一點擊按鈕就postback--%>
        <asp:Button ID="btnSubmit" runat="server" Text="submit form" OnClick="btnSubmit_Click" OnClientClick="return false" />

        <!--引用jQuery-->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" type="text/javascript"></script>
        <!--引用SweetAlert2.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.0/sweetalert2.all.js"></script>
        <script type="text/javascript"> 
            $(function () {
                $("#<%= btnSubmit.ClientID%>").click(function () {
                    myConfirm();
                });
            });

            //自訂預設值
            swal.setDefaults({
                confirmButtonText:"YES ",
                cancelButtonText:"NO "
            });
            //swal.resetDefaults();//清空自訂預設值
             
            function myConfirm() {

                let btnName = $("input#<%= btnSubmit.ClientID%>").attr("name");
                //confirm dialog範例
                swal({
                    title: "確定送出？",
                    html: "按下確定後檔案會傳送給審查委員",
                    type: "question",
                    showCancelButton: true//顯示取消按鈕
                }).then(
                    function (result) {
                        if (result.value) {
                            //使用者按下「確定」要做的事
                            //呼叫ASP.net自動產生的JS函數，第二個參數不給值避免網頁出錯
                            __doPostBack(btnName, "");
                        } else if (result.dismiss === "cancel") {
                            swal("取消", "資料未被送出", "error");
                        }
                    }//end function
                );//end then 
            }//end function myConfirm()

        </script>
        <%--ASP.net WebForm的話，要在</form>之前載入所需的JS檔--%>


        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label>


</asp:Content>

