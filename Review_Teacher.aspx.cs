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

public partial class Opinion_Teacher1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton linkdownload = sender as LinkButton;
        GridViewRow gridrow = linkdownload.NamingContainer as GridViewRow;

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("select Thesis_FileName from Thesis_Plan where Plan_Number = '" + GridView1.DataKeys[gridrow.RowIndex].Value.ToString() + "'", Conn);
        dr = cmd.ExecuteReader();
        dr.Read();
        dr.Close();

        SqlCommand cmd1 = new SqlCommand("select Thesis_FileName from Thesis_Plan where Plan_Number = '" + GridView1.DataKeys[gridrow.RowIndex].Value.ToString() + "'", Conn);
        dr = cmd1.ExecuteReader();
        dr.Read();
        //string fileName = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();
        string fileName = dr["Thesis_FileName"].ToString();
        string savePath = Server.MapPath("uploads\\");
        string filePath = savePath + fileName;
        Response.Clear();
        Response.ContentType = "application/octect-stream";
        Response.AppendHeader("content-disposition", "filename=" + fileName);

        Response.TransmitFile(filePath);
        Response.End();
    }


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
    }
}