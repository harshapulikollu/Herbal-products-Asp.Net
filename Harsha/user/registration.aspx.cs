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
    public partial class registration : System.Web.UI.Page
    {
        int i,j=0;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            newuserlogin.Text = string.Empty;
            newpassword.Text = string.Empty;
            cnf_password.Text = string.Empty;

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from usertable where username='" + newuserlogin.Text  + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i == 1)
            {
                wrongcredentials.Text = "Username already used";
            }
            else
            {
                if (newpassword.Text.Equals(cnf_password.Text))
                {
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into usertable values('" + newuserlogin.Text + "','" + newpassword.Text + "')";
                    cmd.ExecuteNonQuery();
                    wrongcredentials.Text = "Success! Redirecting to login page";
                    Response.Redirect("login.aspx");
                }
                else
                {
                    wrongcredentials.Text = "Invalid Credentials";
                }
                
            }
            con.Close();
        }
    }
}