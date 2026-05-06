use master;
create database Datawarehouse;
use DataWarehouse;
create schema bronze;
go
create schema silver;
go
create schema gold;
go;
create Table bronze.crm_cust_info (

cst_id int,cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date  date
);
go 
create Table bronze.crm_prd_info (
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost nvarchar(50),
prd_line nvarchar(50),
prd_start_dt DATE,
prd_end_dt date
);
create Table bronze.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id nvarchar(50),
sls_order_dt nvarchar(50),
sls_ship_dt nvarchar(50),
sls_due_dt DATE,
sls_sales nvarchar(50),
sls_quantity nvarchar(50),
sls_price nvarchar(50))

go; 
CREATE TABLE bronze.erp_CUST_AZ12 (
CID nvarchar(50),
BDATE date,
GEN nvarchar(50)
);
go; 
CREATE TABLE bronze.erp_LOC_A101 (
CID nvarchar(50),
CNTRY nvarchar(50));
go; 
CREATE TABLE bronze.erp_PX_CAT_G1V2 (
ID nvarchar(50),
CAT nvarchar(50),
SUBCAT nvarchar(50),
MAINTENANCE nvarchar(50));

--------------------

truncate table bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
)
truncate table bronzecrm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
)
truncate table bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
)
truncate table bronze.erp_CUST_AZ12;

BULK INSERT bronze.erp_CUST_AZ12
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_erp\CUST_AZ12.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
)
truncate table bronze.erp_LOC_A101;

BULK INSERT bronze.erp_LOC_A101
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_erp\LOC_A101.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
)
truncate table bronze.erp_PX_CAT_G1V2;
BULK INSERT bronze.erp_PX_CAT_G1V2
FROM 'C:\Users\bnjowera\Desktop\sql-data-warehouse-project-main\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
tablock
) 
