using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        string YorumId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            YorumId = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAdi From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", YorumId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtIcerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                bgl.Baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TxtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", YorumId);
            komut.ExecuteNonQuery();
            //Sorguyu çalıştır Executenonqueri
            bgl.Baglanti().Close();

        }
    }
}