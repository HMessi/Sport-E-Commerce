using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_login : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();  
            string un = txtuname.Text;  
            string pass = txtpass.Text;  
            SqlCommand cmd = new SqlCommand("select Username,Password from AdminMst where Username='" + txtuname.Text + "'and Password='" + txtpass.Text + "'", con);  
            SqlDataAdapter da = new SqlDataAdapter(cmd);  
            DataTable dt = new DataTable();  
            da.Fill(dt);  
            if (dt.Rows.Count > 0)  
            {
                Response.Redirect("Additem.aspx"); 
            }  
            else  
            {
                lblmsg.Text = "Invalid Username/Password\n please try again";  
            }  
            con.Close();   
    }
}