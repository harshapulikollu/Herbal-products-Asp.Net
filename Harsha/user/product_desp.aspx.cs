using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Harsha.user
{
    public partial class product_desp : System.Web.UI.Page
    {
        int id;
        String CS = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

        string product_name, product_desc, product_price, Product_quan, product_image;
        protected void Page_Load(object sender, EventArgs e)
        {
            
             using (SqlConnection con = new SqlConnection(CS))
            {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("products.aspx");
                }
                else
                {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from products where productId=" + id + "";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    d1.DataSource = dt;
                    d1.DataBind();
                    
                }

            }
        }

        protected void add_to_cart_Click(object sender, EventArgs e) //adding to cart using cookies method
        {
            
           // String CS = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from products where productId=" + id + "";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    product_name = dr["productname"].ToString();
                    Product_quan = dr["productquant"].ToString();
                    product_price = dr["productprice"].ToString();
                    
                    
                    
                }
                

            }
            if (Convert.ToInt32(TextBox1.Text) > Convert.ToInt32(Product_quan))
            {
                Label1.Text = "quantity is more than we have.";
            }
            else
            {
                Product_quan = TextBox1.Text;
                if (Request.Cookies["herbal"] == null)
                {
                    Response.Cookies["herbal"].Value = product_name.ToString() + ","  + Product_quan.ToString()+"," + product_price.ToString();
                    Response.Cookies["herbal"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    string cookiesstring = Request.Cookies["herbal"].Value;

                    Response.Cookies["herbal"].Value = cookiesstring + "@" + product_name.ToString() + "," + Product_quan.ToString() + "," + product_price.ToString();

                    //              Response.Cookies["herbal"].Value = Response.Cookies["herbal"].Value.ToString()+ "|" + product_name.ToString() + ","  + product_price.ToString() + "," + Product_quan.ToString() ;
                    Response.Cookies["herbal"].Expires = DateTime.Now.AddDays(1);
                }
            }

            using (SqlConnection con = new SqlConnection(CS))
            {

                con.Open();
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update products set productquant= productquant-" + TextBox1.Text+" where productId=" + id + "";
                cmd1.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                da.Fill(dt);

            }

            }

        }
}