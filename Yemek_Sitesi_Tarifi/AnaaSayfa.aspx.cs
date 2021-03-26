using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Sitesi_Tarifi
{
    public partial class AnaaSayfa : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand sql sorgusunu yazabilmek için kullanılır
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            //SqlDataReader veri okuyucu nesnesidir dr=DataReader
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}