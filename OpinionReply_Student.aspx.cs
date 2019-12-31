using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Opinion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        Label_Name.Text = Session["Chinese_name"].ToString();
        Label_Term.Text = Session["ID"].ToString().Substring(0, 3);


         
        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("Select * from Thesis_Plan Where [Student_ID] =" + Session["ID"], Conn);

        try
        {

            Conn.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (IsPostBack != true)
                {
                   TextBox_ThesisTopic.Text = dr["Chinese_Topic"].ToString();
                }

                Session["Chinese_Topic"] = dr["Chinese_Topic"];

                LinkButton1.Visible = true;
                LinkButton1.Text = dr["Thesis_FileName"].ToString();
                Session["Thesis_FileName"] = dr["Thesis_FileName"].ToString();
            }
            else
            {
                Session["Chinese_Topic"] = null;
            }

        }
        catch (Exception ex)
        {
           // Response.Write("Error Message----" + ex.ToString() + "<HR/>");
        }
        
        finally
        {
            if (dr != null)
            {
                cmd.Cancel();
                dr.Close();
                Conn.Close();
                Conn.Dispose();
            }
        }
        GridView1.DataSourceID = "SqlDataSource3";
    }

    protected void TextBox_ThesisTopic_TextChanged(object sender, EventArgs e)
    {
        if (Session["Chinese_Topic"] == null)
        {
            int max = 1;
            int shit = 0;
            int i = 1;
            do
            {
                SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
                SqlDataReader dr = null;
                SqlCommand cmd = new SqlCommand("select top 1 Teacher.Teacher_ID " +
                    "from Teacher where  Teacher.Teacher_ID not in " +
                    "(select Teacher_ID from Teacher_Student " +
                    "where  Student_ID=" + Session["ID"] + ")order by NewID()", Conn);
                Conn.Open();
                dr = cmd.ExecuteReader();
                dr.Read();
                Session["New_TID"] = dr["Teacher_ID"];
                dr.Close();

                SqlCommand cmd1 = new SqlCommand("SELECT count (Teacher_Thesis_Plan.Teacher_ID) as count FROM Teacher_Thesis_Plan WHERE Teacher_ID='" + Session["New_TID"]+"'", Conn);
                dr = cmd1.ExecuteReader();
                dr.Read();
                Session["n"] = dr["count"];
                dr.Close();

                SqlCommand cmd2 = new SqlCommand("select count(*) as numtotal from countnum where num = " + max, Conn);
                dr = cmd2.ExecuteReader();
                dr.Read();

                Session["num"] = dr["numtotal"];
                dr.Close();
                Conn.Close();
                Conn.Dispose();

                if (int.Parse(Session["n"].ToString()) < max)
                {
                    SqlDataSource1.Insert();
                    i++;                  
                }

                shit++;
                if (shit == 50)
                {
                    max++;
                    shit = 0;
                }

            } while (i < 4);
        }
        else
        {
            SqlDataSource1.Update();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String savePath ="c:\\temp\\day\\uploads\\";
        if (FileUpload1.HasFile)
        {
            string fileName = FileUpload1.FileName;
            savePath = savePath + fileName;
            FileUpload1.SaveAs(savePath);
            Session["Thesis_FileName"] = FileUpload1.FileName;
            LinkButton1.Visible = true;
            LinkButton1.Text = FileUpload1.FileName; 
            SqlDataSource2.Update();
        }
        else
        {
            Label8.Text = "請選擇檔案";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string savePath = Server.MapPath("uploads\\");
        string fileName = Session["Thesis_FileName"].ToString();
        string filePath = savePath + fileName;

        Response.Clear();
        Response.ContentType = "application/octect-stream";
        Response.AppendHeader("content-disposition", "filename=" + fileName);
        // Response.TransmitFile(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        Response.TransmitFile(filePath);
        Response.End();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}