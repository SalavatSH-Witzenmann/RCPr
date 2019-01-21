
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/21/2019 23:30:49
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
IF OBJECT_ID(N'[dbo].[FK_tLengthtCorrugSheath]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tLengthSet] DROP CONSTRAINT [FK_tLengthtCorrugSheath];
GO
IF OBJECT_ID(N'[dbo].[FK_tMetHosetSpecification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHosetSpecification];
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
IF OBJECT_ID(N'[dbo].[tLengthSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tLengthSet];
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
    [tSpecification_ID_Specification] int  NOT NULL
);
GO

-- Creating table 'tSpecificationSet'
CREATE TABLE [dbo].[tSpecificationSet] (
    [ID_Specification] int IDENTITY(1,1) NOT NULL,
    [AssemblyG] int  NULL,
    [DetailG] int  NULL,
    [StandartProductsG] int  NULL,
    [OtherProductsG] int  NULL,
    [KitsG] int  NULL,
    [dateT] datetime  NOT NULL,
    [Drawing] varbinary(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Executor] nvarchar(max)  NULL,
    [tDetailSpID] int  NOT NULL
);
GO

-- Creating table 'tLengthSet'
CREATE TABLE [dbo].[tLengthSet] (
    [ID_length] int IDENTITY(1,1) NOT NULL,
    [LN] float  NOT NULL,
    [tCorrugSheathID_corrugsheath] int  NOT NULL
);
GO

-- Creating table 'tAssemblySpSet'
CREATE TABLE [dbo].[tAssemblySpSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AssemblyRef] int  NULL,
    [PosAssembly] int  NULL,
    [NameAss] nvarchar(max)  NULL,
    [QuantityAss] int  NOT NULL,
    [Detail] int  NULL,
    [StandProdAss] int  NULL,
    [OtherProdAss] int  NULL,
    [Kits] int  NULL,
    [Description] nvarchar(max)  NULL,
    [tBuferID] int  NULL
);
GO

-- Creating table 'tDetailSpSet'
CREATE TABLE [dbo].[tDetailSpSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PosDetail] int  NULL,
    [ID_Object] int  NOT NULL,
    [TypeObject] nvarchar(max)  NOT NULL,
    [NameDet] nvarchar(max)  NULL,
    [Quantity] int  NOT NULL
);
GO

-- Creating table 'tAdapterSet'
CREATE TABLE [dbo].[tAdapterSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [NumbElement] nvarchar(max)  NOT NULL,
    [tDetailSpID] int  NOT NULL,
    [tLengthID_length] int  NULL,
    [tBraidID_braid] int  NULL,
    [tRingID_ring] int  NULL,
    [tGlassID_glass] int  NULL
);
GO

-- Creating table 'tBuferSet'
CREATE TABLE [dbo].[tBuferSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [D1] smallint  NULL,
    [D2] smallint  NULL,
    [D3] smallint  NULL,
    [D4] smallint  NULL,
    [D5] smallint  NULL,
    [D6] smallint  NULL,
    [D7] smallint  NULL,
    [D8] smallint  NULL,
    [D9] smallint  NULL,
    [exp] nvarchar(max)  NULL
);
GO

-- Creating table 'tAsDetSet'
CREATE TABLE [dbo].[tAsDetSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [tAssemblySpID] int  NOT NULL,
    [tDetailSpID] int  NOT NULL
);
GO

-- Creating table 'tAsSpSet'
CREATE TABLE [dbo].[tAsSpSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [tAssemblySpID] int  NOT NULL,
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

-- Creating primary key on [ID_length] in table 'tLengthSet'
ALTER TABLE [dbo].[tLengthSet]
ADD CONSTRAINT [PK_tLengthSet]
    PRIMARY KEY CLUSTERED ([ID_length] ASC);
GO

-- Creating primary key on [ID] in table 'tAssemblySpSet'
ALTER TABLE [dbo].[tAssemblySpSet]
ADD CONSTRAINT [PK_tAssemblySpSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tDetailSpSet'
ALTER TABLE [dbo].[tDetailSpSet]
ADD CONSTRAINT [PK_tDetailSpSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [PK_tAdapterSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tBuferSet'
ALTER TABLE [dbo].[tBuferSet]
ADD CONSTRAINT [PK_tBuferSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tAsDetSet'
ALTER TABLE [dbo].[tAsDetSet]
ADD CONSTRAINT [PK_tAsDetSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tAsSpSet'
ALTER TABLE [dbo].[tAsSpSet]
ADD CONSTRAINT [PK_tAsSpSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
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

-- Creating foreign key on [tCorrugSheathID_corrugsheath] in table 'tLengthSet'
ALTER TABLE [dbo].[tLengthSet]
ADD CONSTRAINT [FK_tLengthtCorrugSheath]
    FOREIGN KEY ([tCorrugSheathID_corrugsheath])
    REFERENCES [dbo].[tCorrugSheathSet]
        ([ID_corrugsheath])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tLengthtCorrugSheath'
CREATE INDEX [IX_FK_tLengthtCorrugSheath]
ON [dbo].[tLengthSet]
    ([tCorrugSheathID_corrugsheath]);
GO

-- Creating foreign key on [tSpecification_ID_Specification] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetSpecification]
    FOREIGN KEY ([tSpecification_ID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetSpecification'
CREATE INDEX [IX_FK_tMetHosetSpecification]
ON [dbo].[tMetHoseSet]
    ([tSpecification_ID_Specification]);
GO

-- Creating foreign key on [tDetailSpID] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [FK_tDetailSptAdapter]
    FOREIGN KEY ([tDetailSpID])
    REFERENCES [dbo].[tDetailSpSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tDetailSptAdapter'
CREATE INDEX [IX_FK_tDetailSptAdapter]
ON [dbo].[tAdapterSet]
    ([tDetailSpID]);
GO

-- Creating foreign key on [tDetailSpID] in table 'tSpecificationSet'
ALTER TABLE [dbo].[tSpecificationSet]
ADD CONSTRAINT [FK_tDetailSptSpecification]
    FOREIGN KEY ([tDetailSpID])
    REFERENCES [dbo].[tDetailSpSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tDetailSptSpecification'
CREATE INDEX [IX_FK_tDetailSptSpecification]
ON [dbo].[tSpecificationSet]
    ([tDetailSpID]);
GO

-- Creating foreign key on [tBuferID] in table 'tAssemblySpSet'
ALTER TABLE [dbo].[tAssemblySpSet]
ADD CONSTRAINT [FK_tAssemblySptBufer]
    FOREIGN KEY ([tBuferID])
    REFERENCES [dbo].[tBuferSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tAssemblySptBufer'
CREATE INDEX [IX_FK_tAssemblySptBufer]
ON [dbo].[tAssemblySpSet]
    ([tBuferID]);
GO

-- Creating foreign key on [tAssemblySpID] in table 'tAsDetSet'
ALTER TABLE [dbo].[tAsDetSet]
ADD CONSTRAINT [FK_tAssemblySptAsDet]
    FOREIGN KEY ([tAssemblySpID])
    REFERENCES [dbo].[tAssemblySpSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tAssemblySptAsDet'
CREATE INDEX [IX_FK_tAssemblySptAsDet]
ON [dbo].[tAsDetSet]
    ([tAssemblySpID]);
GO

-- Creating foreign key on [tDetailSpID] in table 'tAsDetSet'
ALTER TABLE [dbo].[tAsDetSet]
ADD CONSTRAINT [FK_tDetailSptAsDet]
    FOREIGN KEY ([tDetailSpID])
    REFERENCES [dbo].[tDetailSpSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tDetailSptAsDet'
CREATE INDEX [IX_FK_tDetailSptAsDet]
ON [dbo].[tAsDetSet]
    ([tDetailSpID]);
GO

-- Creating foreign key on [tAssemblySpID] in table 'tAsSpSet'
ALTER TABLE [dbo].[tAsSpSet]
ADD CONSTRAINT [FK_tAssemblySptAsSp]
    FOREIGN KEY ([tAssemblySpID])
    REFERENCES [dbo].[tAssemblySpSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tAssemblySptAsSp'
CREATE INDEX [IX_FK_tAssemblySptAsSp]
ON [dbo].[tAsSpSet]
    ([tAssemblySpID]);
GO

-- Creating foreign key on [tSpecificationID_Specification] in table 'tAsSpSet'
ALTER TABLE [dbo].[tAsSpSet]
ADD CONSTRAINT [FK_tSpecificationtAsSp]
    FOREIGN KEY ([tSpecificationID_Specification])
    REFERENCES [dbo].[tSpecificationSet]
        ([ID_Specification])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tSpecificationtAsSp'
CREATE INDEX [IX_FK_tSpecificationtAsSp]
ON [dbo].[tAsSpSet]
    ([tSpecificationID_Specification]);
GO

-- Creating foreign key on [tLengthID_length] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [FK_tAdaptertLength]
    FOREIGN KEY ([tLengthID_length])
    REFERENCES [dbo].[tLengthSet]
        ([ID_length])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tAdaptertLength'
CREATE INDEX [IX_FK_tAdaptertLength]
ON [dbo].[tAdapterSet]
    ([tLengthID_length]);
GO

-- Creating foreign key on [tBraidID_braid] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [FK_tBraidtAdapter]
    FOREIGN KEY ([tBraidID_braid])
    REFERENCES [dbo].[tBraidSet]
        ([ID_braid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tBraidtAdapter'
CREATE INDEX [IX_FK_tBraidtAdapter]
ON [dbo].[tAdapterSet]
    ([tBraidID_braid]);
GO

-- Creating foreign key on [tRingID_ring] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [FK_tRingtAdapter]
    FOREIGN KEY ([tRingID_ring])
    REFERENCES [dbo].[tRingSet]
        ([ID_ring])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tRingtAdapter'
CREATE INDEX [IX_FK_tRingtAdapter]
ON [dbo].[tAdapterSet]
    ([tRingID_ring]);
GO

-- Creating foreign key on [tGlassID_glass] in table 'tAdapterSet'
ALTER TABLE [dbo].[tAdapterSet]
ADD CONSTRAINT [FK_tGlasstAdapter]
    FOREIGN KEY ([tGlassID_glass])
    REFERENCES [dbo].[tGlassSet]
        ([ID_glass])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tGlasstAdapter'
CREATE INDEX [IX_FK_tGlasstAdapter]
ON [dbo].[tAdapterSet]
    ([tGlassID_glass]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------