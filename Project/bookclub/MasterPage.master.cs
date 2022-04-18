using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

        if (Session["user"] == null)
        {
            Label1.Text = "Welcome,Guest";
            LinkButton1.Visible = true;
            LinkButton2.Visible = false;
            Literal1.Text = "0";
        }
        else
        {
            Label1.Text = "Welcome," + Session["nm"];
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            String qr = "select count(*) from cart1 where username='" + Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(qr, cn);
            cn.Open();
            int res = Convert.ToInt16(cmd.ExecuteScalar());
            Literal1.Text = res.ToString();
            cn.Close();

            String qr2 = "select count(*) from wishlist where username='" + Session["user"] + "'";
            SqlCommand cmd2 = new SqlCommand(qr2, cn);
            cn.Open();
            int res2 = Convert.ToInt16(cmd2.ExecuteScalar());
            Literal2.Text = res2.ToString();
            cn.Close();
        }
    }
}
