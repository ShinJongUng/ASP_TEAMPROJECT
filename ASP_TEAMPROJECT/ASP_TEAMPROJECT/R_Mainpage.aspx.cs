using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT
{
    public partial class R_Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=userdb";
                SqlConnection Con = new SqlConnection(connectionString);
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "SELECT * FROM userdb WHERE isIn='1'";
                Con.Open();
                SqlDataReader reader = Cmd.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Text = "환영합니다 <font color = skyblue><b>" + reader["name"].ToString() + "</font></b>님!";
                    reader.Close();
                }
                else
                {
                    Label1.Text = "잘못된 접근입니다.";
                    Response.Redirect("~/Mainpage.aspx");
                }
                reader.Close();
                Con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE FROM IDX1db";

            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX1/IDX1_Page/IDX1-1_1.aspx");
            Con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE FROM IDX1db";

            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX2/IDX2_Page/IDX2-1-1.aspx");
            Con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE FROM IDX1db";

            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX3/IDX3_Page/IDX3-1-1.aspx");
            Con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=userdb";
            SqlConnection Con = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "SELECT * FROM userdb WHERE isIn='1'";
            Con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();
            if (reader.Read())
            { 
                reader.Close();
                Cmd.CommandText = "UPDATE userdb SET isIn=0 WHERE isIn=1";
                int rowsAffected = Cmd.ExecuteNonQuery();
                Response.Redirect("~/Mainpage.aspx");
            }
            else
            {
                Label1.Text = "잘못된 접근입니다.";
                Response.Redirect("~/Mainpage.aspx");
            }
            reader.Close();
            Con.Close();
        }
    }
}