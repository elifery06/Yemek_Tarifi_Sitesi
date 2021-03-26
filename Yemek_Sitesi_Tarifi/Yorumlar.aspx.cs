using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Tarifi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaylı Yorumlar Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=1", bgl.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Onaysız Yorumlar Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=0", bgl.Baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
             DataList2.DataBind();
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
    }
}