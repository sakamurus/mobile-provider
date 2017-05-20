using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SemesterProject
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                divform.Visible = false;

                if (thisAddress.Checked)
                {
                   
                    Response.Redirect("Payment.aspx");

                }
                else if (otherAddress.Checked)
                {
                    Response.Redirect("ShippingAddress.aspx");
                }

            }
        }
    }
}