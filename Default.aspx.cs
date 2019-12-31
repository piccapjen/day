using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TeacherSave(object sender, EventArgs e)
    {
        Response.Write("<script>alert('已紀錄您的指導老師及共同指導');</script>");
    }
    protected void ReplySave(object sender, EventArgs e)
    {
        Response.Write("<script>alert('您提出的審查意見已儲存成功');</script>");

    }
    SqlConnection con = new SqlConnection("Data Source=DBTEST ;Initial Catalog=sample;User ID=sa;Password=rain1019bow2122");
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileName = FileUpload1.FileName;  //-- User上傳的檔名（不包含 Client端的路徑！）
            //*********************************************************************
            //*** 方法一 *****
            //-- 註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實體」目錄。
            //       C#語法在撰寫磁碟的目錄位置時，請留意以下的寫法：
            String savePath = "d:\\Upload\\1080630201\\CC\\";

            //*** 方法二 *****
            //String savePath = Server.MapPath("https://drive.google.com/drive/folders/1pV1cyb9EuSuQcx1OLyUBIkLmJL9lKS6W?usp=sharing");
            //--網站上的 URL路徑。 Server.MapPath() 轉換成Web Server電腦上的硬碟「實體」目錄。

            //*** 方法三 *****
            //--註解：網站上的目錄路徑。所以不寫磁碟名稱（不寫 “實體”路徑）。
            //--以下的 URL路徑，請依照實際狀況，進行修改。否則程式會報錯！
            //String saveDir = "https://drive.google.com/drive/folders/1pV1cyb9EuSuQcx1OLyUBIkLmJL9lKS6W?usp=sharing";
            //String appPath = Request.PhysicalApplicationPath;
            ////-- appPath是網站 "根"目錄「轉換成」Server端硬碟路徑。

            //String savePath = appPath + saveDir;
            //*********************************************************************


            String saveResult = savePath + fileName;
            //-- 重點！！必須包含 Server端的「目錄」與「檔名」，才能使用 .SaveAs()方法！
            FileUpload1.SaveAs(saveResult);

            Label4.Text = "上傳成功，檔名---- " + fileName;
            Label4.Text += "，路徑檔名---- " + savePath;
        }
        else
        {
            Label4.Text = "請先挑選檔案之後，再來上傳";
        }
    }
}