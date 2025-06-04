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

public partial class updtcitydtls : System.Web.UI.Page
{
    string mid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
            string q = "select * from addcity where cityid=@ctyid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@ctyid", Request.QueryString["ctid"]);
            myconn.Open();
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["name"].ToString();
            Image1.ImageUrl = "images/" + myreader["pic"].ToString();
            mid = myreader["stateid"].ToString();
            myreader.Close();
            myconn.Close();
        }
    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = " update addcity set name=@cname, pic=@cpic,stateid=@st where cityid=@ctyid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@cpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@cpic", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@st", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@ctyid", Request.QueryString["ctid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "city updated successfully";

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        q = "select * from addcity where cityid=@ctyid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@ctyid", Request.QueryString["ctid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["name"].ToString();
        Image1.ImageUrl = "images/" + myreader["pic"].ToString();
        myreader.Close();
        myconn.Close();
    }
    protected void  DropDownList1_DataBound1(object sender, EventArgs e)
{
         DropDownList1.Items.FindByValue(mid).Selected = true;

}
protected void  Button2_Click(object sender, EventArgs e)
{
       Response.Redirect("updtcity.aspx");
}
}

