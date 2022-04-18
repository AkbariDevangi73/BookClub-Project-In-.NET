using System.Data.SqlClient;
using System.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_categroy : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string fn = "";
        if (FileUpload1.HasFile)
        {
            fn = FileUpload1.FileName;
        }
        string qry = "insert into category(cnm,img)values('" + TextBox3.Text +"','"+fn+"')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        //Response.Write(qry);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            FileUpload1.SaveAs(Server.MapPath("\\img" + "\\" + fn));
            Response.Write("<script> alert('Sucessfully Add Category');</script>");
            Response.Write("<script>window.location.href = 'Default.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Not Sucessfully Add Category');</script>");
            Response.Write("<script>window.location.href = 'categroy.aspx'</script>");
        }

        cn.Close();
    }
}