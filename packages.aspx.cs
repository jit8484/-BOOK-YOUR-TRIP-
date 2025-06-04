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

public partial class packages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
      string q = "insert into packages values(@n,@abt,@pi,@pe,@day,@r,@pic,@spic,@dpic,@it)";
        mycomm = new SqlCommand(q, myconn);

        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@abt", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@pi", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@pe", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@day", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@r", TextBox6.Text);
        mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
        mycomm.Parameters.AddWithValue("@spic", FileUpload2.FileName);
        mycomm.Parameters.AddWithValue("@dpic", FileUpload3.FileName);
        mycomm.Parameters.AddWithValue("@it", TextBox7.Text);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(MapPath("images/" + FileUpload2.FileName));
        }
        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(MapPath("images/" + FileUpload3.FileName));
        }
        Label2.Text = "Packages added successfully";
    }
}
