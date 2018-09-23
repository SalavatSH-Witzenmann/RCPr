
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/23/2018 21:19:02
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tCorrugSheathSet'
CREATE TABLE [dbo].[tCorrugSheathSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
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
    [ID] int IDENTITY(1,1) NOT NULL,
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
    [ID] int IDENTITY(1,1) NOT NULL,
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
    [ID] int IDENTITY(1,1) NOT NULL,
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
    [ID] int IDENTITY(1,1) NOT NULL,
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
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tMetHoseSet'
CREATE TABLE [dbo].[tMetHoseSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [DN] smallint  NOT NULL,
    [PN] float  NOT NULL,
    [NamePrimary] nvarchar(max)  NULL,
    [NameSecondary] nvarchar(max)  NULL,
    [PHydTest] float  NULL,
    [PPneumTest] float  NULL,
    [Description] nvarchar(max)  NULL,
    [Executor] nvarchar(max)  NULL,
    [tCorrugSheathID] int  NULL,
    [tBraidID] int  NULL,
    [tGlass_ID] int  NULL,
    [tRing_ID] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'tCorrugSheathSet'
ALTER TABLE [dbo].[tCorrugSheathSet]
ADD CONSTRAINT [PK_tCorrugSheathSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tMaterialSet'
ALTER TABLE [dbo].[tMaterialSet]
ADD CONSTRAINT [PK_tMaterialSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tGlassSet'
ALTER TABLE [dbo].[tGlassSet]
ADD CONSTRAINT [PK_tGlassSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tBraidSet'
ALTER TABLE [dbo].[tBraidSet]
ADD CONSTRAINT [PK_tBraidSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tRingSet'
ALTER TABLE [dbo].[tRingSet]
ADD CONSTRAINT [PK_tRingSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [PK_tMetHoseSet]
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
        ([ID])
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
        ([ID])
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
        ([ID])
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
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tCorrugSheathtMaterial'
CREATE INDEX [IX_FK_tCorrugSheathtMaterial]
ON [dbo].[tCorrugSheathSet]
    ([tMaterialID]);
GO

-- Creating foreign key on [tCorrugSheathID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetCorrugSheath]
    FOREIGN KEY ([tCorrugSheathID])
    REFERENCES [dbo].[tCorrugSheathSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetCorrugSheath'
CREATE INDEX [IX_FK_tMetHosetCorrugSheath]
ON [dbo].[tMetHoseSet]
    ([tCorrugSheathID]);
GO

-- Creating foreign key on [tBraidID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetBraid]
    FOREIGN KEY ([tBraidID])
    REFERENCES [dbo].[tBraidSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetBraid'
CREATE INDEX [IX_FK_tMetHosetBraid]
ON [dbo].[tMetHoseSet]
    ([tBraidID]);
GO

-- Creating foreign key on [tGlass_ID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetGlass]
    FOREIGN KEY ([tGlass_ID])
    REFERENCES [dbo].[tGlassSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetGlass'
CREATE INDEX [IX_FK_tMetHosetGlass]
ON [dbo].[tMetHoseSet]
    ([tGlass_ID]);
GO

-- Creating foreign key on [tRing_ID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tRingtMetHose]
    FOREIGN KEY ([tRing_ID])
    REFERENCES [dbo].[tRingSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tRingtMetHose'
CREATE INDEX [IX_FK_tRingtMetHose]
ON [dbo].[tMetHoseSet]
    ([tRing_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------