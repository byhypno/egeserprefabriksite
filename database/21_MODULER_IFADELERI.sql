-- EGESER PREFABRIK - "MODULER" IFADELERINI KALDIR - 20261115
-- Kelime siniri kurali: "moduler" konteyner sitesine (egeserkonteyner.com) ait; bu sitede hedeflenmez.
-- 1) Ofis/yemekhane urunlerinin aciklama, etiket ve meta anahtar kelimelerinde "moduler" -> "prefabrik"
-- 2) Teknik Bilgiler sayfasi: "Moduler Uretim Mantigi" -> "Fabrikada Kontrollu Uretim"
-- 3) Blog yazilari (id 1, 5, 12): ifadeler anlami korunarak yeniden yazilir
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 22_MODULER_IFADELERI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_product_description_backup_20261115 AS SELECT * FROM oc_product_description WHERE description LIKE '%odüler%' OR tag LIKE '%odüler%' OR meta_keyword LIKE '%odüler%';
CREATE TABLE oc_information_description_backup_20261115 AS SELECT * FROM oc_information_description WHERE description LIKE '%odüler%';
CREATE TABLE oc_egeser_blog_post_backup_20261115 AS SELECT * FROM oc_egeser_blog_post WHERE description LIKE '%odüler%';

-- 1) Urunler
UPDATE oc_product_description SET
  description  = REPLACE(REPLACE(REPLACE(REPLACE(description,  'Modüler ', 'Prefabrik '), 'modüler ', 'prefabrik '), 'prefabrik prefabrik', 'prefabrik'), 'Prefabrik prefabrik', 'Prefabrik'),
  tag          = REPLACE(REPLACE(REPLACE(REPLACE(tag,          'Modüler ', 'Prefabrik '), 'modüler ', 'prefabrik '), 'prefabrik prefabrik', 'prefabrik'), 'Prefabrik prefabrik', 'Prefabrik'),
  meta_keyword = REPLACE(REPLACE(REPLACE(REPLACE(meta_keyword, 'Modüler ', 'Prefabrik '), 'modüler ', 'prefabrik '), 'prefabrik prefabrik', 'prefabrik'), 'Prefabrik prefabrik', 'Prefabrik')
WHERE description LIKE '%odüler%' OR tag LIKE '%odüler%' OR meta_keyword LIKE '%odüler%';

-- 2) Teknik Bilgiler
UPDATE oc_information_description SET description = REPLACE(description, 'Modüler Üretim Mantığı', 'Fabrikada Kontrollü Üretim') WHERE description LIKE '%Modüler Üretim Mantığı%';

-- 3) Blog yazilari
UPDATE oc_egeser_blog_post SET description =
  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(description,
    'İhtiyaca göre modüler büyütülebilir', 'İhtiyaca göre büyütülebilir'),
    'Modüler plan ve büyütme imkânı', 'Esnek plan ve büyütme imkânı'),
    'daha hafif ve modüler bir taşıyıcı sistem', 'daha hafif ve fabrikada üretilen bir taşıyıcı sistem'),
    'modüler üretime dayandığı', 'fabrika üretimine dayandığı'),
    'Modüler duvar ve çatı çözümleri', 'Panel duvar ve çatı çözümleri'),
    'modüler çelik karkas', 'çelik karkas'),
    'Standart ve modüler tasarımlarda', 'Standart tasarımlarda'),
    'daha hafif ve modüler bir sistemle', 'daha hafif ve fabrikada üretilen bir sistemle')
WHERE blog_id IN (1, 5, 12);

-- KONTROL: kalan = 0 olmali (urun, bilgi sayfasi ve blog toplami)
SELECT
  (SELECT COUNT(*) FROM oc_product_description WHERE description LIKE '%odüler%' OR tag LIKE '%odüler%' OR meta_keyword LIKE '%odüler%')
+ (SELECT COUNT(*) FROM oc_information_description WHERE description LIKE '%odüler%')
+ (SELECT COUNT(*) FROM oc_egeser_blog_post WHERE description LIKE '%odüler%') AS kalan;
