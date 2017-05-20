using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SemesterProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("");
            if (Session["listMobileOrder"] == null)
            {
                List<MobileOrder> obj = new List<MobileOrder>();
                Session["listMobileOrder"] = obj;
                Session["totalamount"] = 0;
            }
        }
    }
}