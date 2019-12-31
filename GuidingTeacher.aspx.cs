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
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow) // 只處理資料欄位，不增加此判斷會連 header 文字都被修改
        {
            if (e.Row.Cells[5].Text == null)  // 處理 status 欄位，第8個欄位
            {
                e.Row.Cells[5].Text = "尚未審查";
            }
            else
            {
                switch (e.Row.Cells[5].Text)
                {
                    case "1":
                        e.Row.Cells[5].Text = "通過";
                        break;
                    case "2":
                        e.Row.Cells[5].Text = "不通過";
                        break;
                    case "3":
                        e.Row.Cells[5].Text = "修改後再審";
                        break;
                    default:
                        e.Row.Cells[5].Text = "意外狀態";
                        break;
                }
            }
        }
    }  //EOP GridView1_RowDataBound

    protected void LinkButton1_Click(object sender, EventArgs e)
    {/* 
         LinkButton LBtn = (LinkButton)sender;
          GridViewRow Row = (GridViewRow)LBtn.Parent.Parent;

        //string fileName = GridView1.Rows[GridView1.SelectedIndex].ToString();

         // string fileName = this.GridView1.Rows[0].Cells[3].Text;
 
        string downloadfile = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();
        //string downloadfile = GridView1.SelectedValue.ToString();
 
 */
        LinkButton linkdownload = sender as LinkButton;
        GridViewRow gridrow = linkdownload.NamingContainer as GridViewRow;
        string fileName = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();
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
        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        //SqlCommand cmd = new SqlCommand("Select Teacher_Email " +
          //  "from Teacher, Teacher_Thesis_Plan, Thesis_Plan " +
            //"Where Thesis_Plan.Chinese_Topic = Teacher_Thesis_Plan.Chinese_Topic and Teacher.Teacher_ID = Teacher_Thesis_Plan.Teacher_ID and Student_ID =  " + GridView1.Rows[GridView1.SelectedIndex].ToString() + "'", Conn);
        
        SqlCommand cmd = new SqlCommand("Select Teacher_Email " +
        "from Teacher, Teacher_Thesis_Plan, Thesis_Plan " +
        "Where Thesis_Plan.Chinese_Topic = Teacher_Thesis_Plan.Chinese_Topic and Teacher.Teacher_ID = Teacher_Thesis_Plan.Teacher_ID and Student_ID = "+  1090620214 , Conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        //Session["Email"] = dr["Student_Email"].ToString();

        using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Teacher_Email"].ToString()))
        {
            mm.Subject = "國防大學論文審查系統信";
            mm.Body = "老師您好" +
                "此封信為國防大學論文審查系統發信" +
                "提醒您系統中有新的論文待您審查" +
                "國防大學資訊管理系 " +
                "祝您順心";
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

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "agree")
        {
            int a = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[a].Cells[0].Text;

            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
            Conn.Open();
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("Select Teacher_Email " +
            "from Teacher, Teacher_Thesis_Plan, Thesis_Plan " +
            "Where Thesis_Plan.Chinese_Topic = Teacher_Thesis_Plan.Chinese_Topic and Teacher.Teacher_ID = Teacher_Thesis_Plan.Teacher_ID and Student_ID = " +  GridView1.Rows[a].Cells[0].Text, Conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            //Session["Email"] = dr["Student_Email"].ToString();

            using (MailMessage mm = new MailMessage("chje3397053@gmail.com", dr["Teacher_Email"].ToString()))
            {
                mm.Subject = "國防大學論文審查系統信";
                mm.Body = "老師您好" +
                    "此封信為國防大學論文審查系統發信" +
                    "提醒您系統中有新的論文待您審查" +
                    "國防大學資訊管理系 " +
                    "祝您順心";
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
        if (e.CommandName == "disagree")
        {
    }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}