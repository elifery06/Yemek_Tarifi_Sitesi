using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        string islem = "";
        String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoryAd";
                DropDownList1.DataValueField = "KategoryId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler",bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete From Tbl_Yemekler where YemekId=@p1", bgl.Baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.Baglanti().Close();

            }
           
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek ekleme
            SqlCommand komut = new SqlCommand("İnsert  into Tbl_Yemekler (YemekAdi,YemekMalzeme,YemekTarif,KategoryId) values (@p1,@p2,@p3,@p4)",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

            //Kategori sayısını arttırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KotegoryAdet=KategoryAdet+1 where Kategoryİd=@p1", bgl.Baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.Baglanti().Close();
        }
    }
}