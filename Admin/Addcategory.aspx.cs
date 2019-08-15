using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string cate = txtname.Text;
            SqlCommand cmd = new SqlCommand("Insert into CateMst (CName) values ('" + cate + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Visible = true;
            lblmsg.Text = " Successfully added  !";
            bindgrid();
        }
        catch (SqlException ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Cateory is already Exist !";
        }
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {

    }
    private void bindgrid()
    {
        GridView1.DataSource = ViewState["dt"] as DataTable;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}