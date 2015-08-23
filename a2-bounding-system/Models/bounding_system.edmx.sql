
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/02/2015 18:43:10
-- Generated from EDMX file: C:\Users\LeXteR\Desktop\a2-bounding-system\a2-bounding-system\Models\bounding_system.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Bounding_System];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Replays_Bound]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Replays] DROP CONSTRAINT [FK_Replays_Bound];
GO
IF OBJECT_ID(N'[dbo].[FK_Top_Five_Scores_Replays]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Top_Five_Scores] DROP CONSTRAINT [FK_Top_Five_Scores_Replays];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Total_Points_Top_Five_Scores]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User_Total_Points] DROP CONSTRAINT [FK_User_Total_Points_Top_Five_Scores];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Bounds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bounds];
GO
IF OBJECT_ID(N'[dbo].[Profiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profiles];
GO
IF OBJECT_ID(N'[dbo].[Replays]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Replays];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Top_Five_Scores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Top_Five_Scores];
GO
IF OBJECT_ID(N'[dbo].[User_Total_Points]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User_Total_Points];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Bounds'
CREATE TABLE [dbo].[Bounds] (
    [bound_id] int IDENTITY(1,1) NOT NULL,
    [bound_name] varchar(40)  NULL,
    [bound_high_score] int  NULL,
    [bound_difficulty] int  NULL,
    [bound_obstacles] int  NULL
);
GO

-- Creating table 'Profiles'
CREATE TABLE [dbo].[Profiles] (
    [player_id] int IDENTITY(1,1) NOT NULL,
    [online_name] varchar(30)  NOT NULL,
    [first_name] varchar(30)  NULL,
    [last_name] varchar(30)  NULL,
    [server] varchar(30)  NULL,
    [gender] nvarchar(max)  NOT NULL,
    [age] int  NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Replays'
CREATE TABLE [dbo].[Replays] (
    [replay_id] int  NOT NULL,
    [bound_id] int  NOT NULL,
    [replay_name] varbinary(35)  NOT NULL,
    [replay_difficulty] int  NULL,
    [replay_time] decimal(18,0)  NOT NULL,
    [replay_date_complete] datetime  NOT NULL,
    [submitter] varchar(35)  NOT NULL,
    [replay_player_name1] varchar(35)  NOT NULL,
    [replay_player_name2] varchar(35)  NULL,
    [replay_player_name3] varchar(35)  NULL,
    [replay_player_name4] varchar(35)  NULL,
    [replay_player_name5] varchar(35)  NULL,
    [replay_player_name6] varchar(35)  NULL,
    [replay_player_name7] varchar(35)  NULL,
    [replay_player_name8] varchar(35)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Top_Five_Scores'
CREATE TABLE [dbo].[Top_Five_Scores] (
    [bound_high_scores] int  NOT NULL,
    [replay_id] int  NULL,
    [high_score1] decimal(18,0)  NULL,
    [high_score2] decimal(18,0)  NULL,
    [high_score3] decimal(18,0)  NULL,
    [high_score4] decimal(18,0)  NULL,
    [high_score5] decimal(18,0)  NULL
);
GO

-- Creating table 'User_Total_Points'
CREATE TABLE [dbo].[User_Total_Points] (
    [points_id] int  NOT NULL,
    [bound_high_score_id] int  NULL,
    [total_points] decimal(18,0)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [bound_id] in table 'Bounds'
ALTER TABLE [dbo].[Bounds]
ADD CONSTRAINT [PK_Bounds]
    PRIMARY KEY CLUSTERED ([bound_id] ASC);
GO

-- Creating primary key on [player_id], [online_name] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [PK_Profiles]
    PRIMARY KEY CLUSTERED ([player_id], [online_name] ASC);
GO

-- Creating primary key on [replay_id] in table 'Replays'
ALTER TABLE [dbo].[Replays]
ADD CONSTRAINT [PK_Replays]
    PRIMARY KEY CLUSTERED ([replay_id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [bound_high_scores] in table 'Top_Five_Scores'
ALTER TABLE [dbo].[Top_Five_Scores]
ADD CONSTRAINT [PK_Top_Five_Scores]
    PRIMARY KEY CLUSTERED ([bound_high_scores] ASC);
GO

-- Creating primary key on [points_id] in table 'User_Total_Points'
ALTER TABLE [dbo].[User_Total_Points]
ADD CONSTRAINT [PK_User_Total_Points]
    PRIMARY KEY CLUSTERED ([points_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [bound_id] in table 'Replays'
ALTER TABLE [dbo].[Replays]
ADD CONSTRAINT [FK_Replays_Bound]
    FOREIGN KEY ([bound_id])
    REFERENCES [dbo].[Bounds]
        ([bound_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Replays_Bound'
CREATE INDEX [IX_FK_Replays_Bound]
ON [dbo].[Replays]
    ([bound_id]);
GO

-- Creating foreign key on [replay_id] in table 'Top_Five_Scores'
ALTER TABLE [dbo].[Top_Five_Scores]
ADD CONSTRAINT [FK_Top_Five_Scores_Replays]
    FOREIGN KEY ([replay_id])
    REFERENCES [dbo].[Replays]
        ([replay_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Top_Five_Scores_Replays'
CREATE INDEX [IX_FK_Top_Five_Scores_Replays]
ON [dbo].[Top_Five_Scores]
    ([replay_id]);
GO

-- Creating foreign key on [bound_high_score_id] in table 'User_Total_Points'
ALTER TABLE [dbo].[User_Total_Points]
ADD CONSTRAINT [FK_User_Total_Points_Top_Five_Scores]
    FOREIGN KEY ([bound_high_score_id])
    REFERENCES [dbo].[Top_Five_Scores]
        ([bound_high_scores])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Total_Points_Top_Five_Scores'
CREATE INDEX [IX_FK_User_Total_Points_Top_Five_Scores]
ON [dbo].[User_Total_Points]
    ([bound_high_score_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------