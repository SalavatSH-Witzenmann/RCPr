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
    
    public partial class tGlass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tGlass()
        {
            this.UntypicalCheck = false;
            this.ExpanRing = false;
            this.CompressRing = false;
        }
    
        public int ID { get; set; }
        public short DN { get; set; }
        public string Name { get; set; }
        public string UntypicalName { get; set; }
        public Nullable<bool> UntypicalCheck { get; set; }
        public double Dout { get; set; }
        public double Th { get; set; }
        public double Ls { get; set; }
        public Nullable<bool> ExpanRing { get; set; }
        public Nullable<bool> CompressRing { get; set; }
        public Nullable<double> Din { get; set; }
        public string Executor { get; set; }
        public string Description { get; set; }
        public int tMaterialID { get; set; }
    
        public virtual tMaterial tMaterial { get; set; }
    }
}
