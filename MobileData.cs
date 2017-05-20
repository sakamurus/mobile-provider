using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SemesterProject
{
    public partial class MobileData
    {
        private string _MobileID;
        private string _MobileDescription;
        private string _MobileName;
        private string _MobileImagePath;
        private string _Price;
        private int _qty;
        public int Quantity
        {
            get
            {
                return this._qty;
            }
            set
            {
                if ((this._qty != value))
                {
                    this._qty = value;
                }
            }
        }
        public string MobilePrice
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
        public string MobileImage
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
        public string MobileTitle
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
        public string MobileDesc
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
        public string MobileID
        {
            get
            {
                return this._MobileID;
            }
            set
            {
                if ((this._MobileID != value))
                {
                    this._MobileID = value;
                }
            }
        }
    }
}