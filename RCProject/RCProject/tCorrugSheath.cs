//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RCProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class tCorrugSheath
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tCorrugSheath()
        {
            this.tMetHose = new HashSet<tMetHose>();
        }
    
        public int ID { get; set; }
        public string Type { get; set; }
        public short DN { get; set; }
        public double PN { get; set; }
        public Nullable<double> Dout { get; set; }
        public Nullable<double> Din { get; set; }
        public Nullable<double> TPch { get; set; }
        public Nullable<double> Dtop { get; set; }
        public Nullable<double> Dbot { get; set; }
        public Nullable<short> Rmin { get; set; }
        public Nullable<short> Rn { get; set; }
        public Nullable<double> Th { get; set; }
        public string Executor { get; set; }
        public string Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tMetHose> tMetHose { get; set; }
        public virtual tMaterial tMaterial { get; set; }
    }
}
