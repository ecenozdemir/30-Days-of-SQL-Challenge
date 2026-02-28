CREATE DATABASE SQL_Journey;
GO
USE SQL_Journey;

CREATE TABLE Fabric_Inventory (
   Fabric_ID INT PRIMARY KEY,  -- Her ürünün benzersiz kimlik numarası
   Product_Code VARCHAR(20),   -- Ürün kodu (metin)
   Material_Type VARCHAR(50),  -- Kumaş türü
   Color_Code VARCHAR(20),     -- Renk
   Stock_Meters DECIMAL(10, 2) -- Stok miktarı (ondalıklı sayı)
   );

SELECT * FROM Fabric_Inventory;

INSERT INTO Fabric_Inventory (Fabric_ID, Product_Code, Material_Type, Color_Code, Stock_Meters)
VALUES
(1, 'COT-101', 'Cotton', 'Navy Blue', 1250.00),
(2, 'SILK-202', 'Silk', 'Emerald Green', 450.75),
(3, 'LIN-303', 'Linen', 'Sand Beige', 890.20),
(4, 'POLY-404', 'Polyester', 'Jet Black', 2100.00);

SELECT
    Product_Code AS [Product Reference],
	Stock_Meters AS [Current Inventory]
FROM Fabric_Inventory;
