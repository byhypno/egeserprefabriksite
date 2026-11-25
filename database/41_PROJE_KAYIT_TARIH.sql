-- EGESER PREFABRIK - PROJE KAYITLARI DOSYA ADLARINA GORE + SITEMAP TARIHLERI - 20261125
-- 1) Referans modulu (code=egeser_references): dosya adi ile cakisan 3 proje kaydi dosya adina gore duzeltilir.
--    armutlu-50: konum Oren -> Armutlu | armutlu-60: Prefabrik Ofis -> Prefabrik Ev | urla-icmeler-60: 74 m2 -> 60 m2
-- 2) Bugun icerigi/aciklamasi degisen 28 urun ve 2 kategorinin date_modified tarihi guncellenir (sitemap lastmod).
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur. Geri almak icin: 42_PROJE_KAYIT_TARIH_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_module_backup_ref_20261125 AS SELECT * FROM oc_module WHERE code = 'egeser_references';

UPDATE oc_module SET setting = REPLACE(REPLACE(REPLACE(setting, 'izmir-kemalpasa-armutlu-50-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K EV","title":"50 m\\u00b2 Prefabrik Ev","description":"","location":"\\u0130zmir-Kemalpa\\u015fa-\\u00d6ren"', 'izmir-kemalpasa-armutlu-50-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K EV","title":"50 m\\u00b2 Prefabrik Ev","description":"","location":"\\u0130zmir-Kemalpa\\u015fa-Armutlu"'), 'izmir-kemalpasa-armutlu-60-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K OF\\u0130S","title":"60 m\\u00b2 Prefabrik Ofis"', 'izmir-kemalpasa-armutlu-60-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K EV","title":"60 m\\u00b2 Prefabrik Ev"'), 'izmir-urla-icmeler-60-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K EV","title":"74 m\\u00b2 Prefabrik Ev","description":"","location":"\\u0130zmir-Urla-\\u0130\\u00e7meler","size":"74 m\\u00b2"', 'izmir-urla-icmeler-60-m2-prefabrik-ev.jpg","eyebrow":"B\\u0130REYSEL","type":"PREFABR\\u0130K EV","title":"60 m\\u00b2 Prefabrik Ev","description":"","location":"\\u0130zmir-Urla-\\u0130\\u00e7meler","size":"60 m\\u00b2"') WHERE code = 'egeser_references';

UPDATE oc_product SET date_modified = NOW() WHERE product_id IN (132,134,144,146,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,176,177,178,179,180,181,182,183,184);
UPDATE oc_category SET date_modified = NOW() WHERE category_id IN (60, 62);

-- KONTROL: duzeltilen_kayit = 1, guncel_urun = 28
SELECT (SELECT COUNT(*) FROM oc_module WHERE code = 'egeser_references' AND setting NOT LIKE '%Kemalpa\\\\u015fa-\\\\u00d6ren%' AND setting NOT LIKE '%Prefabrik Ofis","description":"","location":"\\\\u0130zmir-Kemalpa\\\\u015fa-Armutlu%') AS duzeltilen_kayit,
       (SELECT COUNT(*) FROM oc_product WHERE product_id IN (132,134,144,146,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,176,177,178,179,180,181,182,183,184) AND DATE(date_modified) = CURDATE()) AS guncel_urun;
