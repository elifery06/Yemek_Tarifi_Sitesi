using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
       Sqlsinif bgl = new Sqlsinif();
        string yemekId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];
            SqlCommand komut = new SqlCommand("Select  YemekAdi From Tbl_Yemekler where yemekId=@p1",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.Baglanti().Close();
            //Yorumları listeleme
            SqlCommand komut2 = new SqlCommand("Select* From Tbl_Yorumlar where yemekId=@p2", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad, YorumMail, YorumIcerik,yemekId) values(@p1, @p2, @p3, @p4)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}