using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml;

namespace ASP_TEAMPROJECT.IDX3.IDX3_Page
{
    public partial class End3 : System.Web.UI.Page
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
                if (reader.Read())
                {
                    Image1.ImageUrl = reader["address"].ToString();
                    Label1.Text = "<font color = skyblue>" + reader["name"].ToString() + "</font> 좋아하는 연예인 월드컵 우승";
                }
                else
                {
                    Label1.Text = "잘못된 접근 입니다.";
                }
                reader.Close();
                Con.Close();


                string connectionString1 = @"server=(local)\SQLExpress;Integrated Security=true;database=userdb";
                SqlConnection Con1 = new SqlConnection(connectionString1);
                SqlCommand Cmd1 = new SqlCommand();
                Cmd1.Connection = Con1;
                Cmd1.CommandText = "SELECT * FROM userdb WHERE isIn='1'";
                Con1.Open();
                SqlDataReader reader1 = Cmd1.ExecuteReader();
                if (reader1.Read())
                {
                    TextBox1.Text = reader1["name"].ToString();
                    reader1.Close();
                }
                else
                {
                    Label1.Text = "잘못된 접근입니다.";
                    Response.Redirect("~/Mainpage.aspx");
                }
                reader1.Close();
                Con1.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1. XML 파일 열기
            string fn = Server.MapPath("~/App_Data/Chat3.xml");
            XmlDocument doc = new XmlDocument();
            doc.Load(fn);
            // 2. guest 노드 생성하고, 루트 노드에 추가
            XmlNode root = doc.DocumentElement;
            XmlNode chatnode = doc.CreateElement("chat");
            root.AppendChild(chatnode);


            XmlAttribute name;
            name = doc.CreateAttribute("name");
            name.Value = TextBox1.Text;
            chatnode.Attributes.Append(name);

            XmlAttribute date;
            date = doc.CreateAttribute("date");
            date.Value = DateTime.Now.ToString();
            chatnode.Attributes.Append(date);

            string sbody = TextBox2.Text;
            sbody = sbody.Replace("\n", "<br>");

            XmlAttribute body;
            body = doc.CreateAttribute("body");
            body.Value = sbody;
            chatnode.Attributes.Append(body);
            doc.Save(fn); doc = null;

            Response.Redirect("~/IDX3/IDX3_Page/End3.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/R_Mainpage.aspx");
        }
    }
}