using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT.IDX3.IDX3_Page
{
    public partial class IDX3_3_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
                SqlConnection Con = new SqlConnection(connectionString);

                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "SELECT * FROM IDX1db";


                Con.Open();
                SqlDataReader reader = Cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (reader["id"].ToString() == "1")
                    {
                        ImageButton1.ImageUrl = reader["address"].ToString();
                        Label1.Text = reader["name"].ToString();
                    }
                    else
                    {
                        ImageButton2.ImageUrl = reader["address"].ToString();
                        Label2.Text = reader["name"].ToString();
                    }
                }
                reader.Close();
                Con.Close();
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE IDX1db WHERE name='" + Label1.Text + "'";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX3/IDX3_Page/End3.aspx");
            Con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "DELETE IDX1db WHERE name='" + Label2.Text + "'";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX3/IDX3_Page/End3.aspx");
            Con.Close();
        }
    }
}