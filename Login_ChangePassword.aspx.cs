using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_ChangePassword : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length < 6 || TextBox1.Text.Length > 12)
        {
            Label3.Text = "<script>window.alert(\"密碼限制長度大於6小於12\");</script>";
            return;
        }

        foreach (char ch in TextBox1.Text)
        {
            if (char.IsDigit(ch)==false && char.IsLetter(ch)==false)
            {
                Label3.Text = "<script>window.alert(\"密碼限制字元為字母及數字\");</script>";
                return;
            }
        }

        if ( TextBox1.Text == Session["ID"].ToString())
        {
            Label3.Text = "<script>window.alert(\"密碼請勿和帳號相同\");</script>";
            return;
        }

        SqlDataSource1.Update();
        Label3.Text = "密碼已更改";
    }
}