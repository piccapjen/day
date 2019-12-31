using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PersonalInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        SqlConnection Conn = new SqlConnection("Data Source=LAPTOP-IILRO0JD\\SQLEXPRESS;Initial Catalog=Thesis plan review system;Integrated Security=True");
        Conn.Open();
        SqlDataReader dr = null, ar = null;
        SqlCommand cmd = new SqlCommand("select * from Teacher_Student where Student_ID = " + Session["ID"], Conn);
        dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            dr.Close();
            //主指導
            SqlCommand cmp = new SqlCommand("select * from Teacher where Teacher_ID = (select Teacher_ID from Teacher_Student where Student_ID  = '"+ Session["ID"] + "' and Comment_Professor = 'yes')", Conn);
            ar = cmp.ExecuteReader();
            ar.Read();
            FAP_Name.Text = ar["Teacher_Chinese_Name"].ToString();
            FAP_School.Text = ar["Teacher_School_Department"].ToString();
            FAP_Edu.Text = ar["Teacher_Education"].ToString();
            FAP_Exp.Text = ar["Teacher_Experience"].ToString();
            FAP_Address.Text = ar["Teacher_Address"].ToString();
            FAP_Phone.Text = ar["Teacher_Phone_Number"].ToString();
            ar.Close();
            //共同指導1、2
            SqlCommand cmb_1 = new SqlCommand("select * from Teacher where Teacher_ID in (select Teacher_ID from Teacher_Student where Student_ID  = '" + Session["ID"] + "' and Comment_Professor = 'no_1')", Conn);
            ar = cmb_1.ExecuteReader();
            ar.Read();
            if (ar.HasRows)
            {
                SAP_Name.Text = ar["Teacher_Chinese_Name"].ToString();
                SAP_School.Text = ar["Teacher_School_Department"].ToString();
                SAP_Edu.Text = ar["Teacher_Education"].ToString();
                SAP_Exp.Text = ar["Teacher_Experience"].ToString();
                SAP_Address.Text = ar["Teacher_Address"].ToString();
                SAP_Phone.Text = ar["Teacher_Phone_Number"].ToString();
                ar.Close();

                SqlCommand cmb_2 = new SqlCommand("select * from Teacher where Teacher_ID in (select Teacher_ID from Teacher_Student where Student_ID  = '" + Session["ID"] + "' and Comment_Professor = 'no_2')", Conn);
                ar = cmb_2.ExecuteReader();
                ar.Read();
                if (ar.HasRows)
                {
                    TAP_Name.Text = ar["Teacher_Chinese_Name"].ToString();
                    TAP_School.Text = ar["Teacher_School_Department"].ToString();
                    TAP_Edu.Text = ar["Teacher_Education"].ToString();
                    TAP_Exp.Text = ar["Teacher_Experience"].ToString();
                    TAP_Address.Text = ar["Teacher_Address"].ToString();
                    TAP_Phone.Text = ar["Teacher_Phone_Number"].ToString();
                }
            }
            ar.Close();

        }
        else
        {
            Response.Redirect("Guide_Points_Student.aspx");
        }
        cmd.Cancel();
        dr.Close();
        Conn.Close();
        Conn.Dispose();
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}