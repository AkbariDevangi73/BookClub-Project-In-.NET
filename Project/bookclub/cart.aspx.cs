using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class cart : System.Web.UI.Page
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
protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        TextBox t = (TextBox)e.Item.FindControl("quantity");
        HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");
        HiddenField h2 = (HiddenField)e.Item.FindControl("HiddenField2");
        int qty = Convert.ToInt16(t.Text);
        int price = Convert.ToInt16(h2.Value);

        string str = "update cart1 set qty=" + qty + ",total=" + (qty * price) + " where id=" + h1.Value;

        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        aaa.DataBind();
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        TextBox t = (TextBox)e.Item.FindControl("quantity");
        HiddenField h1 = (HiddenField)e.Item.FindControl("HiddenField1");
        string str = "delete from cart1 where id=" + h1.Value;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
        aaa.DataBind();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        int mx;
        String qry = "select max(orderno)from cart2";
       SqlCommand cmd = new SqlCommand(qry, cn);
        cn.Open();
        mx = Convert.ToInt16(cmd.ExecuteScalar());
        mx = mx + 1;
        cn.Close();


        String qry1 = "select * from cart1 where username='"+Session["user"]+"'";
       
        SqlCommand cmd1 = new SqlCommand(qry1, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();

        String s1, s2, s3, s4, s5, s6, s7;
        foreach (DataRow dr in dt.Rows)
        {
            s1 = dr[1].ToString();
            s2 = dr[2].ToString();
            s3 = dr[3].ToString();
            s4 = dr[4].ToString();
            s5 = dr[5].ToString();
            s6 = dr[6].ToString();
            s7 = dr[7].ToString();



            String qry2 = "insert into cart2(pid,pnm,username,img,qty,price,total,orderno,oderstutas) values ('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "'," + s5 + "," + s6 + "," + s7 +"," + mx + ",0)";
            SqlCommand cmd2 = new SqlCommand(qry2, cn);
            cmd2.ExecuteNonQuery();

            String qry3 = "Delete from cart1 where username ='" + Session["user"] + "'";
            SqlCommand cmd3 = new SqlCommand(qry3, cn);
             cmd3.ExecuteNonQuery();

        }
        Response.Redirect("~/checkout.aspx");

    }
}