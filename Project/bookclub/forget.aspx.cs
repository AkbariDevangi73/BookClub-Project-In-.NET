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

public partial class forget : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "select password from register where username='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Open();
        foreach (DataRow dr in dt.Rows)
        {

            string fromaddr = "devangi732000@gmail.com";
            string toaddr = TextBox1.Text;
            string password = "@devangi73";
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(fromaddr);
            string textBody = "<table>";



            textBody += "<tr><td>Your Password is:</td><td>" + dr[0].ToString() + "</td></tr>";

            //textBody += "<tr><td>bill no.</td><td>" + bill + "</td></tr>";


            textBody += "</table>";
            msg.Body = textBody;
            msg.IsBodyHtml = true;
            msg.To.Add(new MailAddress(toaddr));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential(fromaddr, password);
            smtp.Credentials = nc;
            smtp.Send(msg);
            //Response.Redirect("~//Default.aspx");
            Response.Write("<script>alert('You Password is sent to your register email address....');</script>");
            Response.Write("<script>window.location.href = 'login.aspx'</script>");

        }
        cn.Close();
    }
}