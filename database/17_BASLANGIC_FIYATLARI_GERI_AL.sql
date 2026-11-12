-- EGESER PREFABRIK - BASLANGIC FIYATLARINI GERI AL - 20261112
-- 16_BASLANGIC_FIYATLARI.sql oncesindeki fiyatlari yedekten geri yukler ve yedek tabloyu siler.
SET NAMES utf8mb4;

UPDATE oc_product p JOIN oc_product_price_backup_20261112 b ON b.product_id = p.product_id SET p.price = b.price, p.tax_class_id = b.tax_class_id, p.date_modified = NOW();

-- KONTROL: fiyatli_urun = 0 olmali
SELECT COUNT(*) AS fiyatli_urun FROM oc_product WHERE product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158) AND price > 0;

DROP TABLE oc_product_price_backup_20261112;
