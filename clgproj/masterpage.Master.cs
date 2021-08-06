using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Windows.Forms;

namespace clgproj
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                lgnbtn.Text = "Logout";
            }
            else
            {
                lgnbtn.Text = "Login";
            }
        }
        protected void lgnbtn_Click1(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Session.RemoveAll();
                lgnbtn.Text = "Login";
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }


        protected void linkbutton1_click(object sender, EventArgs e)
        {
            Response.Redirect("~/projects.aspx?proj=All");
        }
        protected void linkbutton2_click(object sender, EventArgs e)
        {
            Response.Redirect("~/projects.aspx?proj=Ongoing");
        }
        protected void linkbutton3_click(object sender, EventArgs e)
        {
            Response.Redirect("~/projects.aspx?proj=Completed");
        }
        protected void linkbutton4_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
        protected void linkbutton5_click(object sender, EventArgs e)
        {
            Response.Redirect("~/CorporateProfile.aspx");
        }
        protected void linkbutton6_click(object sender, EventArgs e)
        {
            Response.Redirect("~/projects.aspx?proj=All");
        }
        protected void linkbutton7_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Myorders.aspx");
        }

        protected void myorders_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("~/Myorders.aspx");
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

        
    }
}