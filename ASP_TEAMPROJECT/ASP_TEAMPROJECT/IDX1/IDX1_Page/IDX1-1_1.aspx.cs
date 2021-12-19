using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT
{
    public partial class IDX1_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
                SqlConnection Con = new SqlConnection(connectionString);

                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "DELETE FROM IDX1db";


                Con.Open();
                int rowsAffected = Cmd.ExecuteNonQuery();
                Con.Close();


            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('강아지','1','"+ImageButton1.ImageUrl.ToString()+"');";

           
            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX1/IDX1_Page/IDX1-2_1.aspx");
            Con.Close();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('고양이', '1', '" + ImageButton2.ImageUrl.ToString() + "');";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX1/IDX1_Page/IDX1-2_1.aspx");
            Con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}