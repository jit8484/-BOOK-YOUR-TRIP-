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

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "insert feedbacktable values (@n,@ph,@eid,@rw,@dw,@info,@c,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@ph", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@eid", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@rw", RadioButtonList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@dw", RadioButtonList2.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@info", RadioButtonList3.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@c", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Response.Redirect("feedbackthnx.aspx");
        }
        else
        {
            Label2.Text = "some error occured please try again later";
        }
    }
}
