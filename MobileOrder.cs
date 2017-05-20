using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SemesterProject
{
    public partial class MobileOrder
    {
        private int _MobileId;
        private int _Quantity;
        private string _MobileName;
        private string _MobileDescription;
        private string _MobileImagePath;
        private decimal _Price;
        private decimal _SaleAmount;
        public decimal SaleAmount
        {
            get
            {
                return this._SaleAmount;
            }
            set
            {
                if ((this._SaleAmount != value))
                {
                    this._SaleAmount = value;
                }
            }
        }
        public int MobileId
        {
            get
            {
                return this._MobileId;
            }
            set
            {
                if ((this._MobileId != value))
                {
                    this._MobileId = value;
                }
            }
        }
        public int QuantityOrder
        {
            get
            {
                return this._Quantity;
            }
            set
            {
                if ((this._Quantity != value))
                {
                    this._Quantity = value;
                }
            }
        }
        public decimal Price
        {
            get
            {
                return this._Price;
            }
            set
            {
                if ((this._Price != value))
                {
                    this._Price = value;
                }
            }
        }
        public string MobileImagePath
        {
            get
            {
                return this._MobileImagePath;
            }
            set
            {
                if ((this._MobileImagePath != value))
                {
                    this._MobileImagePath = value;
                }
            }
        }
        public string MobileDescription
        {
            get
            {
                return this._MobileDescription;
            }
            set
            {
                if ((this._MobileDescription != value))
                {
                    this._MobileDescription = value;
                }
            }
        }
        public string MobileName
        {
            get
            {
                return this._MobileName;
            }
            set
            {
                if ((this._MobileName != value))
                {
                    this._MobileName = value;
                }
            }
        }
    }
}