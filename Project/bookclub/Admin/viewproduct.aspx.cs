using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_viewproduct : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }
   
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
      
        TextBox t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox t2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox t3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox t4 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox t5 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox t6 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox t7 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox t8 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
        Label l = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        Image i = (Image)GridView1.Rows[e.RowIndex].FindControl("Image2");
        Literal lit = (Literal)GridView1.Rows[e.RowIndex].FindControl("Literal1");
        string fn;
        if (f.HasFile)
        {
            fn = f.FileName;
        }
        else
        {
            fn = lit.Text;
        }

        string qry = "update product set cnm='" + t1.Text + "',pid='" + t2.Text + "',pnm='" + t3.Text + "',price='" + t4.Text + "',stock=" + t5.Text + ",img='" + fn.ToString() + "',des='" + t8.Text + "' where id=" + l.Text;
       
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();

        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            f.SaveAs(Server.MapPath("~\\img" + "\\" + fn));
          
            Response.Write("<script>alert('Succesfully Product Updated');</script>");
            GridView1.EditIndex = -1;
        }
        else
        {
            Response.Write("<script>alert(' Not Succesfully Product Updated');</script>");
        }
        cn.Close();

    }
}