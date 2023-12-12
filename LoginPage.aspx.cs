using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Data;
using Newtonsoft.Json;
using MySql.Data.MySqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
public partial class LoginPage : System.Web.UI.Page
{
    public string Gender;
    public string mobile;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        MySqlConnection con = new MySqlConnection(Constring);
        if (con.State == ConnectionState.Open)
        {
            con.Close();
            con.Open();
        }
        else
            con.Open();
    }



    protected void login_Click1(object sender, EventArgs e)
    {

    }

    protected void login_Click2(object sender, EventArgs e)
    {
        string Constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        MySqlConnection con = new MySqlConnection(Constring);
        con.Open();

        string Username = Request.Form["username"];

        string Password = Request.Form["password"];

        MySqlCommand command = new MySqlCommand("Select Gender,mobile from Registration where Username='" + Username + "' AND Password= '" + Password + "'", con);
        var obj = command.ExecuteReader();
        if (obj.Read())
        {

            Gender = (obj["Gender"].ToString());
            mobile = (obj["mobile"].ToString());

        }

        HttpWebRequest request = WebRequest.Create("http://www.a1techweather.co.in/php/userlogin.php?username=" + Username + "&password=" + Password + "") as HttpWebRequest;

        HttpWebResponse response = request.GetResponse() as HttpWebResponse;
        Stream stream = response.GetResponseStream();

        WebHeaderCollection header = response.Headers;
        string responseText = null;

        var encoding = ASCIIEncoding.ASCII;
        using (var reader = new System.IO.StreamReader(response.GetResponseStream(), encoding))
        {
            responseText = reader.ReadToEnd();
            if (responseText == "success")
            {
                Session["username"] = Username;
                Session["password"] = Password;
                Session["Gender"] = Gender;
                Session["mobile"] = mobile;

                //  Response.Redirect("Dashboard.aspx?username="+ Username + "&Gender=" + Gender);
                if (Gender == "Female")
                {
                    Response.Redirect("LediesMeasureForm.aspx?username=" + Username + "&Gender=" + Gender + "&mobile=" + mobile);
                }
                else
                {
                    Response.Redirect("MensMeasureForm.aspx?username=" + Username + "&Gender=" + Gender + "&mobile=" + mobile);

                }

            }
            else

            {

                Response.Write("<script>alert('Please Check Your UserName and Password')</script>");
            }
        }
    }
}