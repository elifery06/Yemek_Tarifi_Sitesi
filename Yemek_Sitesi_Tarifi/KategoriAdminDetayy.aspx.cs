using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class KategoriAdminDetayy : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
       
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoryId"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler where KategoryId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.Baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoryAd=@p1,KategoryAdet=@p2 where KategoryId=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("p3", id);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            
        }
    }
}