SELECT inventory.WarehouseID, AVG(inventory.QuantityOnHand) AS Avg_QuantityOnHand
FROM inventory
JOIN warehouse ON inventory.WarehouseID = warehouse.WarehouseID
WHERE warehouse.Manager = 'Lucille Smith'
GROUP BY inventory.WarehouseID;
