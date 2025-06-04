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
using System.IO;
public partial class updtstatedtls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          if(Page.IsPostBack==false)
        {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q="select * from addstates where stateid=@stid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@stid", Request.QueryString["sid"]);
            myconn.Open();
            SqlDataReader myreader=mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text=myreader["name"].ToString();
            Image1.ImageUrl="images/" +myreader["picture"].ToString();
            myreader.Close();
            myconn.Close();
          

    }
    }
     protected void  Button1_Click1(object sender, EventArgs e)
{
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = " update addstates set name=@sname, picture=@spic where stateid=@said";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@spic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@spic", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@said", Request.QueryString["sid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "State updated successfully";

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        q = "select * from addstates where stateid=@stid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@stid", Request.QueryString["sid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["name"].ToString();
        Image1.ImageUrl = "images/" + myreader["picture"].ToString();
        myreader.Close();
        myconn.Close();
    }
         protected void  Button2_Click1(object sender, EventArgs e)
{

        Response.Redirect("updtstate.aspx");
    }
}



    

