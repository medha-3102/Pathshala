using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Pathshala
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PathshalaConnectionString"].ConnectionString);
                conn.Open();
            string checkuser = "select count(*) from UserData where UserName:" + TextBoxUserName.Text + " ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if(temp==1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from UserData where UserName:" + TextBoxUserName.Text + " ";
                SqlCommand  passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString();
                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is correct");
                }
                else
                {
                    Response.Write("Password is incorrect");
                }
            }
            else
            {
                Response.Write("UserName is incorrect");
            }
            

        }
    }
}