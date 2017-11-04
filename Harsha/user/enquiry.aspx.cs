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
    public partial class enquiry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enq_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SpInsertEnq", con);
            cmd.CommandType = CommandType.StoredProcedure;
           /* SqlParameter username = new SqlParameter("@UserName", enquiry_name.Text);
            SqlParameter organame = new SqlParameter("@OrgName", org_name.Text);
            SqlParameter eqnaddress = new SqlParameter("@Address", address.Text);
            SqlParameter eqnemail = new SqlParameter("@Email", email.Text);
            SqlParameter eqnphone = new SqlParameter("@PhoneNumber", phone_num.Text);
            SqlParameter eqndesp = new SqlParameter("@Desc", enq_desp.Text);*/
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = enquiry_name.Text;
            cmd.Parameters.Add("@OrgName", SqlDbType.VarChar).Value = org_name.Text;
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = address.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Text;
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = phone_num.Text;
            cmd.Parameters.Add("@Desc", SqlDbType.VarChar).Value = enq_desp.Text;
            cmd.ExecuteNonQuery();
            con.Close(); 
        }
    }
}