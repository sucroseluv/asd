using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Florist
{
    partial class Product
    {
        public string Image
        {
            get {
                if (ProductPhotoUri.Length > 0) 
                    return "/Resources/" + ProductPhotoUri;
                return "/Resources/picture.png";
            }
        }

        public string CostDecoration {
            get
            {
                if(ProductDiscountAmount > 0) 
                    return "Strikethrough";
                return "None";
            }
        }

        public string DiscountCost
        {
            get
            {
                return (ProductCost - ProductCost * ProductDiscountAmount / 100).ToString("0.####");
            }
        }

        public string BackgroundColor
        {
            get
            {
                if(ProductDiscountAmount > 15)
                    return "#7fff00";
                return "#ffffff";
            }
        }
    }
}
