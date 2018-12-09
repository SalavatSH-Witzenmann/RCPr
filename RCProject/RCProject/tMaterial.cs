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
    
    public partial class tMaterial
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tMaterial()
        {
            this.tGlass = new HashSet<tGlass>();
            this.tBraid = new HashSet<tBraid>();
            this.tRing = new HashSet<tRing>();
            this.tCorrugSheath = new HashSet<tCorrugSheath>();
        }
    
        public int ID_material { get; set; }
        public string NameDIN { get; set; }
        public string NameGOST { get; set; }
        public string NameAISI { get; set; }
        public string NameJIS { get; set; }
        public string NameBS { get; set; }
        public string NameAFNOR { get; set; }
        public Nullable<double> ContFe { get; set; }
        public Nullable<double> ContC { get; set; }
        public Nullable<double> ContSi { get; set; }
        public Nullable<double> ContCr { get; set; }
        public Nullable<double> ContNi { get; set; }
        public Nullable<double> ContNb { get; set; }
        public Nullable<double> ContTa { get; set; }
        public Nullable<double> ContW { get; set; }
        public Nullable<double> ContMn { get; set; }
        public Nullable<double> ContCu { get; set; }
        public Nullable<double> ContSe { get; set; }
        public Nullable<double> ContCo { get; set; }
        public Nullable<double> ContMo { get; set; }
        public Nullable<double> ContBi { get; set; }
        public Nullable<double> ContP { get; set; }
        public Nullable<double> ContB { get; set; }
        public Nullable<double> ContTi { get; set; }
        public Nullable<double> ContV { get; set; }
        public Nullable<double> ContZr { get; set; }
        public Nullable<double> ContAl { get; set; }
        public Nullable<double> ContCd { get; set; }
        public Nullable<double> ContAs { get; set; }
        public Nullable<double> ContS { get; set; }
        public Nullable<double> ContCe { get; set; }
        public Nullable<double> ContA { get; set; }
        public Nullable<double> ContSn { get; set; }
        public Nullable<double> ContPb { get; set; }
        public Nullable<double> ContU { get; set; }
        public Nullable<double> ContO { get; set; }
        public Nullable<double> ContH { get; set; }
        public Nullable<double> ContPt { get; set; }
        public Nullable<double> ContAu { get; set; }
        public Nullable<double> ContNa { get; set; }
        public Nullable<double> ContMg { get; set; }
        public Nullable<double> ContGe { get; set; }
        public Nullable<double> ContRe { get; set; }
        public Nullable<double> ContAr { get; set; }
        public Nullable<double> ContLi { get; set; }
        public Nullable<double> ContIr { get; set; }
        public Nullable<double> ContPd { get; set; }
        public Nullable<double> YieldStren { get; set; }
        public Nullable<double> StrenLimit { get; set; }
        public Nullable<short> Hardness { get; set; }
        public Nullable<double> YoungMod { get; set; }
        public Nullable<double> Density { get; set; }
        public Nullable<double> ImpTough { get; set; }
        public Nullable<double> ShearModul { get; set; }
        public Nullable<double> PoissonRatio { get; set; }
        public Nullable<double> CoefTherConduct { get; set; }
        public Nullable<double> CoefHeatCapacity { get; set; }
        public Nullable<bool> DifficultWeld { get; set; }
        public Nullable<bool> Flxenosensitivity { get; set; }
        public Nullable<bool> TempBrittleness { get; set; }
        public Nullable<bool> AnnealedCond { get; set; }
        public Nullable<bool> NormalizState { get; set; }
        public string TypeStruct { get; set; }
        public string PurposeSteel { get; set; }
        public string PurposeSteel2 { get; set; }
        public string QualitySteel { get; set; }
        public string DegreeDeoxid { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tGlass> tGlass { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tBraid> tBraid { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tRing> tRing { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tCorrugSheath> tCorrugSheath { get; set; }
    }
}
