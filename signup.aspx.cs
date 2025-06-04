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

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x;
        for (x = 1; x <= 31; x++)
        {
            DropDownList2.Items.Add(x.ToString());
        }
        for (x = 1; x <= 12; x++)
        {
            DropDownList3.Items.Add(x.ToString());
        }
        for (x = 1950; x <= 2013; x++)
        {
            DropDownList4.Items.Add(x.ToString());
        }

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "select name from signup where username=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox5.Text);

        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            q = "insert into signup values(@n,@add,@st,@ct,@mb,@un,@pass,@cpass,@ge,@co,@dt,@img,@ut)";
            mycomm = new SqlCommand(q, myconn);

            mycomm.Parameters.AddWithValue("@n", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@add", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@st", TextBox8.Text);
            mycomm.Parameters.AddWithValue("@ct", TextBox9.Text);
            mycomm.Parameters.AddWithValue("@mb", TextBox4.Text);
            mycomm.Parameters.AddWithValue("@un", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@cpass", TextBox7.Text);
           
            mycomm.Parameters.AddWithValue("@ut", "Normal");

            if (RadioButton1.Checked == true)
            {
                mycomm.Parameters.AddWithValue("@ge", "Male");
            }
            else if (RadioButton2.Checked == true)
            {
                mycomm.Parameters.AddWithValue("@ge", "Female");
            }
            mycomm.Parameters.AddWithValue("@co", DropDownList1.SelectedItem.ToString());

            string db = DropDownList2.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString() + "-" + DropDownList4.SelectedItem.ToString();


            mycomm.Parameters.AddWithValue("@dt", db);

            mycomm.Parameters.AddWithValue("@img", FileUpload1.FileName);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("userpics/" + FileUpload1.FileName));
            }
            myconn.Open();
            int y = mycomm.ExecuteNonQuery();
            myconn.Close();
            if (y == null)
            {
                Label2.Text = "not succesfful";
            }
            else
            {
                Response.Redirect("success.aspx");
            }
        }
        else
        {
            Label2.Text = "Not Avialable";
        }
    



    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
   
        string q = "select name from signup where username=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox5.Text);

        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            Label2.Text = "Available";
        }
        else
        {
            Label2.Text = "Not available";
        }

    }
  
}

 