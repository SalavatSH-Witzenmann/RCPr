//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RCProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class tMetHose_tGlass
    {
        public int ID { get; set; }
        public int IDMetH { get; set; }
        public int IDGlass { get; set; }
        public int tMetHoseID { get; set; }
        public int tGlassID { get; set; }
    
        public virtual tMetHose tMetHose { get; set; }
        public virtual tGlass tGlass { get; set; }
    }
}