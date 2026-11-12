-- EGESER PREFABRIK - BASLANGIC FIYATLARI - 20261112
-- Tek katli prefabrik ev: m2 x 15.000 TL | Dubleks (cift katli) prefabrik ev: m2 x 20.000 TL
-- 26 urunun oc_product.price alanini doldurur. Ofis ve yemekhane urunleri (fiyat 0) PROJE BAZLI kalir.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 17_BASLANGIC_FIYATLARI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_product_price_backup_20261112 AS SELECT product_id, price, tax_class_id, date_modified FROM oc_product WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);

UPDATE oc_product SET price = 900000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 132; -- 60 m2 tek katli
UPDATE oc_product SET price = 900000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 134; -- 60 m2 tek katli
UPDATE oc_product SET price = 885000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 135; -- 59 m2 tek katli
UPDATE oc_product SET price = 960000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 136; -- 64 m2 tek katli
UPDATE oc_product SET price = 1035000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 137; -- 69 m2 tek katli
UPDATE oc_product SET price = 1110000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 138; -- 74 m2 tek katli
UPDATE oc_product SET price = 1515000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 139; -- 101 m2 tek katli
UPDATE oc_product SET price = 1635000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 140; -- 109 m2 tek katli
UPDATE oc_product SET price = 1575000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 141; -- 105 m2 tek katli
UPDATE oc_product SET price = 690000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 142; -- 46 m2 tek katli
UPDATE oc_product SET price = 480000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 143; -- 32 m2 tek katli
UPDATE oc_product SET price = 600000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 144; -- 40 m2 tek katli
UPDATE oc_product SET price = 600000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 145; -- 40 m2 tek katli
UPDATE oc_product SET price = 750000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 146; -- 50 m2 tek katli
UPDATE oc_product SET price = 780000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 147; -- 52 m2 tek katli
UPDATE oc_product SET price = 1170000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 148; -- 78 m2 tek katli
UPDATE oc_product SET price = 1200000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 149; -- 80 m2 tek katli
UPDATE oc_product SET price = 1845000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 150; -- 123 m2 tek katli
UPDATE oc_product SET price = 2070000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 151; -- 138 m2 tek katli
UPDATE oc_product SET price = 2130000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 152; -- 142 m2 tek katli
UPDATE oc_product SET price = 1600000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 153; -- 80 m2 dubleks
UPDATE oc_product SET price = 1840000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 154; -- 92 m2 dubleks
UPDATE oc_product SET price = 2440000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 155; -- 122 m2 dubleks
UPDATE oc_product SET price = 2620000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 156; -- 131 m2 dubleks
UPDATE oc_product SET price = 2980000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 157; -- 149 m2 dubleks
UPDATE oc_product SET price = 3100000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 158; -- 155 m2 dubleks

-- Bu urunlerde indirim (special/discount) fiyati olmamali; varsa listeler:
SELECT product_id, price FROM oc_product_special WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);
SELECT product_id, price FROM oc_product_discount WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);

-- KONTROL: fiyatli_urun = 26, en_dusuk = 480000, en_yuksek = 3100000
SELECT COUNT(*) AS fiyatli_urun, MIN(price) AS en_dusuk, MAX(price) AS en_yuksek FROM oc_product WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158) AND price > 0;
