using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RCProject
{
    class MyCollection
    {
        public MyCollection(int x, int y)
        {
          DN = x;
          PN = y;
        }
        public int DN { get; set; }
        public int PN { get; set; }
    }
}
