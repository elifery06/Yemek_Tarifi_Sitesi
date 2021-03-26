using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Sqlsinif snf = new Sqlsinif();
        string kategoryId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoryId = Request.QueryString["kategoryId"];
            SqlCommand komut = new SqlCommand("Select *From Tbl_Yemekler where KategoryId=@p1",snf.Baglanti());
            komut.Parameters.AddWithValue("@p1", kategoryId);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}