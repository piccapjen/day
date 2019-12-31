using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        int max = 1;
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
            cmd.Cancel();
            dr.Close();

            SqlCommand cmd1 = new SqlCommand("SELECT count (Teacher_Thesis_Plan.Teacher_ID) as count FROM Teacher_Thesis_Plan WHERE Teacher_ID='" + Session["New_TID"] + "'", Conn);
            dr = cmd1.ExecuteReader();
            dr.Read();
            Session["n"] = dr["count"];
            cmd.Cancel();
            dr.Close();

            SqlCommand cmd2 = new SqlCommand("select count(*) as numtotal from countnum where num = " + max, Conn);
            dr = cmd2.ExecuteReader();
            dr.Read();
            int num = 0;
            num = int.Parse(dr["numtotal"].ToString());
            Session["num"] = dr["numtotal"];
            cmd.Cancel();
            dr.Close();
    
 
            //  Label2.Text = Session["num"].ToString();
            if (int.Parse(Session["num"].ToString()) < 11)
            {

                if (int.Parse(Session["n"].ToString()) < max)
                {
                    Label2.Text = "if 內";
                    i++;
                }

            }
           else
            {
                Label2.Text = "else 內";
                max++;
            }
        }
        while (i < 4);

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Write("執行btnSubmit_Click事件");

        //在</form>之前輸出Javascript
        string js = @"swal('完成!', '檔案已經送出', 'success');";
        ClientScript.RegisterStartupScript(Page.GetType(), Guid.NewGuid().ToString(), js, true);
    }
}