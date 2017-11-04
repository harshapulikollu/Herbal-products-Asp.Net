using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Harsha
{
    public partial class main : System.Web.UI.MasterPage
    {
        string s, t;
        string[] a = new string[5];
       public int tot = 0, totalCount=0;
        protected void Page_Load(object sender, EventArgs e)
        {
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

                    
                    tot = tot + (Convert.ToInt32(a[1]) * Convert.ToInt32(a[2]));
                    totalCount = totalCount + 1;
                    //total.Text = "Grand Total = " + tot;
                }

            }
            if (Session["userid"]!= null)
            {
                login.Text = "Logout";
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if(Session["userid"] != null)
            {
                
                Response.Redirect("login.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }

        protected void cart_click_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }
    }
}