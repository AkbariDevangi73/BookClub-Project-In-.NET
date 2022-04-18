using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

        String qr = "select count(*) from register";

        SqlCommand cmd = new SqlCommand(qr, cn);
        cn.Open();
        int res = Convert.ToInt16(cmd.ExecuteScalar());
        /// Response.Write(res);
        Literal1.Text = res.ToString();
        cn.Close();

        String qr2 = "select count(*) from category";
        SqlCommand cmd2 = new SqlCommand(qr2, cn);
        cn.Open();
        int res2 = Convert.ToInt16(cmd2.ExecuteScalar());
        Literal2.Text = res2.ToString();
        cn.Close();


        String qr3 = "select count(*) from product";
        SqlCommand cmd3 = new SqlCommand(qr3, cn);
        cn.Open();
        int res3 = Convert.ToInt16(cmd3.ExecuteScalar());
        Literal3.Text = res3.ToString();
        cn.Close();
    }
}