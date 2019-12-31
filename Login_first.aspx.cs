using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class Login_first : System.Web.UI.Page
{
    protected void Button1_Click1(object sender, EventArgs e)
    {  
        SqlDataSource1.Update();

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("select[Student_Email], [Student_Password] from Student where Student_ID = '" +Session["ID"] + "'", Conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        Session["Email"] = dr["Student_Email"].ToString();

        using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Student_Email"].ToString())) 
        {
            mm.BodyEncoding = System.Text.Encoding.UTF8;
            mm.Subject = "國防大學論文審查系統帳號驗證信";
            mm.Body = "首次登入強制進行密碼修改，請點選以下網址<br>"+
                "http://localhost:49908/Login_ChangePassword.aspx";
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
         Label2.Text = "驗證信已發送";
         Label2.Visible = true;
    }
}