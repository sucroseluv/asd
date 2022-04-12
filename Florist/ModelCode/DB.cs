using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Florist
{
    class DB
    {
        static TradeEntities inst;
        public static TradeEntities Inst
        {
            get
            {
                if (inst == null) 
                    inst = new TradeEntities();
                return inst;
            }
        }
    }
}
