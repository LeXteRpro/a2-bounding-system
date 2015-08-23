using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using a2_bounding_system.Models;

namespace a2_bounding_system
{
    public partial class replay_archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetReplayArchive();
            }
        }

        protected void GetReplayArchive()
        {
            using (Bounding_SystemEntities db = new Bounding_SystemEntities())
            {
                Int32 ReplayID = Convert.ToInt32(Session["ReplayID"]);

                var Replays = from b in db.Replays
                             select b;

                grdReplayArchive.DataSource = Replays.ToList();
                grdReplayArchive.DataBind();

            }
        }

        protected void grdReplayArchive_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

    }
}
