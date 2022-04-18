using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_product : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DropDownList2.Items.Add("--Select--");
        SqlCommand cmd = new SqlCommand("select cnm from category",cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            DropDownList2.Items.Add(dr[0].ToString());
        }
        cn.Close();
    }

    protected void btn_Click(object sender, EventArgs e)
    {

        string g;
        if (radio1.Checked)
        {
            g = "Yes";
        }
        else
        {
            g = "No";
        }

        string fn = "";
        if (FileUpload1.HasFile)
        {
            fn = FileUpload1.FileName;
        }


        string qry = "insert into product(cnm,pid,pnm,price,stock,img,des,offer,discount)values('" +DropDownList2.SelectedItem + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox6.Text + "," + TextBox7.Text + ",'"+fn+"','"+TextBox8.Text+"','"+g.ToString()+"','"+TextBox9.Text+"')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        //Response.Write(qry);
        int res = cmd.ExecuteNonQuery();
        String str = Server.MapPath("~\\img\\");
        if (res > 0)
        {
            FileUpload1.SaveAs(str + "\\" + fn);
            Response.Write("<script> alert('Sucessfully Add Product');</script>");
            Response.Write("<script>window.location.href = 'Default.aspx'</script>");
            // Response.Redirect("~//Admin/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Not Sucessfully Add Product');</script>");
            Response.Write("<script>window.location.href = 'product.aspx'</script>");
        }

        cn.Close();
    }
}