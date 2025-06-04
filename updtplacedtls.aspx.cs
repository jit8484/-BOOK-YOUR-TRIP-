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

public partial class updtplacedtls : System.Web.UI.Page
{
    string slaid, plaid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            string q = "select * from addplaces where placeid=@pcid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@pcid", Request.QueryString["plid"]);
            myconn.Open();
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["name"].ToString();
            Image1.ImageUrl = "images/" + myreader["picture"].ToString();
            slaid = myreader["stateid"].ToString();
            plaid = myreader["cityid"].ToString();
            myreader.Close();
            myconn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = " update addplaces set name=@pname, picture=@ppic,stateid=@st,cityid=@ctid where placeid=@pid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@ppic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@ppic", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@ctid",DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@pid", Request.QueryString["plid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Place updated successfully";

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        q = "select * from addplaces where placeid=@pcid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pcid", Request.QueryString["plid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["name"].ToString();
        Image1.ImageUrl = "images/" + myreader["picture"].ToString();
        myreader.Close();
        myconn.Close();

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        {
            Response.Redirect("updtplace.aspx");
        }
    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {

        DropDownList1.Items.FindByValue(slaid).Selected = true;
    }

  protected void DropDownList2_DataBound(object sender, EventArgs e)
  {

      DropDownList2.Items.FindByValue(plaid).Selected = true;
  }
}
    

