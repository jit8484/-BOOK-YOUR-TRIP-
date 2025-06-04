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

public partial class addplaces : System.Web.UI.Page
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
        string q = "insert addplaces values (@pn,@sid,@cid,@catid,@des,@ppic,@cpic,@dpic,@rpic,@spic,@tpic,@upic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pn", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@sid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@cid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@catid", DropDownList3.SelectedValue);
        mycomm.Parameters.AddWithValue("@des", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ppic", FileUpload1.FileName);
        mycomm.Parameters.AddWithValue("@cpic", FileUpload2.FileName);
        mycomm.Parameters.AddWithValue("@dpic", FileUpload3.FileName);
        mycomm.Parameters.AddWithValue("@rpic", FileUpload4.FileName);
        mycomm.Parameters.AddWithValue("@spic", FileUpload5.FileName);
        mycomm.Parameters.AddWithValue("@tpic", FileUpload6.FileName);
        mycomm.Parameters.AddWithValue("@upic", FileUpload7.FileName);

        
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
        if (FileUpload4.HasFile)
        {
            FileUpload4.SaveAs(MapPath("images/" + FileUpload4.FileName));
        }
        if (FileUpload5.HasFile)
        {
            FileUpload5.SaveAs(MapPath("images/" + FileUpload5.FileName));
        }
        if (FileUpload6.HasFile)
        {
            FileUpload6.SaveAs(MapPath("images/" + FileUpload6.FileName));
        }
        if (FileUpload7.HasFile)
        {
            FileUpload7.SaveAs(MapPath("images/" + FileUpload7.FileName));
        }


        Label2.Text = "Places added succesfully";
    }
}
