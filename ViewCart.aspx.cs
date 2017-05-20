using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SemesterProject
{
    public partial class ViewCart : System.Web.UI.Page
    {
        void BindData()
        {
            lbltotl.Text = Session["totalamount"].ToString();
            List<MobileOrder> listoforderdetails = Session["listMobileOrder"] as List<MobileOrder>;
            dgproduct.DataSource = listoforderdetails;
            dgproduct.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void dgproduct_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Remove"))
            {
                string itemcode = e.CommandArgument.ToString();
                List<MobileOrder> listoforderdetails = Session["listMobileOrder"] as List<MobileOrder>;
                foreach (MobileOrder obj in listoforderdetails)
                {
                    if (obj.MobileId.ToString().Equals(itemcode))
                    {
                        decimal total = Convert.ToDecimal(Session["totalamount"].ToString());
                        total = Convert.ToDecimal(total - obj.SaleAmount);
                        Session["totalamount"] = total;
                        listoforderdetails.Remove(obj);
                        break;
                    }

                }
                Session["listMobileOrder"] = listoforderdetails;
                BindData();
            }
            if (e.CommandName.Equals("Update"))
            {
                Response.Redirect("~/UpdateQuantity.aspx?MobileId=" + e.CommandArgument.ToString());
            }
        }
    }
}