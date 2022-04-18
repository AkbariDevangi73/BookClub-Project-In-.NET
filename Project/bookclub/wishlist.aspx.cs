using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class wishlist : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (Session["user"] == null)
        {
            Response.Redirect("~//login.aspx");

        }
        if( !(Page.IsPostBack))
        {
            int id=Convert.ToInt16((Request.QueryString["id"]));
            string qry="select * from wishlist where pid='"+id+"'";
            //Response.Write(qry);
            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Product is already exists');</script>");
                cn.Close();
            }
            else
            {
               
                cn.Close();
                 string qry2 = "select * from product where id='" + id + "'";
                 SqlCommand cmd2 = new SqlCommand(qry2, cn);
                 cn.Open();
                 SqlDataReader dr2 = cmd2.ExecuteReader();
                 if (dr2.Read())
                 {

                     string qry1 = "insert into wishlist(pid,pnm,username,img)values('"+ dr2["id"].ToString() + "','" + dr2["pnm"].ToString() + "','" + Session["user"] + "','" + dr2["img"].ToString() + "')";
                     SqlCommand cmd1 = new SqlCommand(qry1, cn);
                     cn.Close();
                     cn.Open();

                     // Response.Write(qry);
                     int res = cmd1.ExecuteNonQuery();
                    

                 }
                 cn.Close();
              

            }


        }
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        TextBox t = (TextBox)e.Item.FindControl("quantity");
        HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");
        string str = "delete from wishlist where id=" + h1.Value;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        Response.Redirect("~\\wishlist.aspx");
       
    }
}
