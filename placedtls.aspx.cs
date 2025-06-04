using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class placedtls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string placeid = Request.QueryString["pid"];
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "select * from addplaces where placeid=@plid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@plid", placeid);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["name"].ToString();
        Label3.Text = myreader["description"].ToString();
        Image2.ImageUrl = "images/" + myreader["picture"].ToString();
        myreader.Close();
        myconn.Close();


    }
}
