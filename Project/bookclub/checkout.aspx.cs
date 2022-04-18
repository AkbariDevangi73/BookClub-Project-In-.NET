using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
public partial class ckackout : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~//login.aspx");

        }

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        if (!Page.IsPostBack)
        {
            String qry1 = "select * from register where username='" + Session["user"] + "' ";

            SqlCommand cmd1 = new SqlCommand(qry1, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cn.Open();


            foreach (DataRow dr in dt.Rows)
            {
                Textbox1.Text = dr[1].ToString();
                Textbox2.Text = dr[2].ToString();
                Textbox3.Text = dr[3].ToString();
                Textbox4.Text = dr[5].ToString();
            }
            cn.Close();


            HiddenField h1 = (HiddenField)Formview2.FindControl("Hi1");
            int i = Convert.ToInt32(h1.Value);
            int s = 0;
            if (i < 2000)
            {
                s = 50;
            }
            else if (i < 5000)
            {
                s = 100;
            }
            else if (i >= 5000 && i <= 10000)
            {
                s = 500;
            }

            lblship.Text = s.ToString();
            int ftotal = i + s;
            Label1.Text = ftotal.ToString();
            cn.Close();


            String qry2 = "select * from bill where username='" + Session["user"] + "' ";
            SqlCommand cmd = new SqlCommand(qry2, cn);
            cn.Open();
            SqlDataAdapter d1 = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            d1.Fill(ds);
            int r = ds.Tables[0].Rows.Count - 1;

            if (r >= 0)
            {
                Textbox5.Text = ds.Tables[0].Rows[r]["addr"].ToString();
                Textbox6.Text = ds.Tables[0].Rows[r]["city"].ToString();
                Textbox7.Text = ds.Tables[0].Rows[r]["state"].ToString();
                Textbox8.Text = ds.Tables[0].Rows[r]["county"].ToString();
                Textbox9.Text = ds.Tables[0].Rows[r]["zip"].ToString();
            }

            cn.Close();
        }
    }


    protected void Button_Click(object sender, EventArgs e)
    {
        int mx;
        string qry = "select max(billno) from bill";
        SqlCommand cmd1 = new SqlCommand(qry, cn);
        cn.Open();
        mx = Convert.ToInt16(cmd1.ExecuteScalar());
        mx = mx + 1;
        cn.Close();

        string s = "";
        string qry1 = "select orderno from cart2 where username='" + Session["user"] + "' and oderstutas=0";
        SqlCommand cmd = new SqlCommand(qry1, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();

        foreach (DataRow dr in dt.Rows)
        {
            s = s + dr[0].ToString() + ",";
        }

        cn.Close();
        HiddenField h1 = (HiddenField)Formview2.FindControl("Hi1");
        int total = Convert.ToInt32(h1.Value);
        String date = System.DateTime.Now.ToShortDateString();
        String qry3 = "update cart2 set oderstutas=1 where username='" + Session["user"].ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(qry3, cn);
        cn.Open();
        cmd3.ExecuteNonQuery();
        cn.Close();

        string qry2 = "insert into bill(username,fname,lname,email,cont,addr,city,state,county,zip,date,billno,orderno,totalamt) values('" + Session["user"] + "','" + Textbox1.Text + "','" + Textbox2.Text + "','" + Textbox3.Text + "','" + Textbox4.Text + "','" + Textbox5.Text + "','" + Textbox6.Text + "','" + Textbox7.Text + "','" + Textbox8.Text + "','" + Textbox9.Text + "','" + date+ "'," + mx + ",'" + s + "'," + total + ")";

        SqlCommand cmd2 = new SqlCommand(qry2, cn);
        cn.Open();
        int res = cmd2.ExecuteNonQuery();
        if (res > 0)
        {
            String fromaddr = "bookclubshopping@gmail.com";
            String toaddr = Textbox3.Text;
            String password = "@123bookclub";
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(fromaddr);

            string textBody = "<table border=" + 1 + " cell>";
            //String textBody = "<table>";
            textBody +="<tr><td>Bill no.</td><td>"+mx+"</td></tr>";
            textBody += "<tr><td>Total</td><td>" + total + "</td></tr>";
            textBody += "<tr><td>Date</td><td>" + date + "</td></tr>";
            textBody += "<tr>";
            textBody += "</table>";

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

            Response.Write("<script>alert('You bill is sent to your register email address....');</script>");
           
            Response.Write("<script>window.location.href = 'ordercomplete.aspx'</script>");

        }
        else
        {
            Response.Write("<script>alert('not Sent Your Bill...');</script>");
        }
        cn.Close();
    }
}

