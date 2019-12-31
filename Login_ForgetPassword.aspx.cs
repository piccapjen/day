using System;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Login_ForgetPassword : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();

        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("Select * from Student Where [Student_ID] = @id and [Student_Email] = @Email", Conn);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);

        dr = cmd.ExecuteReader();
        if (!dr.HasRows)
        {
            Label3.Text = "<script>window.alert(\"帳號或Email錯誤\");</script>";
            return;
        }
        else
        {
            dr.Read();

            using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Student_Email"].ToString()))
            {
                mm.Subject = "國防大學論文審查系統忘記密碼驗證信";
                mm.Body = "你的密碼為:"+ dr["Student_Password"].ToString();
                mm.IsBodyHtml = true;
                using (SmtpClient smtp = new SmtpClient())
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential networkCred = new NetworkCredential("chje3397053@gmail.com", "chje80593");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = networkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);

                }
            }
            Label3.Text = "驗證信已發送";
            Label3.Visible = true;
        }
    }




}