using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017222041_hasanakpolad
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (var db = new MasterContext())
            {
                var user = db.Users.Where(x => x.UserName.Contains(username.Text) && x.Password.Contains(password.Text));
                if(user!=null)
                    Response.Redirect("HomePage.aspx");
                else
                {
                    Response.Write("<script>alert('Kullanıcı Adı veya şifre hatalı!')</script>");
                }

            }
        }
    }
}