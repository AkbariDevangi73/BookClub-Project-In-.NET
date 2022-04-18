using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class reset : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (Session["user"] == null)
        {
            Response.Redirect("~//login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string q = "update register set password='" + TextBox2.Text+ "' where username='" + Session["user"].ToString()+ "'"; 
        SqlCommand c = new SqlCommand(q, cn);
        cn.Open();
        int res = c.ExecuteNonQuery();
        if(res>0)
        {
            Response.Write("<script>alert('success Reset Your Password');</script>");
            Response.Write("<script>window.location='Default.aspx';</script>");            
        }
      
           
      else
        {
            Response.Write("<script>alert('Password can Not Be Match');</script");
            cn.Close();           
        }
     cn.Close();
    }
}
