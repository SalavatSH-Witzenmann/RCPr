
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/10/2018 23:42:54
-- Generated from EDMX file: C:\Users\mercu\Desktop\Project VS\WORK\RCProject\v1\RCProject\RCProject\MetHose.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyDBExp2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tGlasstMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tGlassSet] DROP CONSTRAINT [FK_tGlasstMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_tBraidtMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tBraidSet] DROP CONSTRAINT [FK_tBraidtMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_tRingtMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tRingSet] DROP CONSTRAINT [FK_tRingtMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_tCorrugSheathtMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tCorrugSheathSet] DROP CONSTRAINT [FK_tCorrugSheathtMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_tMetHoseSpecification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHoseSpecification];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecificationtSpecification_tCorrugSheath]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_CorrugSheathSet] DROP CONSTRAINT [FK_tSpecificationtSpecification_tCorrugSheath];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecification_tCorrugSheathtCorrugSheath]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_CorrugSheathSet] DROP CONSTRAINT [FK_tSpecification_tCorrugSheathtCorrugSheath];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecificationtSpecification_Braid]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_BraidSet] DROP CONSTRAINT [FK_tSpecificationtSpecification_Braid];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecification_BraidtBraid]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_BraidSet] DROP CONSTRAINT [FK_tSpecification_BraidtBraid];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecificationtSpecification_Glass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_GlassSet] DROP CONSTRAINT [FK_tSpecificationtSpecification_Glass];
GO
IF OBJECT_ID(N'[dbo].[FK_tGlasstSpecification_Glass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_GlassSet] DROP CONSTRAINT [FK_tGlasstSpecification_Glass];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecificationtSpecification_Ring]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_RingSet] DROP CONSTRAINT [FK_tSpecificationtSpecification_Ring];
GO
IF OBJECT_ID(N'[dbo].[FK_tSpecification_RingtRing]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tSpecification_RingSet] DROP CONSTRAINT [FK_tSpecification_RingtRing];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tCorrugSheathSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tCorrugSheathSet];
GO
IF OBJECT_ID(N'[dbo].[tMaterialSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tMaterialSet];
GO
IF OBJECT_ID(N'[dbo].[tGlassSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tGlassSet];
GO
IF OBJECT_ID(N'[dbo].[tBraidSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tBraidSet];
GO
IF OBJECT_ID(N'[dbo].[tRingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tRingSet];
GO
IF OBJECT_ID(N'[dbo].[tMetHoseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tMetHoseSet];
GO
IF OBJECT_ID(N'[dbo].[tSpecificationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tSpecificationSet];
GO
IF OBJECT_ID(N'[dbo].[tSpecification_CorrugSheathSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tSpecification_CorrugSheathSet];
GO
IF OBJECT_ID(N'[dbo].[tSpecification_BraidSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tSpecification_BraidSet];
GO
IF OBJECT_ID(N'[dbo].[tSpecification_GlassSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tSpecification_GlassSet];
GO
IF OBJECT_ID(N'[dbo].[tSpecification_RingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tSpecification_RingSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tCorrugSheathSet'
CREATE TABLE [dbo].[tCorrugSheathSet] (
    [ID_corrugsheath] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [DN] smallint  NOT NULL,
    [PN] float  NOT NULL,
    [Dout] float  NULL,
    [Din] float  NULL,
    [TPch] float  NULL,
    [Dtop] float  NULL,
    [Dbot] float  NULL,
    [Rmin] smallint  NULL,
    [Rn] smallint  NULL,
    [Th] float  NULL,
    [Executor] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tMaterialSet'
CREATE TABLE [dbo].[tMaterialSet] (
    [ID_material] int IDENTITY(1,1) NOT NULL,
    [NameDIN] nvarchar(max)  NULL,
    [NameGOST] nvarchar(max)  NULL,
    [NameAISI] nvarchar(max)  NULL,
    [NameJIS] nvarchar(max)  NULL,
    [NameBS] nvarchar(max)  NULL,
    [NameAFNOR] nvarchar(max)  NULL,
    [ContFe] float  NULL,
    [ContC] float  NULL,
    [ContSi] float  NULL,
    [ContCr] float  NULL,
    [ContNi] float  NULL,
    [ContNb] float  NULL,
    [ContTa] float  NULL,
    [ContW] float  NULL,
    [ContMn] float  NULL,
    [ContCu] float  NULL,
    [ContSe] float  NULL,
    [ContCo] float  NULL,
    [ContMo] float  NULL,
    [ContBi] float  NULL,
    [ContP] float  NULL,
    [ContB] float  NULL,
    [ContTi] float  NULL,
    [ContV] float  NULL,
    [ContZr] float  NULL,
    [ContAl] float  NULL,
    [ContCd] float  NULL,
    [ContAs] float  NULL,
    [ContS] float  NULL,
    [ContCe] float  NULL,
    [ContA] float  NULL,
    [ContSn] float  NULL,
    [ContPb] float  NULL,
    [ContU] float  NULL,
    [ContO] float  NULL,
    [ContH] float  NULL,
    [ContPt] float  NULL,
    [ContAu] float  NULL,
    [ContNa] float  NULL,
    [ContMg] float  NULL,
    [ContGe] float  NULL,
    [ContRe] float  NULL,
    [ContAr] float  NULL,
    [ContLi] float  NULL,
    [ContIr] float  NULL,
    [ContPd] float  NULL,
    [YieldStren] float  NULL,
    [StrenLimit] float  NULL,
    [Hardness] smallint  NULL,
    [YoungMod] float  NULL,
    [Density] float  NULL,
    [ImpTough] float  NULL,
    [ShearModul] float  NULL,
    [PoissonRatio] float  NULL,
    [CoefTherConduct] float  NULL,
    [CoefHeatCapacity] float  NULL,
    [DifficultWeld] bit  NULL,
    [Flxenosensitivity] bit  NULL,
    [TempBrittleness] bit  NULL,
    [AnnealedCond] bit  NULL,
    [NormalizState] bit  NULL,
    [TypeStruct] nvarchar(max)  NULL,
    [PurposeSteel] nvarchar(max)  NULL,
    [PurposeSteel2] nvarchar(max)  NULL,
    [QualitySteel] nvarchar(max)  NULL,
    [DegreeDeoxid] nvarchar(max)  NULL
);
GO

-- Creating table 'tGlassSet'
CREATE TABLE [dbo].[tGlassSet] (
    [ID_glass] int IDENTITY(1,1) NOT NULL,
    [DN] smallint  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [UntypicalName] nvarchar(max)  NULL,
    [UntypicalCheck] bit  NULL,
    [Dout] float  NOT NULL,
    [Th] float  NOT NULL,
    [Ls] float  NOT NULL,
    [ExpanRing] bit  NULL,
    [CompressRing] bit  NULL,
    [Din] float  NULL,
    [Executor] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tBraidSet'
CREATE TABLE [dbo].[tBraidSet] (
    [ID_braid] int IDENTITY(1,1) NOT NULL,
    [DN] smallint  NOT NULL,
    [TypeBr] nvarchar(max)  NOT NULL,
    [Dout] float  NOT NULL,
    [Din] float  NOT NULL,
    [NumbStrands] smallint  NULL,
    [NymbThreads] smallint  NULL,
    [DThreads] float  NOT NULL,
    [AngleWeaving] float  NULL,
    [Executor] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tRingSet'
CREATE TABLE [dbo].[tRingSet] (
    [ID_ring] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Designation] nvarchar(max)  NOT NULL,
    [DN] smallint  NOT NULL,
    [PN] float  NOT NULL,
    [Dout] float  NOT NULL,
    [Th] float  NOT NULL,
    [LN] float  NOT NULL,
    [WeldingSide] nvarchar(max)  NULL,
    [ChamExtR] float  NULL,
    [ChamExtL] float  NULL,
    [ChamIntR] float  NULL,
    [ChamIntL] float  NULL,
    [AngleExtR] float  NULL,
    [AngleExtL] float  NULL,
    [AngleIntR] float  NULL,
    [AngleIntL] float  NULL,
    [BoringExtR] float  NULL,
    [BoringExtL] float  NULL,
    [BoringIntR] float  NULL,
    [BoringIntL] float  NULL,
    [AngleCoupExtR] float  NULL,
    [AngleCoupExtL] float  NULL,
    [AngleCoupIntR] float  NULL,
    [AngleCoupIntL] float  NULL,
    [Description] nvarchar(max)  NULL,
    [Executor] nvarchar(max)  NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tMetHoseSet'
CREATE TABLE [dbo].[tMetHoseSet] (
    [ID_methose] int IDENTITY(1,1) NOT NULL,
    [DN] smallint  NOT NULL,
    [PN] float  NOT NULL,
    [NamePrimary] nvarchar(max)  NULL,
    [NameSecondary] nvarchar(max)  NULL,
    [PHydTest] float  NULL,
    [PPneumTest] float  NULL,
    [Description] nvarchar(max)  NULL,
    [Executor] nvarchar(max)  NULL,
    [Specification_ID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSpecificationSet'
CREATE TABLE [dbo].[tSpecificationSet] (
    [ID_Specification] int IDENTITY(1,1) NOT NULL,
    [id_item] int  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Position] smallint  NOT NULL,
    [Quantity] smallint  NOT NULL,
    [IsAssembly] bit  NOT NULL,
    [IsDetail] bit  NOT NULL,
    [IsStandProd] bit  NOT NULL,
    [IsOtherProd] bit  NOT NULL,
    [IsMaterials] bit  NOT NULL
);
GO

-- Creating table 'tSpecification_CorrugSheathSet'
CREATE TABLE [dbo].[tSpecification_CorrugSheathSet] (
    [ID_SpecCorSh] int IDENTITY(1,1) NOT NULL,
    [ID_specification] int  NOT NULL,
    [ID_corrugsheath] int  NOT NULL,
    [tCorrugSheathID_corrugsheath] int  NOT NULL,
    [tSp_AssemblyID_Sp_Assembly] int  NOT NULL,
    [tSpecificationID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSpecification_BraidSet'
CREATE TABLE [dbo].[tSpecification_BraidSet] (
    [ID_SpecBr] int IDENTITY(1,1) NOT NULL,
    [ID_specification] int  NOT NULL,
    [ID_braid] int  NOT NULL,
    [tBraidID_braid] int  NOT NULL,
    [tSp_AssemblyID_Sp_Assembly] int  NOT NULL,
    [tSpecificationID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSpecification_GlassSet'
CREATE TABLE [dbo].[tSpecification_GlassSet] (
    [ID_SpecGl] int IDENTITY(1,1) NOT NULL,
    [ID_specification] int  NOT NULL,
    [ID_glass] nvarchar(max)  NOT NULL,
    [tGlassID_glass] int  NOT NULL,
    [tSp_AssemblyID_Sp_Assembly] int  NOT NULL,
    [tSpecificationID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSpecification_RingSet'
CREATE TABLE [dbo].[tSpecification_RingSet] (
    [ID_SpecRing] int IDENTITY(1,1) NOT NULL,
    [ID_specification] int  NOT NULL,
    [ID_ring] int  NOT NULL,
    [tRingID_ring] int  NOT NULL,
    [tSp_AssemblyID_Sp_Assembly] int  NOT NULL,
    [tSpecificationID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSp_AssemblySet'
CREATE TABLE [dbo].[tSp_AssemblySet] (
    [ID_Sp_Assembly] int IDENTITY(1,1) NOT NULL,
    [id_item_as] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Position] smallint  NOT NULL,
    [Quantity] smallint  NOT NULL
);
GO

-- Creating table 'tSpec_Sp_AssemblySet'
CREATE TABLE [dbo].[tSpec_Sp_AssemblySet] (
    [ID_Spec_Sp_Assembly] int IDENTITY(1,1) NOT NULL,
    [ID_Sp_Assembly] int  NOT NULL,
    [ID_specification] int  NOT NULL,
    [tSp_AssemblyID_Sp_Assembly] int  NOT NULL,
    [tSpecificationID_Specification] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_corrugsheath] in table 'tCorrugSheathSet'
ALTER TABLE [dbo].[tCorrugSheathSet]
ADD CONSTRAINT [PK_tCorrugSheathSet]
    PRIMARY KEY CLUSTERED ([ID_corrugsheath] ASC);
GO

-- Creating primary key on [ID_material] in table 'tMaterialSet'
ALTER TABLE [dbo].[tMaterialSet]
ADD CONSTRAINT [PK_tMaterialSet]
    PRIMARY KEY CLUSTERED ([ID_material] ASC);
GO

-- Creating primary key on [ID_glass] in table 'tGlassSet'
ALTER TABLE [dbo].[tGlassSet]
ADD CONSTRAINT [PK_tGlassSet]
    PRIMARY KEY CLUSTERED ([ID_glass] ASC);
GO

-- Creating primary key on [ID_braid] in table 'tBraidSet'
ALTER TABLE [dbo].[tBraidSet]
ADD CONSTRAINT [PK_tBraidSet]
    PRIMARY KEY CLUSTERED ([ID_braid] ASC);
GO

-- Creating primary key on [ID_ring] in table 'tRingSet'
ALTER TABLE [dbo].[tRingSet]
ADD CONSTRAINT [PK_tRingSet]
    PRIMARY KEY CLUSTERED ([ID_ring] ASC);
GO

-- Creating primary key on [ID_methose] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [PK_tMetHoseSet]
    PRIMARY KEY CLUSTERED ([ID_methose] ASC);
GO

-- Creating primary key on [ID_Specification] in table 'tSpecificationSet'
ALTER TABLE [dbo].[tSpecificationSet]
ADD CONSTRAINT [PK_tSpecificationSet]
    PRIMARY KEY CLUSTERED ([ID_Specification] ASC);
GO

-- Creating primary key on [ID_SpecCorSh] in table 'tSpecification_CorrugSheathSet'
ALTER TABLE [dbo].[tSpecification_CorrugSheathSet]
ADD CONSTRAINT [PK_tSpecification_CorrugSheathSet]
    PRIMARY KEY CLUSTERED ([ID_SpecCorSh] ASC);
GO

-- Creating primary key on [ID_SpecBr] in table 'tSpecification_BraidSet'
ALTER TABLE [dbo].[tSpecification_BraidSet]
ADD CONSTRAINT [PK_tSpecification_BraidSet]
    PRIMARY KEY CLUSTERED ([ID_SpecBr] ASC);
GO

-- Creating primary key on [ID_SpecGl] in table 'tSpecification_GlassSet'
ALTER TABLE [dbo].[tSpecification_GlassSet]
ADD CONSTRAINT [PK_tSpecification_GlassSet]
    PRIMARY KEY CLUSTERED ([ID_SpecGl] ASC);
GO

-- Creating primary key on [ID_SpecRing] in table 'tSpecification_RingSet'
ALTER TABLE [dbo].[tSpecification_RingSet]
ADD CONSTRAINT [PK_tSpecification_RingSet]
    PRIMARY KEY CLUSTERED ([ID_SpecRing] ASC);
GO

-- Creating primary key on [ID_Sp_Assembly] in table 'tSp_AssemblySet'
ALTER TABLE [dbo].[tSp_AssemblySet]
ADD CONSTRAINT [PK_tSp_AssemblySet]
    PRIMARY KEY CLUSTERED ([ID_Sp_Assembly] ASC);
GO

-- Creating primary key on [ID_Spec_Sp_Assembly] in table 'tSpec_Sp_AssemblySet'
ALTER TABLE [dbo].[tSpec_Sp_AssemblySet]
ADD CONSTRAINT [PK_tSpec_Sp_AssemblySet]
    PRIMARY KEY CLUSTERED ([ID_Spec_Sp_Assembly] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tMaterialID] in table 'tGlassSet'
ALTER TABLE [dbo].[tGlassSet]
ADD CONSTRAINT [FK_tGlasstMaterial]
    FOREIGN KEY ([tMaterialID])
    REFERENCES [dbo].[tMaterialSet]
        ([ID_material])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tGlasstMaterial'
CREATE INDEX [IX_FK_tGlasstMaterial]
ON [dbo].[tGlassSet]
    ([tMaterialID]);
GO

-- Creating foreign key on [tMaterialID] in table 'tBraidSet'
ALTER TABLE [dbo].[tBraidSet]
ADD CONSTRAINT [FK_tBraidtMaterial]
    FOREIGN KEY ([tMaterialID])
    REFERENCES [dbo].[tMaterialSet]
        ([ID_material])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tBraidtMaterial'
CREATE INDEX [IX_FK_tBraidtMaterial]
ON [dbo].[tBraidSet]
    ([tMaterialID]);
GO

-- Creating foreign key on [tMaterialID] in table 'tRingSet'
ALTER TABLE [dbo].[tRingSet]
ADD CONSTRAINT [FK_tRingtMaterial]
    FOREIGN KEY ([tMaterialID])
    REFERENCES [dbo].[tMaterialSet]
        ([ID_material])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tRingtMaterial'
CREATE INDEX [IX_FK_tRingtMaterial]
ON [dbo].[tRingSet]
    ([tMaterialID]);
GO

-- Creating foreign key on [tMaterialID] in table 'tCorrugSheathSet'
ALTER TABLE [dbo].[tCorrugSheathSet]
ADD CONSTRAINT [FK_tCorrugSheathtMaterial]
    FOREIGN KEY ([tMaterialID])
    REFERENCES [dbo].[tMaterialSet]
        ([ID_material])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tCorrugSheathtMaterial'
CREATE INDEX [IX_FK_tCorrugSheathtMaterial]
ON [dbo].[tCorrugSheathSet]
    ([tMaterialID]);
GO

-- Creating foreign key on [Specification_ID_Specification] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHoseSpecification]
    FOREIGN KEY ([Specification_ID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHoseSpecification'
CREATE INDEX [IX_FK_tMetHoseSpecification]
ON [dbo].[tMetHoseSet]
    ([Specification_ID_Specification]);
GO

-- Creating foreign key on [tCorrugSheathID_corrugsheath] in table 'tSpecification_CorrugSheathSet'
ALTER TABLE [dbo].[tSpecification_CorrugSheathSet]
ADD CONSTRAINT [FK_tSpecification_tCorrugSheathtCorrugSheath]
    FOREIGN KEY ([tCorrugSheathID_corrugsheath])
    REFERENCES [dbo].[tCorrugSheathSet]
        ([ID_corrugsheath])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecification_tCorrugSheathtCorrugSheath'
CREATE INDEX [IX_FK_tSpecification_tCorrugSheathtCorrugSheath]
ON [dbo].[tSpecification_CorrugSheathSet]
    ([tCorrugSheathID_corrugsheath]);
GO

-- Creating foreign key on [tBraidID_braid] in table 'tSpecification_BraidSet'
ALTER TABLE [dbo].[tSpecification_BraidSet]
ADD CONSTRAINT [FK_tSpecification_BraidtBraid]
    FOREIGN KEY ([tBraidID_braid])
    REFERENCES [dbo].[tBraidSet]
        ([ID_braid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecification_BraidtBraid'
CREATE INDEX [IX_FK_tSpecification_BraidtBraid]
ON [dbo].[tSpecification_BraidSet]
    ([tBraidID_braid]);
GO

-- Creating foreign key on [tGlassID_glass] in table 'tSpecification_GlassSet'
ALTER TABLE [dbo].[tSpecification_GlassSet]
ADD CONSTRAINT [FK_tGlasstSpecification_Glass]
    FOREIGN KEY ([tGlassID_glass])
    REFERENCES [dbo].[tGlassSet]
        ([ID_glass])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tGlasstSpecification_Glass'
CREATE INDEX [IX_FK_tGlasstSpecification_Glass]
ON [dbo].[tSpecification_GlassSet]
    ([tGlassID_glass]);
GO

-- Creating foreign key on [tRingID_ring] in table 'tSpecification_RingSet'
ALTER TABLE [dbo].[tSpecification_RingSet]
ADD CONSTRAINT [FK_tSpecification_RingtRing]
    FOREIGN KEY ([tRingID_ring])
    REFERENCES [dbo].[tRingSet]
        ([ID_ring])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecification_RingtRing'
CREATE INDEX [IX_FK_tSpecification_RingtRing]
ON [dbo].[tSpecification_RingSet]
    ([tRingID_ring]);
GO

-- Creating foreign key on [tSp_AssemblyID_Sp_Assembly] in table 'tSpecification_CorrugSheathSet'
ALTER TABLE [dbo].[tSpecification_CorrugSheathSet]
ADD CONSTRAINT [FK_tSp_AssemblytSpecification_tCorrugSheath]
    FOREIGN KEY ([tSp_AssemblyID_Sp_Assembly])
    REFERENCES [dbo].[tSp_AssemblySet]
        ([ID_Sp_Assembly])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSp_AssemblytSpecification_tCorrugSheath'
CREATE INDEX [IX_FK_tSp_AssemblytSpecification_tCorrugSheath]
ON [dbo].[tSpecification_CorrugSheathSet]
    ([tSp_AssemblyID_Sp_Assembly]);
GO

-- Creating foreign key on [tSp_AssemblyID_Sp_Assembly] in table 'tSpecification_BraidSet'
ALTER TABLE [dbo].[tSpecification_BraidSet]
ADD CONSTRAINT [FK_tSp_AssemblytSpecification_Braid]
    FOREIGN KEY ([tSp_AssemblyID_Sp_Assembly])
    REFERENCES [dbo].[tSp_AssemblySet]
        ([ID_Sp_Assembly])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSp_AssemblytSpecification_Braid'
CREATE INDEX [IX_FK_tSp_AssemblytSpecification_Braid]
ON [dbo].[tSpecification_BraidSet]
    ([tSp_AssemblyID_Sp_Assembly]);
GO

-- Creating foreign key on [tSp_AssemblyID_Sp_Assembly] in table 'tSpecification_GlassSet'
ALTER TABLE [dbo].[tSpecification_GlassSet]
ADD CONSTRAINT [FK_tSp_AssemblytSpecification_Glass]
    FOREIGN KEY ([tSp_AssemblyID_Sp_Assembly])
    REFERENCES [dbo].[tSp_AssemblySet]
        ([ID_Sp_Assembly])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSp_AssemblytSpecification_Glass'
CREATE INDEX [IX_FK_tSp_AssemblytSpecification_Glass]
ON [dbo].[tSpecification_GlassSet]
    ([tSp_AssemblyID_Sp_Assembly]);
GO

-- Creating foreign key on [tSp_AssemblyID_Sp_Assembly] in table 'tSpecification_RingSet'
ALTER TABLE [dbo].[tSpecification_RingSet]
ADD CONSTRAINT [FK_tSp_AssemblytSpecification_Ring]
    FOREIGN KEY ([tSp_AssemblyID_Sp_Assembly])
    REFERENCES [dbo].[tSp_AssemblySet]
        ([ID_Sp_Assembly])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSp_AssemblytSpecification_Ring'
CREATE INDEX [IX_FK_tSp_AssemblytSpecification_Ring]
ON [dbo].[tSpecification_RingSet]
    ([tSp_AssemblyID_Sp_Assembly]);
GO

-- Creating foreign key on [tSp_AssemblyID_Sp_Assembly] in table 'tSpec_Sp_AssemblySet'
ALTER TABLE [dbo].[tSpec_Sp_AssemblySet]
ADD CONSTRAINT [FK_tSp_AssemblytSpec_Sp_Assembly]
    FOREIGN KEY ([tSp_AssemblyID_Sp_Assembly])
    REFERENCES [dbo].[tSp_AssemblySet]
        ([ID_Sp_Assembly])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSp_AssemblytSpec_Sp_Assembly'
CREATE INDEX [IX_FK_tSp_AssemblytSpec_Sp_Assembly]
ON [dbo].[tSpec_Sp_AssemblySet]
    ([tSp_AssemblyID_Sp_Assembly]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tSpec_Sp_AssemblySet'
ALTER TABLE [dbo].[tSpec_Sp_AssemblySet]
ADD CONSTRAINT [FK_tSpecificationtSpec_Sp_Assembly]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtSpec_Sp_Assembly'
CREATE INDEX [IX_FK_tSpecificationtSpec_Sp_Assembly]
ON [dbo].[tSpec_Sp_AssemblySet]
    ([tSpecificationID_Specification]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tSpecification_CorrugSheathSet'
ALTER TABLE [dbo].[tSpecification_CorrugSheathSet]
ADD CONSTRAINT [FK_tSpecificationtSpecification_tCorrugSheath]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtSpecification_tCorrugSheath'
CREATE INDEX [IX_FK_tSpecificationtSpecification_tCorrugSheath]
ON [dbo].[tSpecification_CorrugSheathSet]
    ([tSpecificationID_Specification]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tSpecification_BraidSet'
ALTER TABLE [dbo].[tSpecification_BraidSet]
ADD CONSTRAINT [FK_tSpecificationtSpecification_Braid]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtSpecification_Braid'
CREATE INDEX [IX_FK_tSpecificationtSpecification_Braid]
ON [dbo].[tSpecification_BraidSet]
    ([tSpecificationID_Specification]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tSpecification_GlassSet'
ALTER TABLE [dbo].[tSpecification_GlassSet]
ADD CONSTRAINT [FK_tSpecificationtSpecification_Glass]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtSpecification_Glass'
CREATE INDEX [IX_FK_tSpecificationtSpecification_Glass]
ON [dbo].[tSpecification_GlassSet]
    ([tSpecificationID_Specification]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tSpecification_RingSet'
ALTER TABLE [dbo].[tSpecification_RingSet]
ADD CONSTRAINT [FK_tSpecificationtSpecification_Ring]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtSpecification_Ring'
CREATE INDEX [IX_FK_tSpecificationtSpecification_Ring]
ON [dbo].[tSpecification_RingSet]
    ([tSpecificationID_Specification]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------