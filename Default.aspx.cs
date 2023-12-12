using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Text;
using Newtonsoft.Json;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Globalization;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
}

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/LoginPage.aspx");
    }

    protected void admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("/admin/Default.aspx");
    }
}