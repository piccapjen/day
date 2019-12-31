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

public partial class GuidingTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    { 
        LinkButton linkdownload = sender as LinkButton;
        GridViewRow gridrow = linkdownload.NamingContainer as GridViewRow;        

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("select Thesis_FileName from Thesis_Plan where Thesis_Plan.Plan_Number = " + GridView1.DataKeys[gridrow.RowIndex].Value.ToString(), Conn);
        dr = cmd.ExecuteReader();
        dr.Read();

        string fileName = dr["Thesis_FileName"].ToString();
        string savePath = Server.MapPath("uploads\\");
        string filePath = savePath + fileName;
        Response.Clear();
        Response.ContentType = "application/octect-stream";
        Response.AppendHeader("content-disposition", "filename=" + fileName);

        Response.TransmitFile(filePath);
        Response.End();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button Button2 = sender as Button;
        GridViewRow gridrow = Button2.NamingContainer as GridViewRow;

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("Select Teacher_Email,Thesis_Plan.Plan_Number " +
        "from Teacher, Teacher_Thesis_Plan, Thesis_Plan " +
        " Where Thesis_Plan.Plan_Number = Teacher_Thesis_Plan.Plan_Number and Teacher.Teacher_ID = Teacher_Thesis_Plan.Teacher_ID and Thesis_Plan.Plan_Number = " + GridView1.DataKeys[gridrow.RowIndex].Value.ToString(), Conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        Session["Plan_Number"] = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();

        using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Teacher_Email"].ToString()))
        {
            mm.BodyEncoding = System.Text.Encoding.UTF8;
            mm.Subject = "國防大學論文審查系統信";
            mm.Body = "老師您好:<br>" +
                "此封信為國防大學論文審查系統發信<br>" +
                "提醒您系統中有新的論文計畫書待您審查<br>" +
                "國防大學資訊管理系<br> " +
                "祝您順心~~";
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

        SqlDataSource1.Update();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button Button3 = sender as Button;
        GridViewRow gridrow = Button3.NamingContainer as GridViewRow;
        Session["Plan_Number"] = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("Select Student_Email from  Student,Thesis_Plan Where Thesis_Plan.Student_ID=Student.Student_ID  and Thesis_Plan.Plan_Number = " + GridView1.DataKeys[gridrow.RowIndex].Value.ToString(), Conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        //Session["Email"] = dr["Student_Email"].ToString();



        using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Student_Email"].ToString()))
        {
            mm.BodyEncoding = System.Text.Encoding.UTF8;
            mm.Subject = "國防大學論文審查系統信";
            mm.Body = "同學您好:<br>" +
                "此封信為國防大學論文審查系統發信<br>" +
                "提醒您，您的指導老師認為您的論文計畫書還有待修改<br>" +
                "國防大學資訊管理系<br> " +
                "祝您順心~~";
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
    }
}