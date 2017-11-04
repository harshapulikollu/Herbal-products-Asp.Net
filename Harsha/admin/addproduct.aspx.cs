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
    public partial class addproduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=harshaDB;Integrated Security=True");
        String uniqueId, image_path;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]!= null) { Response.Write(Session["id"].ToString()); }
            
        }

        protected void upload_product_Click(object sender, EventArgs e)
        {
            uniqueId = Class1.GetRandomId(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + uniqueId + f1.FileName.ToString());
            image_path = "images/" + uniqueId + f1.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into products values('" + product_name.Text + "','" + product_desp.Text + "'," + product_price.Text + "," + product_quantity.Text + ",'" + image_path.ToString() + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            error.Text = "Added successfully";

        }
    }
}