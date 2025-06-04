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
public partial class paymentmode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string packageid = Request.QueryString["packid"];
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "select * from packagedata where sessionid=@a ";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@a", Session["sid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["orderno"].ToString();
        Label3.Text = myreader["name"].ToString();
        Label4.Text = myreader["address"].ToString();
        Label5.Text = myreader["contact"].ToString();
        myconn.Close();

    }
}
