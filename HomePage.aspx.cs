using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["user"]== null)
            {
                Server.Transfer("LoginPage.aspx");
            }
           Label2.Text = Session["user"].ToString();
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
          
             Server.Transfer("LoginPage.aspx");
           
        }
    }
    }