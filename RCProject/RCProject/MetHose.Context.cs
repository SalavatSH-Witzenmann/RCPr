﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MetHoseContainer : DbContext
    {
        public MetHoseContainer()
            : base("name=MetHoseContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tCorrugSheath> tCorrugSheathSet { get; set; }
        public virtual DbSet<tMaterial> tMaterialSet { get; set; }
        public virtual DbSet<tGlass> tGlassSet { get; set; }
        public virtual DbSet<tBraid> tBraidSet { get; set; }
        public virtual DbSet<tRing> tRingSet { get; set; }
        public virtual DbSet<tMetHose> tMetHoseSet { get; set; }
        public virtual DbSet<tSpecification> tSpecificationSet { get; set; }
        public virtual DbSet<tSpecification_tCorrugSheath> tSpecification_CorrugSheathSet { get; set; }
        public virtual DbSet<tSpecification_Braid> tSpecification_BraidSet { get; set; }
        public virtual DbSet<tSpecification_Glass> tSpecification_GlassSet { get; set; }
        public virtual DbSet<tSpecification_Ring> tSpecification_RingSet { get; set; }
    }
}
