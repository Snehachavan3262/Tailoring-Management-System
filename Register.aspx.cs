using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Text;
using Newtonsoft.Json;

using System.Data;

using System.Net;
using System.IO;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button2_Click(object sender, EventArgs e)
    {
        string fullName = Request.Form["Name"];    //Take name from the Register.aspx form 
        string MobileNo = Request.Form["MobileNo"];
        string Address = Request.Form["Address"];
        string Username = Request.Form["Username"];
        string Password = Request.Form["Password"];
        string Gender = Request.Form["Gender"]; 



           //string City = Request.Form["City"];

           //string ConfirmPassword = Request.Form["ConfirmPassword"];



           HttpWebRequest request = WebRequest.Create("http://weatherafdm01.com/php/registration.php?fullName=" + fullName + "&mobile=" + MobileNo + "&address=" + Address + "&username=" + Username + "&password=" + Password +"&Gender=" +Gender) as HttpWebRequest;
            //Take column name from the database

           HttpWebResponse response = request.GetResponse() as HttpWebResponse;
           Stream stream = response.GetResponseStream();

            WebHeaderCollection header = response.Headers;
            string responseText = null;

           var encoding = ASCIIEncoding.ASCII;
           using (var reader = new System.IO.StreamReader(response.GetResponseStream(), encoding))
           {
               responseText = reader.ReadToEnd();
              
                 if (responseText == "Registration Success")
                    {

                           Session["Name"] = fullName;
                           Session["MobileNo"] = MobileNo;
                           Session["Address"] = Address;
                           Session["Username"] = Username;
                           Session["Password"] = Password;
                           Session["Gender"] = Password;


                Response.Write("<script>alert('Resigtration Successfully')</script>");
                         
                        
                  }

                   else
                    {
                        Response.Write("<script>alert('Error.')</script>");

                    }
                }


            }
        }
    