-- EGESER PREFABRIK - KADEME SINIRI FIYAT DUZELTMESI - 20261113
-- Kademe sinirinda kucuk evin buyuk evden pahali gorunmesini duzeltir.
-- Fiyatlar komsu modeller arasinda m2'ye orantili (dogrusal) hesaplanip 1.000 TL'ye yuvarlandi:
--   59 m2 (id 135): 52 m2 = 884.000 ile 60 m2 = 900.000 arasi  -> 898.000 TL (onceki 1.003.000)
--   78 m2 (id 148): 74 m2 = 1.110.000 ile 80 m2 = 1.120.000 arasi -> 1.117.000 TL (onceki 1.170.000)
-- 16_BASLANGIC_FIYATLARI.sql calistirildiktan sonra calistirin. Tekrar calistirmak zararsizdir.
-- Tamamen geri almak (tum fiyatlar 0) icin: 17_BASLANGIC_FIYATLARI_GERI_AL.sql
SET NAMES utf8mb4;

UPDATE oc_product SET price = 898000.0000, date_modified = NOW() WHERE product_id = 135; -- 59 m2 tek katli
UPDATE oc_product SET price = 1117000.0000, date_modified = NOW() WHERE product_id = 148; -- 78 m2 tek katli

-- KONTROL: tek katli fiyatlar m2 arttikca artmali; sira_hatasi = 0 olmali
SELECT COUNT(*) AS sira_hatasi FROM oc_product a JOIN oc_product b
  ON a.product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152)
 AND b.product_id IN (132,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152)
 JOIN oc_product_description da ON da.product_id = a.product_id AND da.language_id = 2
 JOIN oc_product_description db ON db.product_id = b.product_id AND db.language_id = 2
WHERE CAST(da.name AS UNSIGNED) < CAST(db.name AS UNSIGNED) AND a.price > b.price;
