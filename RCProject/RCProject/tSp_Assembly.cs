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
    
    public partial class tSp_Assembly
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tSp_Assembly()
        {
            this.tSpecification_tCorrugSheath = new HashSet<tSpecification_tCorrugSheath>();
            this.tSpecification_Braid = new HashSet<tSpecification_Braid>();
            this.tSpecification_Glass = new HashSet<tSpecification_Glass>();
            this.tSpecification_Ring = new HashSet<tSpecification_Ring>();
            this.tSpec_Sp_Assembly = new HashSet<tSpec_Sp_Assembly>();
        }
    
        public int ID_Sp_Assembly { get; set; }
        public int id_item_as { get; set; }
        public string Name { get; set; }
        public short Position { get; set; }
        public short Quantity { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tSpecification_tCorrugSheath> tSpecification_tCorrugSheath { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tSpecification_Braid> tSpecification_Braid { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tSpecification_Glass> tSpecification_Glass { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tSpecification_Ring> tSpecification_Ring { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tSpec_Sp_Assembly> tSpec_Sp_Assembly { get; set; }
    }
}
