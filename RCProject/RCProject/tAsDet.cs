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
    
    public partial class tAsDet
    {
        public int ID { get; set; }
        public int tAssemblySpID { get; set; }
        public int tDetailSpID { get; set; }
    
        public virtual tAssemblySp tAssemblySp { get; set; }
        public virtual tDetailSp tDetailSp { get; set; }
    }
}
