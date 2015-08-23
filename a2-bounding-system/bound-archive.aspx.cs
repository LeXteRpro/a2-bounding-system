using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Reference Entity Framework Models
using a2_bounding_system.Models;
namespace a2_bounding_system
{
    public partial class bound_archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBoundArchive();
            }
        }

        protected void GetBoundArchive()
        {
            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {
                Int32 BoundID = Convert.ToInt32(Session["BoundID"]);

                var Bounds = from b in db.Bounds
                            select b;
                   
                grdBoundArchive.DataSource = Bounds.ToList();
                grdBoundArchive.DataBind();

            }
        }

        protected void grdBoundArchive_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Identify the DepartmentID to be deleted
            Int32 BoundID = Convert.ToInt32(grdBoundArchive.DataKeys[e.RowIndex].Values["bound_id"]);

            // Connect
            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {
                Bound bnd = (from b in db.Bounds
                                  where b.bound_id == BoundID
                                  select b).FirstOrDefault();

                // Delete
                db.Bounds.Remove(bnd);
                db.SaveChanges();

                // Redirect to the departments list page
                GetBoundArchive();
            }
        }
    }
}