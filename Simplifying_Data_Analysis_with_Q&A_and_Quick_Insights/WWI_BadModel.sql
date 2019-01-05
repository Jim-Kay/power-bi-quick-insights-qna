GO
PRINT N'Creating [BadModel]...';


GO
CREATE SCHEMA [BadModel]
    AUTHORIZATION [dbo];


GO
PRINT N'Creating [BadModel].[VW_DIM_EMP]...';


GO
CREATE VIEW [BadModel].[VW_DIM_EMP]
AS 
SELECT
  [Employee Key]    AS SKEY_EMP,
  [WWI Employee ID] AS EMPLID,
  [Employee]        AS EMP_NM,
  [Preferred Name]  AS EMP_PREF_NM,
  [Is Salesperson]  AS SLS_PRS_TF,
  [Photo]           AS PHOTO,
  [Valid From]      AS DT_FRM,
  [Valid To]        AS DT_TO,
  [Lineage Key]     AS LINEAGE_KEY
FROM [Dimension].[Employee]
GO
PRINT N'Creating [BadModel].[VW_DIM_DATE]...';


GO
CREATE VIEW [BadModel].[VW_DIM_DATE]
AS
SELECT
  [Date]                  AS SKEY_DT,
  [Day Number]            AS DAY_NUM,
  [Day]                   AS [DAY],
  [Month]                 AS MNTH_NM,
  [Short Month]           AS MNTH_NM_SHRT,
  [Calendar Month Number] AS CAL_MNTH_NUM,
  [Calendar Month Label]  AS CAL_MNTH_LBL,
  [Calendar Year]         AS CAL_YR,
  [Calendar Year Label]   AS CAL_YR_LBL,
  [Fiscal Month Number]   AS FSCL_MNTH_NUM,
  [Fiscal Month Label]    AS FSCL_MNTH_LBL,
  [Fiscal Year]           AS FSCL_YR,
  [Fiscal Year Label]     AS FSCL_YR_LBL,
  [ISO Week Number]       AS ISO_WK_NUM
FROM [Dimension].[Date]
GO
PRINT N'Creating [BadModel].[VW_DIM_CUST]...';


GO
CREATE VIEW [BadModel].[VW_DIM_CUST]
	AS 
SELECT 
  [Customer Key]     AS SKEY_CUST,
  [WWI Customer ID]  AS CUST_ID,
  [Customer]         AS CUST_NAME,
  [Bill To Customer] AS BILL2CUST,
  [Category]         AS CATEGORY,
  [Buying Group]     AS BUY_GRP,
  [Primary Contact]  AS MAIN_CONTACT,
  [Postal Code]      AS ZIP_POSTAL,
  [Valid From]       AS DT_FRM,
  [Valid To]         AS DT_TO,
  [Lineage Key]      AS LINEAGE_KEY
FROM [Dimension].[Customer]
GO
PRINT N'Creating [BadModel].[VW_DIM_CITY]...';


GO
CREATE VIEW [BadModel].[VW_DIM_CITY]
AS
SELECT
  [City Key]                   AS SKEY_CITY,
  [WWI City ID]                AS CITY_ID,
  [City]                       AS CITY_NAME,
  [State Province]             AS STATE_OR_PROV,
  [Country]                    AS CTRY,
  [Continent]                  AS CONT,
  [Sales Territory]            AS SLS_TERR,
  [Region]                     AS REG,
  [Subregion]                  AS SUBREG,
  [Location]                   AS LOC,
  [Latest Recorded Population] AS POP_SIZE,
  [Valid From]                 AS DT_FRM,
  [Valid To]                   AS DT_TO,
  [Lineage Key]                AS LINEAGE_KEY
FROM [Dimension].[City]
GO
PRINT N'Creating [BadModel].[VW_FACT_TRANS]...';


GO
CREATE VIEW [BadModel].[VW_FACT_TRANS]
AS
SELECT
  [Transaction Key]             AS KEY_TRANS,
  [Date Key]                    AS SKEY_DT,
  [Customer Key]                AS SKEY_CUST,
  [Bill To Customer Key]        AS SKEY_BL2CUST,
  [Supplier Key]                AS SKEY_SUP,
  [Transaction Type Key]        AS SKEY_TRANS_TYP,
  [Payment Method Key]          AS SKEY_PMT_METH,
  [WWI Customer Transaction ID] AS CUST_TRANS_ID,
  [WWI Supplier Transaction ID] AS SUPP_TRANS_ID,
  [WWI Invoice ID]              AS INVC_ID,
  [WWI Purchase Order ID]       AS PO_ID,
  [Supplier Invoice Number]     AS SUP_INVC_NUM,
  [Total Excluding Tax]         AS TOT_EXC_TX,
  [Tax Amount]                  AS TX_AMMT,
  [Total Including Tax]         AS TOT_INC_TX,
  [Outstanding Balance]         AS RMNG_BAL,
  [Is Finalized]                AS TRNS_FIN_TF,
  [Lineage Key]                 AS LINEAGE_KEY
FROM [Fact].[Transaction]
GO
PRINT N'Creating [BadModel].[VW_FACT_STK_HOLD]...';


GO
CREATE VIEW [BadModel].[VW_FACT_STK_HOLD]
AS
SELECT
  [Stock Holding Key]       AS KEY_STK_HLD,
  [Stock Item Key]          AS SKEY_STK_ITM,
  [Quantity On Hand]        AS QTY_ON_HAND,
  [Bin Location]            AS BIN_LOC,
  [Last Stocktake Quantity] AS LAST_STKTK_QTY,
  [Last Cost Price]         AS LAST_CST_PRICE,
  [Reorder Level]           AS RPT_ORD_LVL,
  [Target Stock Level]      AS TGT_STK_LVL,
  [Lineage Key]             AS LINEAGE_KEY
FROM [Fact].[Stock Holding]
GO
PRINT N'Creating [BadModel].[VW_FACT_SALE]...';


GO
CREATE VIEW [BadModel].[VW_FACT_SALE]
AS
SELECT
  [Sale Key]             AS KEY_SALE,
  [City Key]             AS SKEY_CITY,
  [Customer Key]         AS SKEY_CUST,
  [Bill To Customer Key] AS SKEY_BILL_TO_CUST,
  [Stock Item Key]       AS SKEY_STK_ITEM,
  [Invoice Date Key]     AS SKEY_DT_INVC,
  [Delivery Date Key]    AS SKEY_DT_DELIV,
  [Salesperson Key]      AS SKEY_EMP_SLS_PER,
  [WWI Invoice ID]       AS INV_ID,
  [Description]          AS DESCR,
  [Package]              AS PACKG,
  [Quantity]             AS QTY,
  [Unit Price]           AS U_PRICE,
  [Tax Rate]             AS TX_RATE,
  [Total Excluding Tax]  AS TOT_EXC_TX,
  [Tax Amount]           AS TX_AMMT,
  [Profit]               AS NET_PROFT,
  [Total Including Tax]  AS TOT_INC_TX,
  [Total Dry Items]      AS TOT_DRY_ITM,
  [Total Chiller Items]  AS TOT_CHL_ITM,
  [Lineage Key]          AS LINEAGE_KEY
FROM [Fact].[Sale]
GO
PRINT N'Creating [BadModel].[VW_FACT_ORDER]...';


GO
CREATE VIEW [BadModel].[VW_FACT_ORDER]
AS 
SELECT
  [Order Key]           AS KEY_ORDER,
  [City Key]            AS SKEY_CITY,
  [Customer Key]        AS SKEY_CUST,
  [Stock Item Key]      AS SKEY_STK_ITEM,
  [Order Date Key]      AS SKEY_DT_ORDER,
  [Picked Date Key]     AS SKEY_DT_PICKED,
  [Salesperson Key]     AS SKEY_EMP_SLS_PER,
  [Picker Key]          AS SKEY_EMP_PICKER,
  [WWI Order ID]        AS ORD_ID,
  [WWI Backorder ID]    AS BO_ID,
  [Description]         AS DESCR,
  [Package]             AS PCKG,
  [Quantity]            AS QTY,
  [Unit Price]          AS U_PRICE,
  [Tax Rate]            AS TX_RATE,
  [Total Excluding Tax] AS TOT_EXC_TX,
  [Tax Amount]          AS TX_AMMT,
  [Total Including Tax] AS TOT_INC_TX,
  [Lineage Key]         AS LINEAGE_KEY
FROM [Fact].[Order]
GO
PRINT N'Creating [BadModel].[VW_FACT_MOVEMENT]...';


GO
CREATE VIEW [BadModel].[VW_FACT_MOVEMENT]
AS
SELECT
  [Movement Key]                  AS KEY_MVMT,
  [Date Key]                      AS SKEY_DT,
  [Stock Item Key]                AS SKEY_STK_ITEM,
  [Customer Key]                  AS SKEY_CUST,
  [Supplier Key]                  AS SKEY_SUP,
  [Transaction Type Key]          AS SKEY_TRANS_TYP,
  [WWI Stock Item Transaction ID] AS STK_ITEM_TRANS_ID,
  [WWI Invoice ID]                AS INVOICE_ID,
  [WWI Purchase Order ID]         AS PO_ID,
  [Quantity]                      AS QTY,
  [Lineage Key]                   AS SKEY_LINEAGE
FROM Fact.Movement
GO
PRINT N'Creating [BadModel].[VW_FACT_PURCH]...';


GO
CREATE VIEW [BadModel].[VW_FACT_PURCH]
AS
SELECT
  [Purchase Key]          AS KEY_PUR,
  [Date Key]              AS SKEY_DT,
  [Supplier Key]          AS SKEY_SUP,
  [Stock Item Key]        AS SKEY_STK_ITEM,
  [WWI Purchase Order ID] AS PO_ID,
  [Ordered Outers]        AS NUM_OUTR_ORD,
  [Ordered Quantity]      AS QTY_ORD,
  [Received Outers]       AS NUM_OUTR_RCVD,
  [Package]               AS PACKAGE,
  [Is Order Finalized]    AS ORD_FIN_TF,
  [Lineage Key]           AS SKEY_LINEAGE
FROM fact.purchase
GO
PRINT N'Creating [BadModel].[VW_DIM_STK_ITM]...';


GO
CREATE VIEW [BadModel].[VW_DIM_STK_ITM]
AS
SELECT
  [Stock Item Key]           AS SKEY_STK_ITM,
  [WWI Stock Item ID]        AS STK_ITM_ID,
  [Stock Item]               AS STK_ITM_NM,
  [Color]                    AS COLOR,
  [Selling Package]          AS SELLING_PKG,
  [Buying Package]           AS BUYING_PKG,
  [Brand]                    AS BRAND,
  [Size]                     AS SIZE,
  [Lead Time Days]           AS LEAD_TM,
  [Quantity Per Outer]       AS QTY_PER_OUTER,
  [Is Chiller Stock]         AS CHILL_TF,
  [Barcode]                  AS BARCODE,
  [Tax Rate]                 AS TX_RT,
  [Unit Price]               AS U_PRICE,
  [Recommended Retail Price] AS REC_RETAIL,
  [Typical Weight Per Unit]  AS TYP_WT_PR_UNT,
  [Photo]                    AS PHOTO,
  [Valid From]               AS DT_FRM,
  [Valid To]                 AS DT_TO,
  [Lineage Key]              AS LINEAGE_KEY
FROM [Dimension].[Stock Item]
GO
PRINT N'Creating [BadModel].[VW_DIM_SUP]...';
GO
CREATE VIEW [BadModel].[VW_DIM_SUP]
AS
SELECT [Supplier Key] AS SKEY_SUP
      ,[WWI Supplier ID] AS SUP_ID
      ,[Supplier] AS SUP_NM
      ,[Category] AS CATEGORY
      ,[Primary Contact] AS MAIN_CONTACT
      ,[Supplier Reference] AS SUP_REF_CD
      ,[Payment Days] AS PMT_DAYS
      ,[Postal Code] AS ZIP_POSTAL
      ,[Valid From] AS DT_FRM
      ,[Valid To] AS DT_TO
      ,[Lineage Key] AS LINEAGE_KEY
  FROM [Dimension].[Supplier]

GO
PRINT N'Creating [BadModel].[VW_DIM_PMT_METHOD]...';


GO
CREATE VIEW [BadModel].[VW_DIM_PMT_METHOD]
AS 
SELECT
  [Payment Method Key]    AS SKEY_PMT_METH,
  [WWI Payment Method ID] AS PMT_METH_ID,
  [Payment Method]        AS PMT_METH_NM,
  [Valid From]            AS DT_FRM,
  [Valid To]              AS DT_TO,
  [Lineage Key]           AS LINEAGE_KEY
FROM [Dimension].[Payment Method]


PRINT N'Creating [BadModel].[VW_DIM_TRANS_TYP]...';
GO

CREATE VIEW [BadModel].[VW_DIM_TRANS_TYP]
AS
SELECT
  [Transaction Type Key]    AS SKEY_TRANS_TYP,
  [WWI Transaction Type ID] AS TRANS_TYP_ID,
  [Transaction Type]        AS TRANS_TYP_NM,
  [Valid From]              AS DT_FRM,
  [Valid To]                AS DT_TO,
  [Lineage Key]             AS LINEAGE_KEY
FROM [Dimension].[Transaction Type]




GO
PRINT N'Update complete.';

