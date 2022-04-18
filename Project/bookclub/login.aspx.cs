using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry="select * from register where username='"+TextBox1.Text+"'and password='"+TextBox2.Text+"'";
        
         SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = qry;
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
       if(dr.Read())
       
        {
            if (dr[6].ToString() == "user")
            {



                Response.Write("<script> alert('Login Sucessfully...');</script>");
                Session["user"] = TextBox1.Text;
                Session["nm"] = dr[1].ToString();

                Response.Write("<script>window.location.href = 'Default.aspx'</script>");
            
            }
            else
            {
                Session["user"] = TextBox1.Text;
                Session["nm"] = dr[1].ToString();

                Response.Redirect("~//admin//Default.aspx");
            }
            
        }
        else
        {
            Response.Write("<script>alert('Login Not Sucessfully');</script>");
            Response.Write("<script>window.location.href = 'login.aspx'</script>");
        }
    }
}