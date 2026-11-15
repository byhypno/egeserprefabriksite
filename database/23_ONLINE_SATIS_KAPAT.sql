-- EGESER PREFABRIK - ONLINE SATIS (SEPET/ODEME) KAPATMA - 20261115
-- Site online satis yapmiyor; teklif, telefon ve showroom ile satis yapiliyor.
-- Kapida odeme (cod), ucretsiz odeme (free_checkout), sabit kargo (flat) ve misafir odeme kapatilir.
-- Sepet/odeme/uyelik adresleri ayrica catalog/controller/startup/router.php ile /iletisim'e yonlendirilir.
-- Once yedek alir; ikinci kez calistirilirsa CREATE TABLE hatasiyla durur.
-- Geri almak icin: 24_ONLINE_SATIS_GERI_AC.sql
SET NAMES utf8mb4;

CREATE TABLE oc_setting_backup_20261115 AS SELECT * FROM oc_setting
WHERE `key` IN ('cod_status', 'free_checkout_status', 'flat_status', 'config_checkout_guest');

UPDATE oc_setting SET value = '0' WHERE `key` IN ('cod_status', 'free_checkout_status', 'flat_status', 'config_checkout_guest');

-- KONTROL: acik_kalan = 0 olmali
SELECT COUNT(*) AS acik_kalan FROM oc_setting WHERE `key` IN ('cod_status', 'free_checkout_status', 'flat_status', 'config_checkout_guest') AND value <> '0';
