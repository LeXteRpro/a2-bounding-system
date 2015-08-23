using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using a2_bounding_system.Models;
using System.Security.Cryptography;
using PasswordHash;
using System.Data.Entity.Validation;

namespace a2_bounding_system
{
    public partial class register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs @event)
        {
            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {


                Profile profile = new Profile();

                profile.online_name = txtBoundName.Text;
                profile.first_name = txtFirstName.Text;
                profile.last_name = txtLastName.Text;
                profile.server = txtServer.Text;
                profile.age = Convert.ToInt32(txtAge.Text);
                profile.password = PasswordHasher.CreateHash(txtPassword.Text);
                profile.gender = "Unknown";


                db.Profiles.Add(profile);

                db.SaveChanges();
                Response.Redirect("/");

            }


        }


    }
}