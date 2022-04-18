using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string q = "select username from register where username='" + TextBox3.Text + "'";
        SqlCommand c = new SqlCommand(q, cn);
        cn.Open();
        SqlDataReader dr = c.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('email is match')</script");
            cn.Close();

        }
        else
        {

            cn.Close();

            string qry = "insert into register(firstname,lastname,username,password,contact,usertype)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox6.Text + "','user')";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
          
            // Response.Write(qry);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("<script> alert('Sucessfully Register');</script>");
                Response.Write("<script>window.location.href = 'Default.aspx'</script>");

            }
            else
            {
                Response.Write("<script>alert('Register Not Sucessfully');</script>");
                Response.Write("<script>window.location.href = 'register.aspx'</script>");
            }


            cn.Close();
        }
       
        
    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
}