-- EGESER PREFABRIK - ESKI ADRES YONLENDIRMELERI (Search Console 404 / yonlendirme raporlari) - 20261111
-- 1) Hedefi artik yayinda olan 22 pasif yonlendirmeyi aktif eder.
-- 2) 6 yonlendirmenin hedefini mevcut sayfalara cevirip aktif eder (45/46: Hakkimizda ve Kurumsal'in eski adresleri 404 veriyordu).
-- 3) 7 yeni eski-adres yonlendirmesi ekler.
-- Once etkilenen kayitlarin yedegini alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 15_ESKI_ADRES_YONLENDIRMELERI_GERI_AL.sql
SET NAMES utf8mb4;

CREATE TABLE oc_egeser_redirect_backup_20261111 AS SELECT * FROM oc_egeser_redirect WHERE redirect_id IN (12,43,44,45,46,51,52,53,54,55,56,57,58,59,60,61,62,63,65,66,67,68,69,71,72,73,74,75);

UPDATE oc_egeser_redirect SET status = 1, date_modified = NOW(), note = CONCAT('[2026-11 aktif edildi] ', note) WHERE status = 0 AND redirect_id IN (51,52,53,54,55,56,57,58,59,60,61,62,63,66,67,68,69,71,72,73,74,75);
UPDATE oc_egeser_redirect SET target_url = '/80-m2-tek-katli-prefabrik-ev', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /80-m2-tek-katli-prefabrik-ev] ', note) WHERE redirect_id = 65;
UPDATE oc_egeser_redirect SET target_url = '/projelerimiz', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /projelerimiz] ', note) WHERE redirect_id = 12;
UPDATE oc_egeser_redirect SET target_url = '/gizlilik-politikasi', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /gizlilik-politikasi] ', note) WHERE redirect_id = 43;
UPDATE oc_egeser_redirect SET target_url = '/sss', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /sss] ', note) WHERE redirect_id = 44;
UPDATE oc_egeser_redirect SET target_url = '/hakkimizda', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /hakkimizda] ', note) WHERE redirect_id = 45;
UPDATE oc_egeser_redirect SET target_url = '/kurumsal', status = 1, date_modified = NOW(), note = CONCAT('[2026-11 hedef: /kurumsal] ', note) WHERE redirect_id = 46;

INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/201-m2-2-katli-prefabrik-ofis', '51728f808d7be6e08f83223dfa54ebbc3269058d', '/prefabrik-ofis-ve-yonetim-binalari', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Pasif urun (201 m2 ofis)', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/videolar', '913a6ec2f192d09a46629f69e0d98b6d3a668d92', '/projelerimiz', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Eski sayfa', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/96-m2-tek-katli-prefabrik-ev', '8face62fc3ed93709f9dd0b7f1e175831c6b33ac', '/tek-katli-prefabrik-evler', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Pasif urun (96 m2 ev)', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/iade-ve-degisim', 'daa4398d95448d4becfaf8ed9ace25fe36aaad0a', '/sss', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Eski sayfa', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/index.php?information_id=3&route=information/information', 'b8dbdb8fac75e9b715c2ecb51fcb3969d01f9f6a', '/gizlilik-politikasi', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Eski Privacy Policy', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/prefabrik-yapilar/tek-katli-prefabrik-evler?product_id=93', '482447b0890a0511e47d7356c977c86e72a4c969', '/109-m2-tek-katli-prefabrik-ev', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Eski urun adresi (id 93)', 0, NOW(), NOW());
INSERT IGNORE INTO oc_egeser_redirect (source_url, source_hash, target_url, status, block_disabled, priority, source, note, hits, date_added, date_modified) VALUES ('/egeser-konteyner-prefabrik/109-m-tek-katli-prefabrik-ev', '8046d6792d47af2b6c8c4c1432184a0ed01dcf64', '/109-m2-tek-katli-prefabrik-ev', 1, 1, 'NORMAL', 'Denetim 2026-11', 'Eski site yolu', 0, NOW(), NOW());

-- KONTROL: aktif_edilen = 28, yeni_eklenen = 7, kalan_pasif = 0
SELECT
  (SELECT COUNT(*) FROM oc_egeser_redirect WHERE redirect_id IN (12,43,44,45,46,51,52,53,54,55,56,57,58,59,60,61,62,63,65,66,67,68,69,71,72,73,74,75) AND status = 1) AS aktif_edilen,
  (SELECT COUNT(*) FROM oc_egeser_redirect WHERE source = 'Denetim 2026-11') AS yeni_eklenen,
  (SELECT COUNT(*) FROM oc_egeser_redirect WHERE status = 0) AS kalan_pasif;
