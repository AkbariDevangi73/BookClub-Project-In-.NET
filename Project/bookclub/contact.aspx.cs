using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class contact : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into contact values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            Response.Write("<script>alert('Sucessfully Sent Your FeedBack...');</script>");
            Response.Write("<script>window.location.href = 'Default.aspx'</script>");
        }
        else


          Response.Write("<script>alert('Not Sent Your FeedBack...');</script>");
          Response.Write("<script>window.location.href = 'contact.aspx'</script>");
        cn.Close();
    }
}