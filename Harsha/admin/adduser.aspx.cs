using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Harsha.admin
{
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_new_user_Click(object sender, EventArgs e)
        {
            if (conf_password.Text.Trim().Equals(password.Text.Trim()))
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into usertable values('" + username.Text + "','" + password.Text  + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                error.Text = "Added successfully";
            }
            else
            {
                error.Text = "check password";
            }
        }
    }
}