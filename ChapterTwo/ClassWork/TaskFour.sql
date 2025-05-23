use cape_codd;
select INVENTORY.SKU,
		INVENTORY.SKU_Description,
        INVENTORY.WarehouseID,
        WAREHOUSE.WarehouseCity,
        WAREHOUSE.WarehouseState
from INVENTORY
join WAREHOUSE on INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
where WAREHOUSE.WarehouseCity not in ("Atlanta", "Bangor", "Chicago")
