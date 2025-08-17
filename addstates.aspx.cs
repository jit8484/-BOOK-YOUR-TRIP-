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

public partial class addsates : System.Web.UI.Page

{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        
        {
            Response.Redirect("error.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        string q = "insert addstates values (@sn,@spic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sn", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@spic", FileUpload1.FileName);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        Label2.Text = "Category added succesfully";
    }
}

