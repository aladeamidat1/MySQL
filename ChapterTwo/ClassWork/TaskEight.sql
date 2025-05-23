SELECT inventory.SKU, inventory.SKU_Description, inventory.WarehouseID
FROM inventory
JOIN warehouse ON inventory.WarehouseID = warehouse.WarehouseID
WHERE warehouse.Manager = 'Lucille Smith';
