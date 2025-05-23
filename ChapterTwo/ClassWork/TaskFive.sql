use cape_codd;
select concat(SKU_Description, 'is located in', WarehouseCity) as itemlocation
from INVENTORY
join WAREHOUSE on INVENTORY.WarehouseID = WAREHOUSE.WarehouseID