-- EGESER PREFABRIK - ARAMA SONUCU BASLIK/ACIKLAMA IYILESTIRME - 20261125
-- Search Console (son 3 ay) verisine gore: gosterimi yuksek, tiklama orani dusuk sayfalar.
-- Yalnizca meta_title ve meta_description degisir. URL, H1, urun adi, fiyat ve icerik DEGISMEZ.
-- Urunler: 132,134,144,146 (60 m² x2, 40 m², 50 m²) | Kategoriler: 60,62 (Tek Katli, Prefabrik Ofis)
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 36_META_CTR_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_product_description_backup_meta_20261125 AS SELECT * FROM oc_product_description WHERE product_id IN (132,134,144,146);
CREATE TABLE oc_category_description_backup_meta_20261125 AS SELECT * FROM oc_category_description WHERE category_id IN (60,62);

UPDATE oc_product_description SET meta_title = '60 m² Tek Katlı Prefabrik Ev Planı 2+1 | Geniş Verandalı', meta_description = '60 m² 2+1 tek katlı prefabrik ev planı: 12,68 m² veranda, 20,08 m² mutfak-salon, 2 yatak odası. Kat planını, fiyatını ve teknik özellikleri görün.' WHERE product_id = 132;
UPDATE oc_product_description SET meta_title = '60 m² Tek Katlı Prefabrik Ev 2+1 | Kat Planı ve Fiyatı', meta_description = '60 m² 2+1 verandalı tek katlı prefabrik ev: kat planı, KDV dahil başlangıç fiyatı ve teknik özellikler. Kemalpaşa''da üretim, İzmir ve Ege''de montaj.' WHERE product_id = 134;
UPDATE oc_product_description SET meta_title = '40 m² 1+1 Prefabrik Ev | Tek Katlı, Verandalı Kat Planı', meta_description = '40 m² 1+1 tek katlı prefabrik ev: 5,20×7,20 m ölçü, 4,60 m² veranda. Kat planını, KDV dahil fiyatını ve teknik özellikleri inceleyin; teklif alın.' WHERE product_id = 144;
UPDATE oc_product_description SET meta_title = '50 m² 1+1 Prefabrik Ev | Tek Katlı, Verandalı Kat Planı', meta_description = '50 m² 1+1 tek katlı prefabrik ev: 7,70×6,45 m ölçü, 4,75 m² veranda, ayrı mutfak ve banyo. Kat planını, KDV dahil fiyatını ve özellikleri görün.' WHERE product_id = 146;
UPDATE oc_category_description SET meta_title = 'Tek Katlı Prefabrik Ev Modelleri ve Fiyatları (2026)', meta_description = '32–142 m² arası 1+1''den 4+1''e tek katlı ve verandalı prefabrik ev modelleri. Kat planları ve KDV dahil başlangıç fiyatları; İzmir ve Ege''de kurulum.' WHERE category_id = 60;
UPDATE oc_category_description SET meta_title = 'Prefabrik Ofis Binaları ve Modelleri | Egeser Prefabrik', meta_description = '30 m²''den 249 m²''ye 16 prefabrik ofis ve yönetim binası modeli. İhtiyacınıza göre projelendirme, Kemalpaşa''da üretim, sevkiyat ve montaj; teklif alın.' WHERE category_id = 62;

-- KONTROL: urun = 4, kategori = 2 (kategori dil kaydi birden fazlaysa daha yuksek olabilir)
SELECT (SELECT COUNT(DISTINCT product_id) FROM oc_product_description WHERE product_id IN (132,134,144,146) AND meta_title LIKE '%Plan%') AS urun,
       (SELECT COUNT(DISTINCT category_id) FROM oc_category_description WHERE category_id IN (60,62) AND meta_title LIKE '%Modelleri%') AS kategori;
