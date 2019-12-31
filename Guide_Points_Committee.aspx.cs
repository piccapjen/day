using System;
using System.Text;
using System.Threading;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    private string m_CndName = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null) { Response.Redirect("Login.aspx"); }
        if (!IsPostBack) {BindGridView();}
    }

    private void BindGridView()
    {
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("select distinct Student_Chinese_Name, Teacher_Chinese_Name, Thesis_Plan.Plan_Number from Student, Teacher, Teacher_Thesis_Plan, Thesis_Plan where Student.Student_ID = Thesis_Plan.Student_ID and Teacher.Teacher_ID = Teacher_Thesis_Plan.Teacher_ID and Thesis_Plan.Plan_Number = Teacher_Thesis_Plan.Plan_Number", cn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
        cn.Close();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    //編輯
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
    }
    //取消
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGridView();
    }
    //編輯時的更新按鈕
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
        cn.Open();
        string ID = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label2")).Text;
        string T_ID = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList4")).Text;
        string T_S_1 = "select Teacher_ID from Student, Teacher_Student where Student.Student_ID = Teacher_Student.Student_ID and Comment_Professor = 'yes'";
        string T_S_2 = "select Teacher_ID from Student, Teacher_Student where Student.Student_ID = Teacher_Student.Student_ID and Comment_Professor = 'no_1'";
        string T_S_3 = "select Teacher_ID from Student, Teacher_Student where Student.Student_ID = Teacher_Student.Student_ID and Comment_Professor = 'no_2'";
        SqlCommand cmd_F = new SqlCommand(T_S_1, cn);
        SqlCommand cmd_S = new SqlCommand(T_S_2, cn);
        SqlCommand cmd_T = new SqlCommand(T_S_3, cn);
        string Fir = cmd_F.ExecuteScalar().ToString();
        string Sec = cmd_S.ExecuteScalar().ToString();
        string Tri = cmd_T.ExecuteScalar().ToString();
        if (T_ID != Fir && T_ID != Sec && T_ID != Tri)
        {
            string update = "update Teacher_Thesis_Plan set Teacher_ID = '" + T_ID + "' where Plan_Number = '" + ID + "'";
            SqlCommand cmd = new SqlCommand(update, cn);
            cmd.ExecuteNonQuery();
        }
        else
        {
            Response.Write("<script>alert('"+"此老師為該為學生的指導教授，請重新選擇"+"');</script>");
        }
        cn.Close();
        GridView1.EditIndex = -1;
        BindGridView();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}