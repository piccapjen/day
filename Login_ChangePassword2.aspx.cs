using System;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] !=null)
        {
         Session["Login"] = null;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length < 6 || TextBox1.Text.Length > 12)
        {
            Label1.Text = "<script>window.alert(\"密碼限制長度大於6小於12\");</script>";
            return;
        }

        foreach (char ch in TextBox1.Text)
        {
            if (char.IsDigit(ch) == false && char.IsLetter(ch) == false)
            {
                Label1.Text = "<script>window.alert(\"密碼限制字元為字母及數字\");</script>";
                return;
            }
        }

        if (TextBox1.Text == Session["ID"].ToString())
        {
            Label1.Text = "<script>window.alert(\"密碼請勿和帳號相同\");</script>";
            return;
        }

        SqlDataSource1.Update();
        Label1.Text = "<script>window.alert(\"密碼已更改\");</script>";
        Response.Redirect("HomePage.aspx");
    }
}