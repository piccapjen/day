using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Review_UpDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] filepath = Directory.GetFiles(Server.MapPath("~/UploadFiles/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string tempfile in filepath)
            {
                files.Add(new ListItem(Path.GetFileName(tempfile), tempfile));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }
    }



    protected void btnUpload1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFile/") + filename);
            Response.Redirect(Request.Url.AbsoluteUri);

        }
        else
            Label1.Text = "You must select vaild file...";
    }

    protected void InkDownload_Click(object sender, EventArgs e)
    {
        string filepath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment;  fi lename=" + Path.GetFileName(filepath));
        Response.WriteFile(Server.MapPath("~/UploadFiles/") + filepath);
        Response.End();
    }

    protected void InkDelete_Click(object sender, EventArgs e)
    {
        string filepath = (sender as LinkButton).CommandArgument;
        File.Delete(Server.MapPath("~/UploadFiles/") + filepath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {

    }
}