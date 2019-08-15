using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtadd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtcity_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtppin_TextChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void txtmo_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtemail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtcpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("Insert into UserMst (username,Name, Surname,Address, City, Pincode, Mobile, Email, Password) values ('" + txtun.Text + "','" + txtname.Text + "','" + txtsname.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtppin.Text + "','" + txtmo.Text + "','" + txtemail.Text + "','" + txtpass.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("User/Default.aspx");
        }
        catch (SqlException ex)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Username already taken, try another username";
        }
    }
    protected void txtun_TextChanged(object sender, EventArgs e)
    {

    }
}