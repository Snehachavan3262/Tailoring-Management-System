using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using MySql.Data.MySqlClient;

public partial class LediesMeasureForm : System.Web.UI.Page
{
    string username;
    public string ServerValue = String.Empty;
    public string ServerValue1 = String.Empty;
    string strcon = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    SqlConnection con;
    private string ServerValue2;
    private string gender;
    private object t1;
    private string mobile;
    private int i;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GetData();
            if (Request.QueryString["username"] != null) //access username from the querystring //from registration
            {
                username = Request.QueryString["username"];
                mobile = Request.QueryString["mobile"];
                string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                MySqlConnection con = new MySqlConnection(connectionString);

                con.Open();

                MySqlDataAdapter da = new MySqlDataAdapter("select Gender,username from Registration where username='" + username + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //to display value from querystring
                    ServerValue = dt.Rows[0][0].ToString();
                    ServerValue1 = dt.Rows[0][1].ToString();
                   // ServerValue2 = dt.Rows[0][2].ToString();

                }

               

                MySqlDataAdapter da1 = new MySqlDataAdapter("select OrderStatus from LediesRegistration where FullName='" + username + "' and MobileNo='" + mobile + "'", con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    //to display value from querystring
                    
                    txt1.Text = dt1.Rows[0][0].ToString();

                }
                else
                {
                    txt1.Text="Please Place Your Order";
                }

            }
           
        }
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try {
        string MobileNo = Request.Form["MobileNo"];
        string Email = Request.Form["Email"];    
        string FullName = Request.Form["FullName"];
        string Amount = Request.Form["price"]; 

        string Type = Request.Form["Type"];
        string age = Request.Form["age"];    
        string weight = Request.Form["Weight"];
        string height = Request.Form["Height"];
        string frontlenghth = Request.Form["FrontL"];
        string backlength = Request.Form["BackL"];
        string frontwidth = Request.Form["FrontW"];
        string backwidth = Request.Form["BackW"];   
        string sleeves = Request.Form["Sleeve"];
        string nack = Request.Form["Nack"];
        string arm = Request.Form["Arm"];
        string armhole = Request.Form["ArmH"];
        string waist = Request.Form["Waist"];
        string hip = Request.Form["Hip"];    
        string trouserlength = Request.Form["TrouserL"];
        string trousertight = Request.Form["TrouserT"];
        string trousercuff = Request.Form["TrouserC"];
        string seat = Request.Form["Seat"];

            string fab = Request.Form["fabric"];
            string dress = Request.Form["shirt"];
            string coll = Request.Form["coller"];
            string pantfab = Request.Form["pantfabric"];
            string pantstyle = Request.Form["pant"];
            string btn = Request.Form["button"];
            string sugg = Request.Form["suggest"];

            Application["fabric"] = fab;
            Application["shirt"] = dress;
            Application["coller"] = coll;
            Application["pantfabric"] = pantfab;
            Application["pant"] = pantstyle;
            Application["button"] = btn;
            Application["suggest"] = sugg;

            Application["MobileNo"] = MobileNo;
        Application["Email"] = Email;
        Application["FullName"] = FullName;
        Application["price"] = Amount;

            Application["Type"] = Type;
            Application["age"] = age;
            Application["Weight"] = weight;
            Application["Height"] = height;
            Application["FrontL"] = frontlenghth;
            Application["BackL"] = backlength;
            Application["FrontW"] = frontwidth; 
            Application["BackW"] = backwidth;
            Application["Sleeve"] = sleeves;
            Application["Nack"] = nack;
            Application["Arm"] = arm;
            Application["ArmH"] = armhole;
            Application["Waist"] = waist;
            Application["Hip"] = hip;
            Application["TrouserL"] = trouserlength;
            Application["TrouserT"] = trousertight;
            Application["TrouserC"] = trousercuff;
            Application["Seat"] = seat;

            con = new SqlConnection(strcon);

            //redirect to payment page
        Response.Redirect("~/Payment.aspx");

        }
        catch(Exception ex)
        {

        }
     

        }

    public void GetData()
    {


        string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (MySqlConnection con = new MySqlConnection(connectionString))
        {

            // BusName.Items.Clear();
            string fab = fabric.SelectedValue;
            

            MySqlCommand cmd = new MySqlCommand("select Name from T_Category ", con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);


            fabric.DataTextField = "Name";
            fabric.DataSource = dt;
            fabric.DataBind();

            //pantfabric.DataTextField = "Name";
            //pantfabric.DataSource = dt;
            //pantfabric.DataBind();
            con.Close();



        }
    }

  

    protected void fabric_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (MySqlConnection con = new MySqlConnection(connectionString))
        {


            string fab = fabric.SelectedValue;

            MySqlCommand cmd = new MySqlCommand("select Price from T_Category  where Name='" + fab + "'", con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                string c = dt.Rows[i]["Price"].ToString();
                price.Text = c.ToString();
            }
            else
            {

            }
        }
    }
}

