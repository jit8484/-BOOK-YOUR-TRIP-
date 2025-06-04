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

public partial class packagedtls : System.Web.UI.Page
{
    string pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        string packageid = Request.QueryString["packid"];
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "select * from packages where packageid=@packid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@packid", packageid);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["name"].ToString();
        Label3.Text = myreader["about"].ToString();
        Label4.Text = myreader["packageincludes"].ToString();
        Label5.Text = myreader["packageexcludes"].ToString();
        Label6.Text = myreader["noofdays"].ToString();
        Label7.Text = myreader["price"].ToString();
        Label8.Text = myreader["iternary"].ToString();

        pid = myreader[0].ToString();

        Image2.ImageUrl = "images/" + myreader["pic"].ToString();
        myreader.Close();
        myconn.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("pkid", pid);
        Session.Add("pkname", Label2.Text);
        Session.Add("p", Label7.Text);
        Response.Redirect("packagedata.aspx");
    }
}
