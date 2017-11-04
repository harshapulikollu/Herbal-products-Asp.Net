using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Harsha.user
{
    public partial class login : System.Web.UI.Page
    {
        int i;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from usertable where username='" + userlogin.Text + "' and password='" + password.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i == 1)
            {
                Session["userid"] = userlogin.Text;
                if (Request.QueryString["url"] == "checkoutpage")
                {
                    Response.Redirect("checkout.aspx");
                }
                else
                {
                    Response.Redirect("homepage.aspx");
                }
                
            }
            else
            {
                wrongcredentials.Text = "Invalid Credentials";
            }
            con.Close();
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            userlogin.Text = string.Empty;
            password.Text = string.Empty;
        }
    }
}