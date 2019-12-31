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



        if (IsPostBack != true)
        {
         
            SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("Select Teacher_Student.Student_ID,Student.Student_Chinese_Name from Teacher_Student,Student Where Teacher_Student.Student_ID=Student.Student_ID and Teacher_Student.Teacher_ID =" + Session["ID"], Conn);
           // SqlCommand cmd1 = new SqlCommand("Select * from Teacher_Student Where [Teacher_ID] =" + Session["Id"], Conn);

            try
            {

                Conn.Open();
                dr = cmd.ExecuteReader();
                dr.Read();
               // SqlCommand cmd1 = new SqlCommand("Select * from Student Where [Student_ID] =" + dr["Student_ID"], Conn);
                Label_Name.Text = dr["Student_Chinese_Name"].ToString(); 
                Label_Term.Text = dr["Student_ID"].ToString().Substring(0, 3);
               // if (dr["Chinese_Topic"] != null)
               // {
                 //   Label_ThesisTopic1.Text = dr["Chinese_Topic"].ToString();
//

              //      LinkButton1.Visible = true;
              //      LinkButton1.Text = dr["File_Stream"].ToString();
               //     Session["Thesis_FileName"] = dr["File_Stream"].ToString();
              //  }
            

            }
            catch (Exception ex)
            {
                Response.Write("Error Message----" + ex.ToString() + "<HR/>");
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

    protected void SqlDataSource2_DataBinding(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}