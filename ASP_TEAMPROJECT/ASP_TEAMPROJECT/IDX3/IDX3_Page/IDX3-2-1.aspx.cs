using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP_TEAMPROJECT.IDX3.IDX3_Page
{
    public partial class IDX3_2_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('신세경', '2', '" + ImageButton5.ImageUrl.ToString() + "');";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX3/IDX3_Page/IDX3-3-2.aspx");
            Con.Close();
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            string connectionString = @"server=(local)\SQLExpress;Integrated Security=true;database=VSIDX1";
            SqlConnection Con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO IDX1db (name, id, address) VALUES('아이유', '2', '" + ImageButton6.ImageUrl.ToString() + "');";


            Con.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            Response.Redirect("~/IDX3/IDX3_Page/IDX3-3-2.aspx");
            Con.Close();
        }
    }
}