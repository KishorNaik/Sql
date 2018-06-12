-- System procedures
--

EXEC sp_help 'dbo.c' -- you can specify table name + proc name + function + trigger name

EXEC sp_helptext 'dbo.uspGetSales' --you can specify procedure name + function name

-- get List of All Columns
EXEC Sp_Columns 'Person'

-- Get list of Current Database
EXEC Sp_Tables

-- Rename Table
EXEC sp_rename 'Sales.SalesTerritory', 'SalesTerr'
-- Rename Columns
EXEC sp_rename 'Sales.SalesTerritory.TerritoryID', 'TerrID', 'COLUMN'

-- Rename Database Name
EXEC sp_renamedb 'Accounting', 'Financial';
-- List Of Database
EXEC sp_helpDb


SELECT * from sysobjects

-- Get Column List
select syscolumns.name as 'Columns Name',SysTypes.name as 'Data Type',isnullable as 'Allow null',syscolumns.length as 'length' 
from syscolumns 
INNER JOIN
Sys.sysTypes
	on 
		sysColumns.xtype=sys.systypes.xtype
where id in
 (SELECT id from sysobjects where name='Person')


 -- List of All Object
SELECT id,* from sysobjects

-- List of Database
SELECT name as 'Databases Name',create_date as 'Create Date' FROM sys.Databases

-- List of Procedures
SELECT name as 'Procedures Name' FROM sys.procedures

-- List of Tables
SELECT name as 'Tables' FROM sys.tables


-- List of Views
SELECT name as 'Views Name' FROM sys.views

-- List of Trigger
SELECT name as 'Trigger Name' FROM sys.triggers 

-- List of Function
SELECT id,name from sysobjects 
	WHERE xtype='FN'
