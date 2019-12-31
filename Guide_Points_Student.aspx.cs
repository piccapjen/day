using System;
using System.Text;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    private string query;
    private object conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null){Response.Redirect("Login.aspx");}
    }

    //重置所有指導教授 #完成，看是否可以精簡2019.05.02#
    protected void Clean(object sender, System.EventArgs e)
    {
        //清除第一欄
        this.FAP_Name.Text = null;
        this.FAP_School.Text = null;
        this.FAP_Edu.Text = null;
        this.FAP_Exp.Text = null;
        this.FAP_Address.Text = null;
        this.FAP_Phone.Text = null;

        //清除第二欄
        this.SAP_Name.Text = null;
        this.SAP_School.Text = null;
        this.SAP_Edu.Text = null;
        this.SAP_Exp.Text = null;
        this.SAP_Address.Text = null;
        this.SAP_Phone.Text = null;

        //清除第三欄
        this.TAP_Name.Text = null;
        this.TAP_School.Text = null;
        this.TAP_Edu.Text = null;
        this.TAP_Exp.Text = null;
        this.TAP_Address.Text = null;
        this.TAP_Phone.Text = null;

        error.Text = null;
        Finish.Text = null;
    }

    //儲存資料 !!!!!!請教老師，以及多儲存的方法!!!!!!!!
    protected void Send(object sender, System.EventArgs e)
    {
        string ID = Session["ID"].ToString();
        SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
        cn.Open(); //開啟資料庫的連結
        string search_ID_1 = FAP_Name.Text;
        string search_ID_2 = SAP_Name.Text;
        string search_ID_3 = TAP_Name.Text;
        if (search_ID_1 != "" && search_ID_2 == "" && search_ID_3 == "")
        {
            string sqlStr = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_1 + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);
            string x = cmd.ExecuteScalar().ToString();
            StringBuilder SQL_str = new StringBuilder();
            SQL_str.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + x + "','"+ ID +"','yes','1')");  //新增sql語法內容，就是insert into
            using (SqlCommand cmp = new SqlCommand(SQL_str.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
                Finish.Visible = true;
                Finish.Text = "選擇指導老師成功......";  //成功訊息
                Response.Redirect("Personalinformation.aspx");
            } 
        }
        else if (search_ID_1 != "" && search_ID_2 != "" && search_ID_3 == "")
        {
            string sqlFir = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_1 + "'";
            string sqlSec = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_2 + "'";
            SqlCommand cmd_F = new SqlCommand(sqlFir, cn);
            SqlCommand cmd_S = new SqlCommand(sqlSec, cn);
            string x = cmd_F.ExecuteScalar().ToString();
            string y = cmd_S.ExecuteScalar().ToString();
            StringBuilder SQL_Fir = new StringBuilder();
            StringBuilder SQL_Sec = new StringBuilder();
            SQL_Fir.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + x + "','" + ID + "','yes','0.5')");  //新增sql語法內容---insert into
            SQL_Sec.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + y + "','" + ID + "','no_1','0.5')");  //新增sql語法內容---insert into
            using (SqlCommand cmp = new SqlCommand(SQL_Fir.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
            }
            using (SqlCommand cmp = new SqlCommand(SQL_Sec.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
            }
            Finish.Visible = true;
            Finish.Text = "選擇指導老師成功......";  //成功訊息
            Response.Redirect("Personalinformation.aspx");
        }
        else if (search_ID_1 != "" && search_ID_2 != "" && search_ID_3 != "")
        {
            string sqlFir = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_1 + "'";
            string sqlSec = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_2 + "'";
            string sqlTir = "SELECT Teacher_ID FROM Teacher WHERE Teacher_Chinese_Name = '" + search_ID_3 + "'";
            SqlCommand cmd_F = new SqlCommand(sqlFir, cn);
            SqlCommand cmd_S = new SqlCommand(sqlSec, cn);
            SqlCommand cmd_T = new SqlCommand(sqlTir, cn);
            string x = cmd_F.ExecuteScalar().ToString();
            string y = cmd_S.ExecuteScalar().ToString();
            string z = cmd_T.ExecuteScalar().ToString();
            StringBuilder SQL_Fir = new StringBuilder();
            StringBuilder SQL_Sec = new StringBuilder();
            StringBuilder SQL_Tir = new StringBuilder();
            SQL_Fir.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + x + "','" + ID + "','yes','0.5')");  //新增sql語法內容---insert into
            SQL_Sec.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + y + "','" + ID + "','no_1','0.5')");  //新增sql語法內容---insert into
            SQL_Tir.Append("insert into Teacher_Student(Teacher_ID,Student_ID,Comment_Professor,Permission) values('" + z + "','" + ID + "','no_2','0.5')");  //新增sql語法內容---insert into
            using (SqlCommand cmp = new SqlCommand(SQL_Fir.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
            }
            using (SqlCommand cmp = new SqlCommand(SQL_Sec.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
            }
            using (SqlCommand cmp = new SqlCommand(SQL_Tir.ToString(), cn))
            {
                cmp.ExecuteNonQuery(); //執行sql命令
            }
            Finish.Visible = true;
            Finish.Text = "選擇指導老師成功......";  //成功訊息
            Response.Redirect("Personalinformation.aspx");
        }
        else
        {
            Finish.Visible = true;
            Finish.Text = "選擇指導教授失敗，請檢查是否有正確的選擇指導教授";
        }
        
        cn.Close();	//關閉資料庫的連結
    }



    //顯示指導積點 #完成，看是否可以整合、精簡2019.05.02#
    protected void ChangeData_1(object sender, System.EventArgs e)
    {
        //每次選擇之前，都先將隱藏的選項切回隱藏
        if (DDL_Adv_1.SelectedValue == "0")
        {
            T_Point_1.Visible = false;
            Table_Costom_1.Visible = false;
            error.Text = null;
        }
        else if (DDL_Adv_1.SelectedValue == "1")
        {
            T_Point_1.Visible = false;
            Table_Costom_1.Visible = false;
            error.Text = null;
            Auto_Change_1( );
        }
        else
        {
            T_Point_1.Visible = true;
            Table_Costom_1.Visible = false;
            error.Text = null;
            //抓取指導積點

            SqlConnection cn = new SqlConnection{ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString};
            cn.Open(); //開啟資料庫的連結
            string search_point = DDL_Adv_1.SelectedValue;
            string sqlStr = "SELECT sum(permission) FROM Teacher_Student WHERE Teacher_ID = '" + search_point + "'";
            SqlCommand cmd = new SqlCommand(sqlStr,cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            string x = cmd.ExecuteScalar().ToString();
            T_Point_1.Text = x; //傳單一值回來
            cn.Close();	//關閉資料庫的連結
        }

    }
    protected void ChangeData_2(object sender, System.EventArgs e)
    {
        DropDownList DropDownList = (DropDownList)sender;

        //每次重新選擇另一個老師之前，都先將隱藏的選項切回隱藏
        if (DropDownList.SelectedValue == "0")
        {
            T_Point_2.Visible = false;
            Table_Costom_2.Visible = false;
            error.Text = null;
        }
        else if (DropDownList.SelectedValue == "2")
        {
            T_Point_2.Visible = false;
            Table_Costom_2.Visible = false;
            error.Text = null;
            Auto_Change_2();
        }
        else
        {
            T_Point_2.Visible = true;
            Table_Costom_2.Visible = false;
            error.Text = null;
            //抓取指導積點
            SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
            cn.Open(); //開啟資料庫的連結
            string search_point = DDL_Adv_2.SelectedValue;
            string sqlStr = "SELECT sum(permission) FROM Teacher_Student WHERE Teacher_ID = '" + search_point + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            string x = cmd.ExecuteScalar().ToString();
            T_Point_2.Text = x;
            cn.Close();	//關閉資料庫的連結
        }

    }
    protected void ChangeData_3(object sender, System.EventArgs e)
    {
        DropDownList DropDownList = (DropDownList)sender;

        //每次重新選擇另一個老師之前，都先將隱藏的選項切回隱藏
        if (DropDownList.SelectedValue == "0")
        {
            T_Point_3.Visible = false;
            Table_Costom_3.Visible = false;
            error.Text = null;
        }
        else if (DropDownList.SelectedValue == "3")
        {
            T_Point_3.Visible = false;
            Table_Costom_3.Visible = false;
            error.Text = null;
            Auto_Change_3();
        }
        else
        {
            T_Point_3.Visible = true;
            Table_Costom_3.Visible = false;
            error.Text = null;
            //抓取指導積點
            SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
            cn.Open(); //開啟資料庫的連結
            string search_point = DDL_Adv_3.SelectedValue;
            string sqlStr = "SELECT sum(permission) FROM Teacher_Student WHERE Teacher_ID = '" + search_point + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            string x = cmd.ExecuteScalar().ToString();
            T_Point_3.Text = x;
            cn.Close();	//關閉資料庫的連結
        }

    }

    //自訂指導教授開啟 #完成，看是否可以整合、精簡2019.05.02#
    protected void Auto_Change_1( )
    {
        T_Point_1.Visible = true;
        Table_Costom_1.Visible = true;
        T_Point_1.Text = "自訂選單開啟";
    }
    protected void Auto_Change_2( )
    {
        T_Point_2.Visible = true;
        Table_Costom_2.Visible = true;
        T_Point_2.Text = "自訂選單開啟";
    }
    protected void Auto_Change_3( )
    {
        T_Point_3.Visible = true;
        Table_Costom_3.Visible = true;
        T_Point_3.Text = "自訂選單開啟";
    }

    //選擇指導教授 #完成，看是否可以整合、精簡2019.05.02#
    protected void C_Adv_1(object sender, System.EventArgs e)
    {
        if (DDL_Adv_1.SelectedValue == "0")
        {
            error.Visible = true;
            error.Text = "#請選擇指導老師後，再按選擇鈕#";
        }
        else if (DDL_Adv_1.SelectedValue == "1")
        {
            error.Visible = true;
            error.Text = "#自訂指導教授的選擇按鈕在其設定下方#";
        }
        else
        {
            //老師資料抓取
            SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
            cn.Open(); //開啟資料庫的連結
            string search_teacher = DDL_Adv_1.SelectedValue;
            string sqlStr = "SELECT * FROM Teacher WHERE Teacher_ID = '" + search_teacher + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                FAP_Name.Text       = reader["Teacher_Chinese_Name"].ToString();
                FAP_School.Text     = reader["Teacher_School_Department"].ToString();
                FAP_Edu.Text        = reader["Teacher_Education"].ToString();
                FAP_Exp.Text        = reader["Teacher_Experience"].ToString();
                FAP_Address.Text    = reader["Teacher_Address"].ToString();
                FAP_Phone.Text      = reader["Teacher_Phone_Number"].ToString();
            }
            cn.Close();	//關閉資料庫的連結
        }
    }
    protected void C_Adv_2(object sender, System.EventArgs e)
    {
        if (DDL_Adv_2.SelectedValue == "0")
        {
            error.Visible = true;
            error.Text = "#請選擇指導老師後，再按選擇鈕#";
        }
        else if (DDL_Adv_2.SelectedValue == "2")
        {
            error.Visible = true;
            error.Text = "#自訂指導教授的選擇按鈕在其設定下方#";
        }
        else
        {
            //老師資料抓取
            SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
            cn.Open(); //開啟資料庫的連結
            string search_teacher = DDL_Adv_2.SelectedValue;
            string sqlStr = "SELECT * FROM Teacher WHERE Teacher_ID = '" + search_teacher + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                SAP_Name.Text = reader["Teacher_Chinese_Name"].ToString();
                if (FAP_Name.Text == SAP_Name.Text)
                {
                    error.Visible = true;
                    error.Text = "#重複選擇相同的指導老師#";
                    SAP_Name.Text = null;
                    SAP_School.Text = null;
                    SAP_Edu.Text = null;
                    SAP_Exp.Text = null;
                    SAP_Address.Text = null;
                    SAP_Phone.Text = null;
                }
                else
                {
                    SAP_School.Text = reader["Teacher_School_Department"].ToString();
                    SAP_Edu.Text = reader["Teacher_Education"].ToString();
                    SAP_Exp.Text = reader["Teacher_Experience"].ToString();
                    SAP_Address.Text = reader["Teacher_Address"].ToString();
                    SAP_Phone.Text = reader["Teacher_Phone_Number"].ToString();
                }
            }
            cn.Close();	//關閉資料庫的連結
        }
    }
    protected void C_Adv_3(object sender, System.EventArgs e)
    {
        if (DDL_Adv_3.SelectedValue == "0")
        {
            error.Visible = true;
            error.Text = "#請選擇指導老師後，再按選擇鈕#";
        }
        else if (DDL_Adv_3.SelectedValue == "3")
        {
            error.Visible = true;
            error.Text = "#自訂指導教授的選擇按鈕在其設定下方#";
        }
        else
        {
            //老師資料抓取
            SqlConnection cn = new SqlConnection { ConnectionString = ConfigurationManager.ConnectionStrings["Thesis plan review system"].ConnectionString };
            cn.Open(); //開啟資料庫的連結
            string search_teacher = DDL_Adv_3.SelectedValue;
            string sqlStr = "SELECT * FROM Teacher WHERE Teacher_ID = '" + search_teacher + "'";
            SqlCommand cmd = new SqlCommand(sqlStr, cn);   //宣告SqlCommand並將SQL語法及連結語法帶入
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                TAP_Name.Text = reader["Teacher_Chinese_Name"].ToString();
                if (TAP_Name.Text == FAP_Name.Text)
                {
                    error.Visible = true;
                    error.Text = "#重複選擇相同的指導老師#";
                    TAP_Name.Text = null;
                    TAP_School.Text = null;
                    TAP_Edu.Text = null;
                    TAP_Exp.Text = null;
                    TAP_Address.Text = null;
                    TAP_Phone.Text = null;
                }
                else if (TAP_Name.Text == SAP_Name.Text)
                {
                    error.Visible = true;
                    error.Text = "#重複選擇相同的指導老師#";
                    TAP_Name.Text = null;
                    TAP_School.Text = null;
                    TAP_Edu.Text = null;
                    TAP_Exp.Text = null;
                    TAP_Address.Text = null;
                    TAP_Phone.Text = null;
                }
                else
                {
                    TAP_School.Text = reader["Teacher_School_Department"].ToString();
                    TAP_Edu.Text = reader["Teacher_Education"].ToString();
                    TAP_Exp.Text = reader["Teacher_Experience"].ToString();
                    TAP_Address.Text = reader["Teacher_Address"].ToString();
                    TAP_Phone.Text = reader["Teacher_Phone_Number"].ToString();
                }
                
            }
            cn.Close();	//關閉資料庫的連結
        }
    }

    //自訂指導教授 #完成，看是否可以整合、精簡2019.05.02#
    protected void Write_1(object sender, System.EventArgs e)
    {
        FAP_Name.Text = CAP_Name_1.Text;
        FAP_School.Text = CAP_School_1.Text;
        FAP_Edu.Text = CAP_Edu_1.Text;
        FAP_Exp.Text = CAP_Exp_1.Text;
        FAP_Address.Text = CAP_Address_1.Text;
        FAP_Phone.Text = CAP_Phone_1.Text;
    }
    protected void Write_2(object sender, System.EventArgs e)
    {
        SAP_Name.Text = CAP_Name_2.Text;
        SAP_School.Text = CAP_School_2.Text;
        SAP_Edu.Text = CAP_Edu_2.Text;
        SAP_Exp.Text = CAP_Exp_2.Text;
        SAP_Address.Text = CAP_Address_2.Text;
        SAP_Phone.Text = CAP_Phone_2.Text;
    }
    protected void Write_3(object sender, System.EventArgs e)
    {
        TAP_Name.Text = CAP_Name_3.Text;
        TAP_School.Text = CAP_School_3.Text;
        TAP_Edu.Text = CAP_Edu_3.Text;
        TAP_Exp.Text = CAP_Exp_3.Text;
        TAP_Address.Text = CAP_Address_3.Text;
        TAP_Phone.Text = CAP_Phone_3.Text;
    }

}