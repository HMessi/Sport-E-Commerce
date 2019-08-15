using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtquan_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE ItemMst SET Qnt = '"+Convert.ToInt32(txtquan.Text)+"' WHERE IName = '"+DropDownList2.SelectedItem.Text+"'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Visible = true;
            lblmsg.Text = " Successfully Added  !";
            bindgrid();
        }
        catch (SqlException ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Cateory is already Exist !" + ex;
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private void bindgrid()
    {
        GridView1.DataSource = ViewState["dt"] as DataTable;
        GridView1.DataBind();
    }
}