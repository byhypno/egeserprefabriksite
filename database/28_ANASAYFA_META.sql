-- EGESER PREFABRIK - ANA SAYFA BASLIK VE ACIKLAMA - 20261124
-- Hedef arama: "izmir prefabrik ev" (Search Console: ana sayfa bu aramada ort. 10. sira, en cok tiklanan arama).
-- Admin > Sistem > Ayarlar > Magaza > Genel > Meta Basligi / Meta Aciklamasi alanlarini gunceller.
-- Not: aciklamadaki en dusuk fiyat (652.800 TL, KDV dahil) urun fiyatlari degisirse buradan da guncellenmeli.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur. Geri almak icin: 29_ANASAYFA_META_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_setting_backup_meta_20261124 AS SELECT * FROM oc_setting WHERE `key` IN ('config_meta_title', 'config_meta_description') AND store_id = 0;

UPDATE oc_setting SET value = 'İzmir Prefabrik Ev Modelleri ve Fiyatları | Egeser Prefabrik' WHERE `key` = 'config_meta_title' AND store_id = 0;
UPDATE oc_setting SET value = 'İzmir Kemalpaşa''daki tesisimizde üretilen tek katlı ve dubleks prefabrik evler. KDV dahil 652.800 TL''den başlayan fiyatlar, showroom, sevkiyat ve montaj.' WHERE `key` = 'config_meta_description' AND store_id = 0;

-- KONTROL: yeni baslik ve aciklama
SELECT `key`, value FROM oc_setting WHERE `key` IN ('config_meta_title', 'config_meta_description') AND store_id = 0;
