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
    public partial class Verizon : System.Web.UI.Page
    {
        int _carriorId = 3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                _carriorId = Convert.ToInt32(Request.QueryString["id"]);
            }

        }


        public IQueryable<MobileData> GetMobiles(
                             [QueryString("id")] int? carrierId,
                             [RouteData] string carrierName)
        {
            var _db = new SemesterProject.Models.MobilesContext();
            IQueryable<MobileData> mobilesData = _db.MobileDatas;
            IQueryable<MobileXrefCarrior> mobileXrefCarrior = _db.MobileXrefCarriors;
            IQueryable<Carrior> carrior = _db.Carriors;

            if (carrierId.HasValue && carrierId > 0)
            {
                mobilesData = from m in _db.MobileDatas
                              join mxc in _db.MobileXrefCarriors.Where(c => c.CarriorId == carrierId) on m.MobileId equals mxc.MobileId into mData
                              from mobData in mData
                              select m;
            }
            else
            {
                mobilesData = from m in _db.MobileDatas
                              join mxc in _db.MobileXrefCarriors.Where(c => c.CarriorId == _carriorId) on m.MobileId equals mxc.MobileId into mData
                              from mobData in mData
                              select m;
            }
            return mobilesData;
        }
    }
}