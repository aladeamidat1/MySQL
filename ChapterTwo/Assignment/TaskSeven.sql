use cape_codd;
SELECT inventory.SKU, inventory.SKU_Description, inventory.WarehouseID
FROM inventory, warehouses
WHERE inventory.WarehouseID = warehouses.WarehouseID
  AND warehouses.Manager = 'Lucille Smith';
