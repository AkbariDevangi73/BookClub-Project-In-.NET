using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using AjaxControlToolkit;
using System.Net.Mail;
using System.Net;

public partial class productview : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (!this.IsPostBack)
        {
           // Rating Rating1=(Rating)FormView1.FindControl("Rating1");
            //Label lblRatingStatus = (Label)FormView1.FindControl("lblRatingStatus");

            DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM UserRatings where pid="+Request.QueryString["id"]);
            Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
            lblRatingStatus.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
        }
        SqlCommand cmd = new SqlCommand("SELECT [id], [pid], [pnm], [price], [stock], [img], [des], [cnm],[discount] FROM [product] WHERE [id]="+Request.QueryString["id"],cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            img1.ImageUrl = "~\\img\\" + dr["img"].ToString();
            Label1.Text = dr["pnm"].ToString();
            Label2.Text = dr["price"].ToString();
            Label3.Text = dr["stock"].ToString();
            Label4.Text = dr["des"].ToString();
            if (Convert.ToInt16(dr["discount"]) != 0)
            {
                double dis = (Convert.ToInt16(dr["price"]) * Convert.ToInt16(dr["discount"])) / 100;
                double pr = Convert.ToInt16(dr["price"]) - dis;
                offlabel.Text = pr.ToString();
                dislbl.Text = dr["discount"].ToString();
            }
            else
            {
                offlabel.Text = dr["price"].ToString();
                Label2.Visible = false;
                Literal2.Visible = false;
                Literal4.Visible = false;
                Literal3.Visible = false;
                dislbl.Visible = false;
            }
        }
        cn.Close();
    }
    private DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
            return dt;
        }
    }

    protected void OnRatingChanged(object sender, RatingEventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO UserRatings VALUES(@Rating,@pid)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Rating", e.Value);
                    cmd.Parameters.AddWithValue("@pid", Request.QueryString["id"]);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    String fromaddr = "bookclubshopping@gmail.com";
                    String toaddr =  Session["user"].ToString() ;
                    String password = "@123bookclub";
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress(fromaddr);
                    String textBody = "Thank You For Ratting Our Product";


                    msg.Body = textBody;
                    msg.IsBodyHtml = true;
                    msg.To.Add(new MailAddress(toaddr));
                    SmtpClient smpt = new SmtpClient();
                    smpt.Host = "smtp.gmail.com";
                    smpt.Port = 587;
                    smpt.UseDefaultCredentials = false;
                    smpt.EnableSsl = true;
                    NetworkCredential nc = new NetworkCredential(fromaddr, password);
                    smpt.Credentials = nc;
                    smpt.Send(msg);
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String qr = "select * from product where id=" + Request.QueryString["id"];
      SqlCommand cmd = new SqlCommand(qr, cn);
        cn.Open();

        int total = 0, pid = 0, qrt = 0, price = 0;
        String img = "",pnm="";
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //TextBox t1 = (TextBox)FormView1.FindControl("quantity");
            total = Convert.ToInt16(offlabel.Text) * Convert.ToInt16(quantity.Text);
           
            pid = Convert.ToInt16(dr[0].ToString());
            price = Convert.ToInt16(offlabel.Text);
            qrt = Convert.ToInt16(quantity.Text);
            img = dr[6].ToString();
            pnm = dr[3].ToString();
        }
        cn.Close();


            qr ="insert into cart1(pid,pnm,username,img,qty,price,total)values (" +pid + ",'"+pnm+ "','" + Session["user"] + "','"+ img+"',"+qrt+","+price+","+total+")";
            SqlCommand cmd1 = new SqlCommand(qr, cn);
            cn.Open();
            int res = cmd1.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Redirect("~\\cart.aspx");
            }
            cn.Close();
        }
        
    }
