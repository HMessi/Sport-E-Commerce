using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string IName = Request.QueryString["IName"];
            
            
            SqlCommand cmd = new SqlCommand("select IName,Price, Detail,Qnt, Size, Image, Image1, Image2 from ItemMst where IName='" + IName+ "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblname.Text = dt.Rows[0]["iname"].ToString();
                lblprice.Text = dt.Rows[0]["price"].ToString();
                lbldetil.Text = dt.Rows[0]["detail"].ToString();
                lblqnt.Text = dt.Rows[0]["qnt"].ToString();
                lblqnt0.Text = dt.Rows[0]["Size"].ToString();
                Image3.ImageUrl = dt.Rows[0]["image"].ToString();
                Image4.ImageUrl = dt.Rows[0]["image"].ToString();
                Image5.ImageUrl = dt.Rows[0]["image1"].ToString();
                Image6.ImageUrl = dt.Rows[0]["image2"].ToString();
            }
            else
            {
                
            }
            con.Close();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string un = Session["Username"].ToString();


        SqlCommand cmd = new SqlCommand("Insert into orderMst (image, uname,iname,price,EntryDate) values ('" + Image4.ImageUrl.ToString() + "','" + un + "','" + lblname.Text + "','" + Convert.ToDouble(lblprice.Text) + "','" + System.DateTime.Now + "')", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Response.Redirect("MyCart.aspx");
        }
        
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?IName=" + e.CommandArgument.ToString());
    }
}