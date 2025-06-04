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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q="select name from signup where username=@un and Password=@p";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@p", TextBox2.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            Label1.Text = "Incorrect username/password";
        }
        else
        {
            Session.Add("un", TextBox1.Text);
            Session.Add("n", x.ToString());
            q = "select usertype from signup where username=@un";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@p", TextBox2.Text);
            myconn.Open();
            object y = mycomm.ExecuteScalar();
            myconn.Close();
            if (y.ToString() == "Admin")
            {
                Session.Add("ad", "Admin");
                Response.Redirect("adminpanel.aspx");
            }
            else if(y.ToString()=="Normal")
            {
                Response.Redirect("home.aspx");
            }
            
        }
    }
}
