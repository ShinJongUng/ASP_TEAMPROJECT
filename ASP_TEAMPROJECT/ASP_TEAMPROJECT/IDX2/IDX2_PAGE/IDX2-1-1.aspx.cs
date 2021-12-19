using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT.IDX2.IDX2_PAGE
{
    public partial class IDX2_1_1 : System.Web.UI.Page
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

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('족발','1','" + ImageButton3.ImageUrl.ToString() + "');";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX2/IDX2_Page/IDX2-2-1.aspx");
            Con.Close();
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('치킨', '1', '" + ImageButton4.ImageUrl.ToString() + "');";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX2/IDX2_Page/IDX2-2-1.aspx");
            Con.Close();
        }
    }
}