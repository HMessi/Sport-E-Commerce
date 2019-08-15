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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtiname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtdescrip_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtprice_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtquan_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {
            FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
            FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("Insert into ItemMst(IName, Detail, Price, Image, Qnt, CName, EntryDate, Image1, Image2, Size) values ('" + txtiname.Text + "','" + txtdescrip.Text + "','" + Convert.ToDouble(txtprice.Text) + "','" + "~/img/" + FileUpload1.FileName + "','" + Convert.ToInt32(txtquan.Text) + "','" + DropDownList1.SelectedItem.Text + "','" + System.DateTime.Now + "','" + "~/img/" + FileUpload2.FileName + "','" + "~/img/" + FileUpload3.FileName + "','" + Convert.ToInt32(DropDownList2.SelectedItem.Text) + "')", con);
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
            lblmsg.Text = "Cateory is already Exist !"+ex;
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
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
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}