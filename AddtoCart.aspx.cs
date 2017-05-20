using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SemesterProject
{
    public partial class AddtoCart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["MobilesContext"].ConnectionString;
                string query = "SELECT MobileId, MobileName, MobileDescription, MobileImagePath, Price from MobileData WHERE MobileId='"+ Request.QueryString["MobileId"].ToString() + "'";

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.Read())
                            {
                                lblMobileID.Text = reader["MobileId"].ToString();
                                lblMobileName.Text = reader["MobileName"].ToString();
                                lbldescription.Text = reader["MobileDescription"].ToString();
                                lblprice.Text = reader["Price"].ToString();
                                imgitem.ImageUrl ="/Images/" +reader["MobileImagePath"].ToString();
                            }
                        }
                    }
                }
            }
        }

        protected void btnaddtocart_Click(object sender, EventArgs e)
        {
            List<MobileOrder> listoforderdetails = Session["listMobileOrder"] as List<MobileOrder>;

            foreach (var c in listoforderdetails)
            {
                if (c.MobileId.ToString() == Request.QueryString["MobileId"].ToString())
                {
                    listoforderdetails.Remove(c);
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