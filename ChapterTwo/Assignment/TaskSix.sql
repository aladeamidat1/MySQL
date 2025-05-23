use cape_codd;
select SKU, SKU_Description, WarehouseID
from INVENTORY
where WarehouseID = (
		select WarehouseID
        from warehouses
        where Manager = 'Lucille Smith'
);        