SELECT WarehouseID, AVG(QuantityOnHand) AS Avg_QuantityOnHand
FROM INVENTORY
WHERE WarehouseID IN (
    SELECT WarehouseID
    FROM warehouse
    WHERE Manager = 'Lucille Smith'
)
GROUP BY WarehouseID;
