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
        public virtual DbSet<tMetHose_tCorrugSheath> tMetHose_tCorrugSheathSet { get; set; }
        public virtual DbSet<tMetHose_tBraid> tMetHose_tBraidSet { get; set; }
        public virtual DbSet<tMetHose_tGlass> tMetHose_tGlassSet { get; set; }
        public virtual DbSet<tMetHose_tRing> tMetHose_tRingSet { get; set; }
    }
}
