using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fail : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Your Payment Status is Failed";
        Label1.ForeColor = System.Drawing.Color.Red;

        //String str = Request.QueryString.ToString();
        //string[] merc_hash_vars_seq;
        //string merc_hash_string = string.Empty;
        //string merc_hash = string.Empty;
        //string order_id = string.Empty;
        //string hash_seq = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";

        //string DateAndTime = Application["DateAndTime"].ToString();
        //string RegDate = Application["RegDate"].ToString();
        //string FullName = Application["FullName"].ToString();
        //string DOB = Application["DOB"].ToString();
        //string Gender = Application["Gender"].ToString();
        //string MarritialStatus = Application["MarritialStatus"].ToString();
        //string BirthTime = Application["BirthTime"].ToString();
        //int Age = Convert.ToInt32(Application["Age"]);
        //string Height = Application["Height"].ToString();
        //string BirthPlace = Application["BirthPlace"].ToString();
        //string Religion = Application["Religion"].ToString();
        //string Cast = Application["Cast"].ToString();
        //string SubCast = Application["SubCast"].ToString();
        //string PhyStatus = Application["PhyStatus"].ToString();
        //string Address = Application["Address"].ToString();
        //string City = Application["City"].ToString();
        //string Dist = Application["Dist"].ToString();
        //string State = Application["State"].ToString();
        //string MobileNo = Application["MobileNo"].ToString();
        //string Email = Application["Email"].ToString();
        //string Education = Application["Education"].ToString();
        //string EducationDetails = Application["EducationDetails"].ToString();
        //string Occupation = Application["Occupation"].ToString();
        //string OccupationDetails = Application["OccupationDetails"].ToString();
        //string WorkPlace = Application["WorkPlace"].ToString();
        //string AnnualIncome = Application["AnnualIncome"].ToString();
        //string FatherName = Application["FatherName"].ToString();
        //string FatherOccupation = Application["FatherOccupation"].ToString();
        //string MotherName = Application["MotherName"].ToString();
        //string MotherOccupation = Application["MotherOccupation"].ToString();
        //string FullAddress = Application["FullAddress"].ToString();
        //string Mob = Application["Mob"].ToString();
        //string Property = Application["Property"].ToString();
        //string FamilyIncome = Application["FamilyIncome"].ToString();
        //string PermentAddress = Application["PermentAddress"].ToString();
        //string Brother = Application["Brother"].ToString();
        //string Sister = Application["Sister"].ToString();
        //string Relative = Application["Relative"].ToString();
        //string Apeksha = Application["Apeksha"].ToString();
        //string PathIamge = Application["ContentType"].ToString();
        //string filename = Application["filename"].ToString();
        //string BloodGroup = Application["BloodGroup"].ToString();
        //string Mangal = Application["Mangal"].ToString();
        //string Plans = Application["Plans"].ToString();
        //string ExpireDate = Application["ExpireDate"].ToString();
        //string Amount = Application["Amount"].ToString();
        //string ReferalCode = Application["ReferalCode"].ToString();
        //string Password = Application["Password"].ToString();

        //payment details

        //String payment_id = "-";
        //String payment_status = "Credit";
        //String payment_request_id = "-";

        //int Flag = 1;
        //int ID = 0;

        //con = new SqlConnection(strcon);

        //con.Open();

        //SqlCommand cmd2 = new SqlCommand("SELECT CASE WHEN MAX(id) IS NULL THEN '0' ELSE MAX(id)+1 END FROM TemporaryRegistration", con);
        //int a = Convert.ToInt32(cmd2.ExecuteScalar());

        //SqlCommand cmd = new SqlCommand("insert into TemporaryRegistration(id,fullName,gender,mobileNo,email,address) values('" + a + "',N'" + FullName + "',N'" + Gender + "'," + MobileNo + ",'" + Email + "',N'" + Address + "')",con);
        //cmd.ExecuteNonQuery();


    }
}