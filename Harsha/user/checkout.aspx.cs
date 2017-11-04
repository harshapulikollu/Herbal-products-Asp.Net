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
    public partial class checkout : System.Web.UI.Page
    {
        string s, t, products_name="",quantity_num="";
        string[] a = new string[5];
        int tot = 0,i=0;
        bool details=false;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("product_name"), new DataColumn("product_quan"), new DataColumn("price") });
            if (Request.Cookies["herbal"] != null)
            {
                s = Convert.ToString(Request.Cookies["herbal"].Value);
                string[] strArray = s.Split('@');
                for (int i = 0; i < strArray.Length; i++)
                {
                    t = Convert.ToString(strArray[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();

                    }

                    dt.Rows.Add(a[0], a[1], a[2]);
                    products_name = products_name+"," + a[0];
                    quantity_num = quantity_num +","+ a[1];
                    tot = tot + (Convert.ToInt32(a[1]) * Convert.ToInt32(a[2]));
                    total.Text = "Grand Total = " + tot;
                }

            }
            d1.DataSource = dt;
            d1.DataBind();
            if (Session["userid"] != null)
            {
                string username = Session["userid"].ToString();
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "select * from userdetails where username ='" + username +"'";
                cmd2.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                da.Fill(dt1);
                i = Convert.ToInt32(dt.Rows.Count.ToString());
                if (i >= 1)
                {
                    details = true;
                }
                else
                {
                    checkbox.Visible = false;
                }
                con.Close();
            }
            else
            {
                Response.Redirect("login.aspx?url=checkoutpage");
            }
            

        }

        protected void place_order_Click(object sender, EventArgs e)
        {
            if(Session["userid"] != null)
            {
                if(checkbox.Checked!= true)
                {
                    if (details == true)
                    {
                        string orderid = Class1.GetRandomId(5);
                        string username = Session["userid"].ToString();
                        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
                        con.Open();
                        SqlCommand cmd1 = con.CreateCommand();
                        cmd1.CommandType = CommandType.Text;
                        cmd1.CommandText = "insert into orders values('" + orderid + "','" + username + "','" + products_name + "','" + quantity_num + "')";
                        cmd1.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("sucess.aspx");

                    }
                    else
                    {
                        Response.Write("fill details");
                    }
                }
                else
                {
                    Response.Write("u havent used chekbox so fill new details");
                }
                
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            

        }
        protected void save_details_Click(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                string username = Session["userid"].ToString();
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into userdetails values('" + username + "','" + first_name.Text + "','" + last_name.Text + "','" + org_name.Text + "','" + address.Text + "','" + postal_code.Text + "','" + city.Text + "','" + ph_num.Text + "','" + alt_email.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("new details added");
            }
            else
            {
                Response.Redirect("login.aspx?url=checkoutpage");
            }

        }
    }
}