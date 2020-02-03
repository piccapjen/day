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
        SqlConnection Conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\USER\\Desktop\\day\\App_Data\\Thesis plan review system.mdf;Integrated Security=True");
        Conn.Open();

        SqlDataReader dr = null;
        foreach (char ch in TextBox1.Text)
        {
            if (char.IsDigit(ch) == true)
            {
                SqlCommand cmd = new SqlCommand("Select * From Student Where [Student_ID] = @id and [Student_Password] = @password", Conn);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                dr = cmd.ExecuteReader();
                if (!dr.HasRows)
                {
                    Label1.Text = "<script>window.alert(\"帳號或密碼錯誤\");</script>";
                    return;
                }
                else
                {
                    Session["Login"] = "OK";
                    dr.Read();
                    Session["ID"] = dr["Student_ID"].ToString();
                    Session["Password"] = dr["Student_Password"].ToString();
                    Session["Email"] = dr["Student_Email"].ToString();
                    Session["Chinese_name"] = dr["Student_Chinese_Name"].ToString();
                }

                if (TextBox1.Text == TextBox2.Text)
                {
                    cmd.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    Response.Redirect("Login_first.aspx");
                }
                else
                {
                    cmd.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    Response.Redirect("HomePage.aspx");
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Select * From Teacher Where [Teacher_ID] = @id and [Teacher_Password] = @password", Conn);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                dr = cmd.ExecuteReader();
                if (!dr.HasRows)
                {
                    Label1.Text = "<script>window.alert(\"帳號或密碼錯誤\");</script>";
                    return;
                }
                else if (TextBox1.Text == "ndmce99009")
                {
                    Session["Login"] = "OK";
                    dr.Read();
                    Session["ID"] = dr["Teacher_ID"].ToString();
                    Session["Password"] = dr["Teacher_Password"].ToString();
                    Session["Email"] = dr["Teacher_Email"].ToString();
                    Session["Chinese_name"] = dr["Teacher_Chinese_Name"].ToString();
                    cmd.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    Response.Redirect("HomePage_Committee.aspx");
                }
                else
                {
                    Session["Login"] = "OK";
                    dr.Read();
                    Session["ID"] = dr["Teacher_ID"].ToString();
                    Session["Password"] = dr["Teacher_Password"].ToString();
                    Session["Email"] = dr["Teacher_Email"].ToString();
                    Session["Chinese_name"] = dr["Teacher_Chinese_Name"].ToString();
                    cmd.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    Response.Redirect("HomePage_Teacher.aspx");
                }
            }

        }
    }
}