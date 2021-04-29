using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017222041_hasanakpolad
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["User"].ConnectionString);
            //    conn.Open();
            //    string user = "Select Count(*) From Project.Users Where UserName='" + username.Text + "'";
            //    SqlCommand com = new SqlCommand(user, conn);
            //   // int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //    if (user.Count()==1)
            //        Response.Write("<script>alert('Kullanıcı zaten var.')</script>");
            //    conn.Close();
            //}
        }

        protected void btnKyt_Click(object sender, EventArgs e)
        {
            using (var db = new MasterContext())
            {

                if (IsPostBack)
                {
                    //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["User"].ConnectionString);
                    //conn.Open();
                    //string userName = "Select Count(*) From Project Where UserName='" + username.Text + "'";
                    //SqlCommand com = new SqlCommand(userName, conn);
                    //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    //if (userName.Count() == 1)
                    //    Response.Write("<script>alert('Kullanıcı zaten var.')</script>");
                    //conn.Close();
                    var userss = db.Users.Select(x => x.UserName);
                    if (userss.Contains(username.Text))
                        Response.Write("<script>alert('Kullanıcı zaten var.')</script>");
                    else
                    {
                        var user = new Users()
                        {
                            UserName = username.Text,
                            Password = password.Text,
                            PasswordConfirm = confirm.Text,
                            Gender = gender.SelectedValue
                        };
                        db.Users.Add(user);

                        if (db.SaveChanges() > 0)
                            Response.Redirect("SignIn.aspx");
                    }
                }
            }
        }
    }
}