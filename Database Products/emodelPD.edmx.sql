
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/02/2020 13:03:26
-- Generated from EDMX file: C:\Users\Administrator\Desktop\Database Products\Database Products\emodelPD.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Pr_001];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProductMaintenanceWork]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MaintenanceWorkSet] DROP CONSTRAINT [FK_ProductMaintenanceWork];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductSet];
GO
IF OBJECT_ID(N'[dbo].[MaintenanceWorkSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaintenanceWorkSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ProductSet'
CREATE TABLE [dbo].[ProductSet] (
    [Id] uniqueidentifier  NOT NULL,
    [Number] int  NOT NULL,
    [Serie] nvarchar(max)  NOT NULL,
    [ProduceDate] datetime  NOT NULL,
    [SaleDate] datetime  NOT NULL,
    [Prise] int  NOT NULL,
    [SailorName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MaintenanceWorkSet'
CREATE TABLE [dbo].[MaintenanceWorkSet] (
    [Id] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Data] datetime  NOT NULL,
    [WorkersId] int  NOT NULL,
    [Product_Id] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [PK_ProductSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaintenanceWorkSet'
ALTER TABLE [dbo].[MaintenanceWorkSet]
ADD CONSTRAINT [PK_MaintenanceWorkSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Product_Id] in table 'MaintenanceWorkSet'
ALTER TABLE [dbo].[MaintenanceWorkSet]
ADD CONSTRAINT [FK_ProductMaintenanceWork]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductMaintenanceWork'
CREATE INDEX [IX_FK_ProductMaintenanceWork]
ON [dbo].[MaintenanceWorkSet]
    ([Product_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------