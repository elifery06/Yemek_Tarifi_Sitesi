using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class Sqlsinif
{
    public SqlConnection Baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-EC4JPC3;Initial Catalog=yemektarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}