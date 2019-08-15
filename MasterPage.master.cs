using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["name"] = "search";
        Response.Redirect("Search.aspx?name=" + txtsearch.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select Username,Password from UserMst where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("User/Default.aspx");
        }
        else
        {
            lblerror.Text = "Invalid Username/Password\n please try again";
        }
        con.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
