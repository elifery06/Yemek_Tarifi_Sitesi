using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class iletisim : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values(@p1,@p2,@p3,@p4)", bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
            komut.Parameters.AddWithValue("@p3", TxtMail.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);

            komut.ExecuteNonQuery();

            bgl.Baglanti().Close();
            Response.Write("Mesajınız Alınmıştır");
        }
    }
}