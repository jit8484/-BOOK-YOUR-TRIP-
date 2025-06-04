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

public partial class packagedata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Response.Redirect("error.aspx");
        }
        TextBox1.Text = Session["pkname"].ToString();
        Label3.Text = Session["p"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "insert packagedata values (@pid,@pn,@pri,@ad,@chl,@doa,@n,@add,@cont,@un,@sesid,@bkdt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pid",Session["pkid"].ToString());
        mycomm.Parameters.AddWithValue("@pn", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pri",Label3.Text);
        mycomm.Parameters.AddWithValue("@ad", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@chl", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@doa", TextBox8.Text);
        mycomm.Parameters.AddWithValue("@n", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@add", TextBox9.Text);
        mycomm.Parameters.AddWithValue("@cont", TextBox6.Text);

        mycomm.Parameters.AddWithValue("@un", Session["un"]);
        mycomm.Parameters.AddWithValue("@sesid", Session.SessionID);
        mycomm.Parameters.AddWithValue("@bkdt", DateTime.Now);
        Session.Add("sid", Session.SessionID);

        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Response.Redirect("paymentmode.aspx");
        }
        else
        {
            Label2.Text = "some error occured please try again later";
        }
    }
}