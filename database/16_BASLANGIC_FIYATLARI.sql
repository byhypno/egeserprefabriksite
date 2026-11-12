-- EGESER PREFABRIK - BASLANGIC FIYATLARI (yenilenmis) - 20261112
-- Tek katli: 60 m2 alti x 17.000 TL | 60-79 m2 x 15.000 TL | 80 m2 ve uzeri x 14.000 TL
-- Dubleks (cift katli): m2 x 22.000 TL
-- 26 urunun oc_product.price alanini doldurur. Ofis ve yemekhane urunleri (fiyat 0) PROJE BAZLI kalir.
-- Yedek tablo yoksa olusturur; varsa (onceki surum calistirildiysa) ilk yedegi korur.
-- Tekrar calistirmak zararsizdir (fiyatlar sabit degerle yazilir).
-- Geri almak icin: 17_BASLANGIC_FIYATLARI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE IF NOT EXISTS oc_product_price_backup_20261112 AS SELECT product_id, price, tax_class_id, date_modified FROM oc_product WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);

UPDATE oc_product SET price = 900000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 132; -- 60 m2 tek katli x 15000
UPDATE oc_product SET price = 900000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 134; -- 60 m2 tek katli x 15000
UPDATE oc_product SET price = 1003000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 135; -- 59 m2 tek katli x 17000
UPDATE oc_product SET price = 960000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 136; -- 64 m2 tek katli x 15000
UPDATE oc_product SET price = 1035000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 137; -- 69 m2 tek katli x 15000
UPDATE oc_product SET price = 1110000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 138; -- 74 m2 tek katli x 15000
UPDATE oc_product SET price = 1414000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 139; -- 101 m2 tek katli x 14000
UPDATE oc_product SET price = 1526000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 140; -- 109 m2 tek katli x 14000
UPDATE oc_product SET price = 1470000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 141; -- 105 m2 tek katli x 14000
UPDATE oc_product SET price = 782000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 142; -- 46 m2 tek katli x 17000
UPDATE oc_product SET price = 544000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 143; -- 32 m2 tek katli x 17000
UPDATE oc_product SET price = 680000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 144; -- 40 m2 tek katli x 17000
UPDATE oc_product SET price = 680000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 145; -- 40 m2 tek katli x 17000
UPDATE oc_product SET price = 850000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 146; -- 50 m2 tek katli x 17000
UPDATE oc_product SET price = 884000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 147; -- 52 m2 tek katli x 17000
UPDATE oc_product SET price = 1170000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 148; -- 78 m2 tek katli x 15000
UPDATE oc_product SET price = 1120000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 149; -- 80 m2 tek katli x 14000
UPDATE oc_product SET price = 1722000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 150; -- 123 m2 tek katli x 14000
UPDATE oc_product SET price = 1932000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 151; -- 138 m2 tek katli x 14000
UPDATE oc_product SET price = 1988000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 152; -- 142 m2 tek katli x 14000
UPDATE oc_product SET price = 1760000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 153; -- 80 m2 dubleks x 22000
UPDATE oc_product SET price = 2024000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 154; -- 92 m2 dubleks x 22000
UPDATE oc_product SET price = 2684000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 155; -- 122 m2 dubleks x 22000
UPDATE oc_product SET price = 2882000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 156; -- 131 m2 dubleks x 22000
UPDATE oc_product SET price = 3278000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 157; -- 149 m2 dubleks x 22000
UPDATE oc_product SET price = 3410000.0000, tax_class_id = 0, date_modified = NOW() WHERE product_id = 158; -- 155 m2 dubleks x 22000

-- Bu urunlerde indirim (special/discount) fiyati olmamali; varsa listeler:
SELECT product_id, price FROM oc_product_special WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);
SELECT product_id, price FROM oc_product_discount WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158);

-- KONTROL: fiyatli_urun = 26, en_dusuk = 544000, en_yuksek = 3410000
SELECT COUNT(*) AS fiyatli_urun, MIN(price) AS en_dusuk, MAX(price) AS en_yuksek FROM oc_product WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158) AND price > 0;
