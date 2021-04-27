using System;
using System.Collections.Generic;
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

        }

        protected void btnKyt_Click(object sender, EventArgs e)
        {
            using (var db = new MasterContext())
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