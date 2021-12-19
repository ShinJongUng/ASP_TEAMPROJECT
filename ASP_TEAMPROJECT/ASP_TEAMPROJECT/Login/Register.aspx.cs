using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT.Login
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mainpage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(RegularExpressionValidator2.IsValid && RegularExpressionValidator4.IsValid && 
                RegularExpressionValidator5.IsValid && RegularExpressionValidator6.IsValid && 
                RegularExpressionValidator7.IsValid && CompareValidator1.IsValid && RequiredFieldValidator1.IsValid &&RequiredFieldValidator2.IsValid&&
                RequiredFieldValidator4.IsValid && RequiredFieldValidator5.IsValid && RequiredFieldValidator6.IsValid)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=userdb";
                SqlConnection Con = new SqlConnection(connectionString);
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "SELECT * FROM userdb WHERE id='" + TextBox1.Text + "'";
                Con.Open();
                SqlDataReader reader = Cmd.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Text = "이미 가입된 id 입니다.";
                }
                else
                {
                    reader.Close();
                    
                    Cmd.CommandText = "INSERT INTO userdb (id, password, name, age, email, isIn)  VALUES "

              + "( '" + TextBox1.Text + "' ,  " + " '" + TextBox2.Text + "' ,  " + " '" + TextBox4.Text + "' ,  " + TextBox5.Text + ",  " + " '" + TextBox6.Text + "' , 0 )";

                    int rowsAffected = Cmd.ExecuteNonQuery();
                    Response.Redirect("~/Login/THXreg.aspx");
                }
                reader.Close();
                Con.Close();
            }
        }
    }
}