using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Success1 : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    MySqlConnection con = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        string fab = Application["shirtfabric"].ToString();
        string dress = Application["shirt"].ToString();
        string coll = Application["coller"].ToString();
        string pantfab = Application["pantfabric"].ToString();
        string pantstyle = Application["pant"].ToString();
        string btn = Application["button"].ToString();
        string sugg = Application["suggest"].ToString();

        string MobileNo = Application["MobileNo"].ToString();
        string Email = Application["Email"].ToString();
        string FullName = Application["FullName"].ToString();
        string Amount = Application["price"].ToString();
        string Type = Application["Type"].ToString();
        string age = Application["age"].ToString();
        string weight = Application["Weight"].ToString();
        //  int Age = Convert.ToInt32(Application["Age"]);
        string height = Application["Height"].ToString();
        string fullshoulder = Application["FullShoulder"].ToString();
        string backshoulder = Application["BackShoulder"].ToString();
        string frontshoulder = Application["FrontShoulder"].ToString();
        string chest = Application["Chest"].ToString();
        string sleeves = Application["Sleeve"].ToString();
        string nack = Application["Neck"].ToString();
        string JacketLength = Application["JacketLength"].ToString();
        string crotch = Application["Crotch"].ToString();
        string waist = Application["Waist"].ToString();
        string hip = Application["Hip"].ToString();
        string trouserlength = Application["TrouserL"].ToString();
        string trousertight = Application["TrouserT"].ToString();
        string trousercuff = Application["TrouserC"].ToString();
        string seat = Application["Seat"].ToString();
        string order = "Order Placed!!!";
        string gender = "Male";
        DateTime now = DateTime.Now;
        string date = now.ToString();
        string[] date1 = date.Split(' ');
        string a = date1[0].ToString();


        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        MySqlConnection con = new MySqlConnection(cs);
        con.Open();
        MySqlCommand cmd = new MySqlCommand("INSERT INTO MensRegistration (MobileNo,Email,FullName,Amount,Type,Age,Weight,Height,FullShoulder,BackShoulder,FrontShoulder,Chest,Sleeves,Neck,JacketLength,Crotch,Waist,Hip,TrouserLength,TrouserTight,TrouserCuff,Seat,OrderStatus,gender,Time,ShirtFabric,ShirtStyle,CollerStyle,PantFabric,PantStyle,Buttons,Suggesion) VALUES('" + MobileNo + "','" + Email + "','" + FullName + "','" + Amount + "','" + Type + "','" + age + "','" + weight + "','" + height + "','" + fullshoulder + "','" + backshoulder + "','" + frontshoulder + "','" + chest + "','" + sleeves + "','" + nack + "','" + JacketLength + "','" + crotch + "','" + waist + "','" + hip + "','" + trouserlength + "','" + trousertight + "','" + trousercuff + "','" + seat + "','"+ order + "','"+ gender + "','"+a+ "','" + fab + "','" + dress + "','" + coll + "','" + pantfab + "','" + pantstyle + "','" + btn + "','" + sugg + "')", con);



        cmd.ExecuteNonQuery();

        con.Close();
    }
}
      
    
    /// <summary>
    /// Generate HASH for encrypt all parameter passing while transaction
    /// </summary>
    /// <param name="text"></param>
    /// <returns></returns>
    //public string Generatehash512(string text)
    //{

    //    byte[] message = Encoding.UTF8.GetBytes(text);

    //    UnicodeEncoding UE = new UnicodeEncoding();
    //    byte[] hashValue;
    //    SHA512Managed hashString = new SHA512Managed();
    //    string hex = "";
    //    hashValue = hashString.ComputeHash(message);
    //    foreach (byte x in hashValue)
    //    {
    //        hex += String.Format("{0:x2}", x);
    //    }
    //    return hex;

    //}




    //public void SendSMS(string MobileNo, string FirstName, int RegNo)
    //{
    //    try
    //    {

    //        //string authKey = "102787AbKpGLk4PWkV569f109d"; GTC7K-3C61N
    //        //string authKey = "106749A2LXN5WI09656dafec6";
    //        string mobileNumber = MobileNo;
    //        string senderId = ConfigurationManager.AppSettings["senderId"];
    //        string userID = ConfigurationManager.AppSettings["userID"];
    //        string password = ConfigurationManager.AppSettings["password"];
    //        //string websiteLink = "http://www.google.com";
    //        string message = HttpUtility.UrlEncode("Hi, Welcome to maharashtravadhuvarsuchak.com Your Reg.No. is " + RegNo + ". More info Get mobile app from our website.");
    //        //string sendSMSUri = "http://bullet1.sdctechnologies.co.in:8080/api/mt/SendSMS?user=GauravPatil493&password=123456&senderid=MAHVVS&channel=Trans&DCS=0&flashsms=0&number="+mobileNumber+"&text="+message+"&route=5";
    //        string sendSMSUri = "http://bullet1.sdctechnologies.co.in:8080/vendorsms/pushsms.aspx?user=" + userID + "&password=" + password + "&msisdn=" + mobileNumber + "&sid=" + senderId + "&msg=" + message + "&fl=0&gwid=2";
    //        HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
    //        UTF8Encoding encoding = new UTF8Encoding();
    //        httpWReq.Method = "POST";
    //        httpWReq.ContentType = "application/json";

    //        using (Stream stream = httpWReq.GetRequestStream())
    //        {
    //            //stream.Write(data, 0, data.Length);
    //        }

    //        HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
    //        StreamReader reader = new StreamReader(response.GetResponseStream());
    //        string res = reader.ReadToEnd();

    //        reader.Close();
    //        response.Close();

    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}

    //private int GetMaxRegNo()
    //{
    //    int a = 0;
    //    using (con = new SqlConnection(strcon))
    //    {
    //        try
    //        {
    //            con.Open();
    //            SqlCommand cmd = new SqlCommand("SELECT CASE WHEN MAX(RegNo) IS NULL THEN '0' ELSE MAX(RegNo)+1 END FROM Registration", con);
    //            a = Convert.ToInt32(cmd.ExecuteScalar());
    //            con.Close();
    //        }
    //        catch (Exception ex)
    //        {
    //            throw;
    //        }
    //        finally
    //        {
    //            con.Close();
    //            SqlConnection.ClearPool(con);
    //        }
    //    }
    //    return a;
    //}

  
//    protected void Button2_Click(object sender, EventArgs e)
//    {
//        try
//        {


//            string MobileNo = Application["MobileNo"].ToString();
//            string Email = Application["Email"].ToString();
//            string FullName = Application["FullName"].ToString();
//            string Amount = Application["Amount"].ToString();
//            string Type = Application["Type"].ToString();
//            string age = Application["age"].ToString();
//            string weight = Application["Weight"].ToString();
//            //  int Age = Convert.ToInt32(Application["Age"]);
//            string height = Application["Height"].ToString();
//            string fullshoulder = Application["FullShoulder"].ToString();
//            string backshoulder = Application["BackShoulder"].ToString();
//            string frontshoulder = Application["FrontShoulder"].ToString();
//            string chest = Application["Chest"].ToString();
//            string sleeves = Application["Sleeve"].ToString();
//            string nack = Application["Neck"].ToString();
//            string JacketLength = Application["JacketLength"].ToString();
//            string crotch = Application["Crotch"].ToString();
//            string waist = Application["Waist"].ToString();
//            string hip = Application["Hip"].ToString();
//            string trouserlength = Application["TrouserL"].ToString();
//            string trousertight = Application["TrouserT"].ToString();
//            string trousercuff = Application["TrouserC"].ToString();
//            string seat = Application["Seat"].ToString();

//            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

//            MySqlConnection con = new MySqlConnection(cs);
//            con.Open();
//            MySqlCommand cmd = new MySqlCommand("INSERT INTO MensRegistration (MobileNo,Email,FullName,Amount,Type,Age,Weight,Height,FullShoulder,BackShoulder,FrontShoulder,Chest,Sleeves,Neck,JacketLength,Crotch,Waist,Hip,TrouserLength,TrouserTight,TrouserCuff,Seat) VALUES('" + MobileNo + "','" + Email + "','" + FullName + "','" + Amount + "','" + Type + "','" + age + "','" + weight + "','" + height + "','" + fullshoulder + "','" + backshoulder + "','" + frontshoulder + "','" + chest + "','" + sleeves + "','" + nack + "','" + JacketLength + "','" + crotch + "','" + waist + "','" + hip + "','" + trouserlength + "','" + trousertight + "','" + trousercuff + "','" + seat + "')", con);



//            cmd.ExecuteNonQuery();

//            con.Close();
//        }
//        catch (Exception ex)
//        {

//        }
//        Response.Write("<script>alert('Record save sucessfully')</script>");
//    }
//}