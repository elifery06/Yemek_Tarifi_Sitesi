using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["YemekId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where YemekId=@p1", bgl.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.Baglanti().Close();


                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "KategoryAd";
                    DropDownList1.DataValueField = "KategoryId";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAdi=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoryId=@p4 where YemekId=@p5", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue );
            komut.Parameters.AddWithValue("@p5", id);
            bgl.Baglanti().Close();
        }
    }
}