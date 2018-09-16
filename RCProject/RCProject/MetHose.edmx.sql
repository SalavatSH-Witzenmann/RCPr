
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/16/2018 23:09:08
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
IF OBJECT_ID(N'[dbo].[FK_tMetHosetBraid]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHosetBraid];
GO
IF OBJECT_ID(N'[dbo].[FK_tMetHosetGlass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHosetGlass];
GO
IF OBJECT_ID(N'[dbo].[FK_tMetHosetRing]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHosetRing];
GO
IF OBJECT_ID(N'[dbo].[FK_tMetHosetCorrugSheath]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tMetHoseSet] DROP CONSTRAINT [FK_tMetHosetCorrugSheath];
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
    [Description] nvarchar(max)  NULL
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
    [DN] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Dout] nvarchar(max)  NOT NULL,
    [Th] nvarchar(max)  NOT NULL,
    [Ls] nvarchar(max)  NOT NULL,
    [Executor] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tBraidSet'
CREATE TABLE [dbo].[tBraidSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [DN] nvarchar(max)  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Dout] nvarchar(max)  NOT NULL,
    [Din] nvarchar(max)  NOT NULL,
    [NumbStrands] nvarchar(max)  NOT NULL,
    [NymbThreads] nvarchar(max)  NOT NULL,
    [DThreads] nvarchar(max)  NOT NULL,
    [AngleWeaving] nvarchar(max)  NOT NULL,
    [Executor] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tRingSet'
CREATE TABLE [dbo].[tRingSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Designation] nvarchar(max)  NOT NULL,
    [DN] nvarchar(max)  NOT NULL,
    [PN] nvarchar(max)  NOT NULL,
    [Dout] nvarchar(max)  NOT NULL,
    [Th] nvarchar(max)  NOT NULL,
    [LN] nvarchar(max)  NOT NULL,
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
    [tMaterialID] int  NOT NULL
);
GO

-- Creating table 'tMetHoseSet'
CREATE TABLE [dbo].[tMetHoseSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [tCorrugSheathID] int  NOT NULL,
    [tBraidID] int  NULL,
    [tGlassID] int  NULL,
    [tCorrugSheathID1] int  NULL,
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

-- Creating foreign key on [tGlassID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetGlass]
    FOREIGN KEY ([tGlassID])
    REFERENCES [dbo].[tGlassSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetGlass'
CREATE INDEX [IX_FK_tMetHosetGlass]
ON [dbo].[tMetHoseSet]
    ([tGlassID]);
GO

-- Creating foreign key on [tRing_ID] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetRing]
    FOREIGN KEY ([tRing_ID])
    REFERENCES [dbo].[tRingSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetRing'
CREATE INDEX [IX_FK_tMetHosetRing]
ON [dbo].[tMetHoseSet]
    ([tRing_ID]);
GO

-- Creating foreign key on [tCorrugSheathID1] in table 'tMetHoseSet'
ALTER TABLE [dbo].[tMetHoseSet]
ADD CONSTRAINT [FK_tMetHosetCorrugSheath]
    FOREIGN KEY ([tCorrugSheathID1])
    REFERENCES [dbo].[tCorrugSheathSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tMetHosetCorrugSheath'
CREATE INDEX [IX_FK_tMetHosetCorrugSheath]
ON [dbo].[tMetHoseSet]
    ([tCorrugSheathID1]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------