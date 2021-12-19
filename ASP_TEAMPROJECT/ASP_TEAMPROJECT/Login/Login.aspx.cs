using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/Register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mainpage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=userdb";
                SqlConnection Con = new SqlConnection(connectionString);
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "SELECT * FROM userdb WHERE id='" + TextBox1.Text + "' AND password = '" + TextBox2.Text + "'";
                Con.Open();
                SqlDataReader reader = Cmd.ExecuteReader();
                if (reader.Read())
                {
                    reader.Close();
                    Cmd.CommandText = "UPDATE userdb SET isIn=1 WHERE id='" + TextBox1.Text + "'";
                    int rowsAffected = Cmd.ExecuteNonQuery();
                    Response.Redirect("~/R_Mainpage.aspx");
                }
                else
                {
                    Label2.Text = "아이디 또는 비밀번호가 일치하지 않습니다.";
                }
                reader.Close();
                Con.Close();
            }
            
        }
    }
}