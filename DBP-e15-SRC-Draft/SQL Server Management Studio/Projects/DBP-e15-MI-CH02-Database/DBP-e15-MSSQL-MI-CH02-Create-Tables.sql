/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/ 
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Morgan Importing [MIS_CH02] Database Create Tables							*/
/*																				*/
/*	These are the Microsoft SQL Server 2016/2017 SQL code solutions				*/
/*																				*/
/********************************************************************************/
/*																				*/
/*	NOTE:  These SQL Statements use the following surrogate keys:				*/
/*																				*/
/*		ITEM:		Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*		SHIPMENT:	Start at 1, Increment by 1 - IDENTITY (1, 1)				*/
/*																				*/
/********************************************************************************/

USE MI_CH02
GO

CREATE TABLE ITEM (
	ItemID					Int					NOT NULL IDENTITY (1,1),
	[Description]			Varchar(255)		NOT NULL,
	PurchaseDate			Date				NOT NULL,
	Store					Char(50)			NOT NULL,
	City					Char(35)			NOT NULL,
	Quantity				Int					NOT NULL,
	LocalCurrencyAmount		Numeric(18,2)		NOT	NULL,
	ExchangeRate			Numeric(12,6)		NOT NULL,
	CONSTRAINT			Purchase_Item_PK		PRIMARY KEY (ItemID),
	);

CREATE TABLE SHIPMENT (
	ShipmentID				Int					NOT NULL IDENTITY (1,1),
	ShipperName				Char(35)			NOT NULL,
	ShipperInvoiceNumber	Int					NOT NULL,
	DepartureDate			Date				NULL,
	ArrivalDate				Date				NULL,
	InsuredValue			Numeric(12,2)		NOT NULL,
	CONSTRAINT			Shipment_PK				PRIMARY KEY (ShipmentID)
	);
	
CREATE TABLE SHIPMENT_ITEM (
	ShipmentID				Int					NOT NULL,
	ShipmentItemID			Int					NOT NULL,
	ItemID					Int					NOT NULL,
	Value					Numeric(12,2)		NOT NULL,
	CONSTRAINT			ShipmentItem_PK			PRIMARY KEY(ShipmentID, ShipmentItemID),
	CONSTRAINT  		Ship_Item_Ship_FK 		FOREIGN KEY(ShipmentID)
							REFERENCES SHIPMENT(ShipmentID)
								ON UPDATE NO ACTION
								ON DELETE CASCADE,
	CONSTRAINT  		Ship_Item_Item_FK		FOREIGN KEY(ItemID)
							REFERENCES ITEM(ItemID)
								ON UPDATE NO ACTION
								ON DELETE CASCADE
	);

/********************************************************************************/
