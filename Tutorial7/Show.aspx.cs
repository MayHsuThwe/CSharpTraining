using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorial7
{
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Name"] == null && Session["Password"] == null)
                {                    
                    lblString.Text = "Welcome " + Session["Name"] + Session["Password"];
                }
                else
                {
                    lblString.Text = Session["Name"] + " " + Session["Password"];
                    lblName.Text = Session["Name"].ToString();
                    lblPassword.Text = Session["Password"].ToString();
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}