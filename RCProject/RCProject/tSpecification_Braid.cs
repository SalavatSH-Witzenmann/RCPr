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
    
    public partial class tSpecification_Braid
    {
        public int ID_SpecBr { get; set; }
        public int ID_specification { get; set; }
        public int ID_braid { get; set; }
        public int tBraidID_braid { get; set; }
        public int tSp_AssemblyID_Sp_Assembly { get; set; }
        public int tSpecificationID_Specification { get; set; }
    
        public virtual tBraid tBraid { get; set; }
        public virtual tSp_Assembly tSp_Assembly { get; set; }
        public virtual tSpecification tSpecification { get; set; }
    }
}
