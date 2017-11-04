using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harsha.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void admin_logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("adminlogin.aspx");
        }
    }
}