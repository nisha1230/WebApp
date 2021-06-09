﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using BusinessAcessLayer;

namespace WebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         string connectionString = ConfigurationManager.ConnectionStrings["DBcon"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {

            string UserName = txtUserName.Text;
            if(string.IsNullOrEmpty(UserName))
            {
                Response.Write("<script>alert('Please enter Username');</script>");
                    return;
            }
            string Password = txtPassword.Text;
            if(string.IsNullOrEmpty(Password))
            {
                Response.Write("<script>alert('Please enter Password');</script>");
                    return;
            }

            //Database code
            /*
             SqlConnection con = new SqlConnection(connectionString);
             con.Open();
             SqlCommand cmd = new SqlCommand(); 
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.CommandText = "sp_CheckLoginDetails ";
             cmd.Parameters.AddWithValue("@UserName",txtUserName.Text);
             cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
             SqlDataAdapter sa = new SqlDataAdapter();
             DataSet da = new DataSet();
             cmd.Connection = con;
             sa.SelectCommand = cmd;
             sa.Fill(da, "Password"); */
            BAL obj = new BAL();
            obj.UserName = txtUserName.Text;
            obj.Password = txtPassword.Text;

           if (obj.getUser()) 
            {
                Session["user"] = txtUserName.Text;
                Server.Transfer("HomePage.aspx");
            }
            else 
            {
                Label2.Text = "Check the data entered";
            }
            
           // con.Close();
          
         
            }
        }
        
    }
