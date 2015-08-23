using a2_bounding_system.Models;
using System;
using System.Linq;

namespace a2_bounding_system
{
    public partial class submit_file : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["BoundID"] != null)
                {
                    GetBound();
                }
            }
        }

        protected void GetBound()
        {
            Int32 BoundID = Convert.ToInt32(Request.QueryString["BoundID"]);


            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {

                Bound bnd = (from b in db.Bounds
                             where b.bound_id == BoundID
                             select b).FirstOrDefault();


                //map the student properties to the form controls if we found a match
                if (bnd != null)
                {
                    txtBoundName.Text = bnd.bound_name;
                    DropDownBoundDifficulty.ClearSelection(); //making sure the previous selection has been cleared
                    DropDownBoundDifficulty.Items.FindByValue(bnd.bound_difficulty.ToString()).Selected = true;
                    BoundObstacles.Text = bnd.bound_obstacles.ToString();
                }
            }
        }

        protected void BoundSubmit_Click(object sender, EventArgs e)
        {
            //use EF to connect to SQL Server
            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {

                // Use the Student model to save the new record
                Bound bound = new Bound();
                Int32 BoundID = 0;


                //check the querystring for an id so we can determine add / update
                if (Request.QueryString["BoundID"] != null)
                {
                    //get the id from the url
                    BoundID = Convert.ToInt32(Request.QueryString["BoundID"]);

                    //get the current student from EF
                    bound = (from objB in db.Bounds
                             where objB.bound_id == BoundID
                             select objB).FirstOrDefault();
                }

                // Fill in properties of department
                bound.bound_name = txtBoundName.Text;

                if (DropDownBoundDifficulty.SelectedValue != "-1")
                {
                    bound.bound_difficulty = Convert.ToInt32(DropDownBoundDifficulty.SelectedValue);
                }
                else
                {
                    bound.bound_difficulty = null;
                }

                bound.bound_obstacles = Convert.ToInt32(BoundObstacles.Text);

                //call add only if we have no student ID
                if (BoundID == 0)
                {
                    db.Bounds.Add(bound);
                }

                //run the update or insert
                db.SaveChanges();

                //redirect to the updated students page
                Response.Redirect("bound-archive.aspx");
            }
        }
    }
}