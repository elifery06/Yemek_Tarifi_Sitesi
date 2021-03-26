using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class Kategorilerr : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoryId"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //Silme şlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete * From Tbl_Kategoriler where KategoryId=@p1", bgl.Baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoryAd) values (@p1)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();

        }
    }
}