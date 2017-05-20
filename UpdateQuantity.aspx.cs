using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SemesterProject
{
    public partial class UpdateQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<MobileOrder> listoforderdetails = Session["listMobileOrder"] as List<MobileOrder>;
                foreach (MobileOrder c in listoforderdetails)
                {
                    if (c.MobileId.ToString().Equals(Request.QueryString["MobileId"].ToString()))
                    {
                        lblMobileID.Text = c.MobileId.ToString();
                        lblMobileName.Text = c.MobileName.ToString();
                        lbldescription.Text = c.MobileDescription.ToString();
                        lblprice.Text = c.Price.ToString();
                        imgitem.ImageUrl = c.MobileImagePath.ToString();
                        lbloldq.Text = c.QuantityOrder.ToString();
                        break;
                    }

                }
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            List<MobileOrder> listoforderdetails = Session["listMobileOrder"] as List<MobileOrder>;
            foreach (MobileOrder c in listoforderdetails)
            {
                if (c.MobileId.ToString().Equals(Request.QueryString["MobileId"].ToString()))
                {
                    decimal total = Convert.ToDecimal(Session["totalamount"].ToString());
                    total = Convert.ToDecimal(total - c.SaleAmount);
                    Session["totalamount"] = total;
                    listoforderdetails.Remove(c);
                    break;
                }
            }
            MobileOrder obj = new MobileOrder();
            obj.MobileImagePath = imgitem.ImageUrl;
            obj.MobileName = lblMobileName.Text;
            obj.MobileId = Convert.ToInt32(Request.QueryString["MobileId"].ToString());
            obj.MobileDescription = lbldescription.Text;
            obj.Price = Convert.ToDecimal(lblprice.Text);
            obj.QuantityOrder = Convert.ToInt32(txtquantity.Text);
            obj.SaleAmount = Convert.ToInt32(txtquantity.Text.ToString()) * Convert.ToDecimal(lblprice.Text);
            Session["totalamount"] = (Convert.ToDecimal(Session["totalamount"].ToString()) + (Convert.ToInt32(txtquantity.Text.ToString()) * Convert.ToDecimal(lblprice.Text)));
            listoforderdetails.Add(obj);

            Session["listMobileOrder"] = listoforderdetails;
            Response.Redirect("~/ViewCart.aspx");
        }
    }
}