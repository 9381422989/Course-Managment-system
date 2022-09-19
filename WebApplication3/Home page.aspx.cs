using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            if(Txtadminid.Text=="Admin"  && Txtpwdadmin.Text=="123456")
            {
                Session["Adminname"]= " Welcome " +Txtadminid.Text;
                Response.Redirect("WebForm1.aspx");

            }
            else
            {
                Labmsg.Text = "falied Login Details.....";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Txtadminid.Text = "";
            Txtpwdadmin.Text = "";
        }
    }
}