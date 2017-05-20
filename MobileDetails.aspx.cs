using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Web.Routing;
using SemesterProject.Models;

namespace SemesterProject
{
    public partial class MobileDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<MobileData> GetMobiles(
                        [QueryString("MobileId")] int? mobileId,
                        [RouteData] string mobileName)
        {
            var _db = new SemesterProject.Models.MobilesContext();
            IQueryable<MobileData> query = _db.MobileDatas;
            if (mobileId.HasValue && mobileId > 0)
            {
                query = query.Where(p => p.MobileId == mobileId);
            }
            else if (!String.IsNullOrEmpty(mobileName))
            {
                query = query.Where(p =>
                          String.Compare(p.MobileName, mobileName) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }

        public IQueryable<MobileDetail> GetMobileDetails(
                        [QueryString("MobileId")] int? mobileId,
                        [RouteData] string mobileName)
        {
            var _db = new SemesterProject.Models.MobilesContext();
            IQueryable<MobileDetail> query = _db.MobileDetails;
            if (mobileId.HasValue && mobileId > 0)
            {
                query = query.Where(p => p.MobileId == mobileId);
            }
            else if (!String.IsNullOrEmpty(mobileName))
            {
                query = query.Where(p => p.MobileId == 2);
                //query = query.Where(p =>
                  //        String.Compare(p.MobileName, mobileName) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}